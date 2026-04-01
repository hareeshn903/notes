iq
---
What is a Pod in Kubernetes? Create a `pod.yaml` for a single-container pod running Nginx.
What is a Pod vs ReplicaSet vs Deployment?
How does Kubernetes schedule a Pod? Walk me through the control-plane process.
If pods are in Pending state — what are the reasons?
Static Pods and their use cases 
Pod stuck in ContainerCreating. What’s a common cause?
If nodes are in NotReady state — what are possible reasons?
What are liveness and readiness probes? Give a practical example of how incorrect config can lead to downtime.
 What happens when readiness/liveness probes fail? Liveness probe keeps killing the pod. What should you look at first?

What is an OOMKilled error in Kubernetes?,Pod has no memory limit but still gets OOMKilled - why?
-What is Kubernetes resource requests and limits, and how do you set them?

---------------------------------------------------------------
POD Topics 

----------------------------------------------------------------
I have to answer below question in interview, how to answer

what is a pod?

Pods are the smallest deployable units we can create and manage. We actually run our applications inside these pods. A pod is basically a group of one or more containers that share the same storage, network, and configuration for how the containers should run. Usually, we run one container per pod, but in some special cases — like when containers need to work very closely together — we can have multiple containers inside the same pod.

```
what is a pod?
A **Pod** is the **smallest deployable unit in Kubernetes**. It represents one or more containers that run together on the same node,
All containers inside the pod  share the same network **namespace**, and can share storage **volumes**.
This allows them to communicate with each other via `localhost` and share data easily."

The main use case for multiple containers in a single Pod is for supporting sidecar patterns—for example, a container running a web server and a sidecar container that pulls logs or handles a proxy, where they need tight coupling and shared resources."

"Pods are ephemeral and stateless; if a Pod fails, Kubernetes automatically creates a new one to replace it, 
but it does not self-heal. Typically, Pods are managed by higher-level controllers like Deployments or StatefulSets to handle replication, updates, and self-healing."
```


```


apiVersion: v1          # Kubernetes API version for Pods
kind: Pod               # Object type (Pod, Deployment, etc.)
metadata:
  name: nginx-demo      # Mandatory: name of the Pod
  labels:               # Optional: key-value pairs for filtering/organizing
    app: nginx
    environment: production
spec:
  containers:
  - name: nginx-container
    image: nginx:1.22.0
    ports:
    - containerPort: 80   # Documenting which port the container listens on
    volumeMounts:
    - name: nginx-data
      mountPath: /var/www/html
  volumes:
  - name: nginx-data
    emptyDir: {}          # Simple ephemeral volume; more types exist
```


---

### How does Kubernetes schedule a Pod? Walk me through the control-plane process.
![[k8s/POD/Pasted image 20260324220136.png]]
When a Pod is created,
When we submits a pod spec, the request first goes to the kube-apiserver. The API server authenticates and validates the request, and then stores the Pod object in etcd. At this stage, the Pod doesn’t have a `nodeName`, so it’s considered unscheduled and remains in the Pending state.

The kube-scheduler is constantly watching the API server for such unscheduled Pods. As soon as it detects one, it starts the scheduling process. It first looks at all available nodes and filters out the ones that cannot run the Pod. This filtering is based on things like resource availability, node selectors, affinity rules, taints and tolerations, and volume constraints.

Once it has a list of feasible nodes, the scheduler evaluates them by assigning scores. The scoring takes into account factors like how well resources are balanced, how much free capacity a node has, and whether the node matches any preferred affinity rules. After scoring, it selects the most suitable node.

The scheduler then binds the Pod to that node by updating the Pod’s `nodeName` through the API server, which again persists this change in etcd. At this point, the Pod is officially scheduled.

After that, the kubelet on the chosen node takes over. It watches for Pods assigned to its node, pulls the required container images, sets up volumes, and starts the containers using the container runtime. As the containers start running, the kubelet continuously reports the status back to the API server, and the Pod transitions from Pending to Running.

In the background, the kube-controller-manager ensures the overall cluster state is healthy—for example, it monitors node health and can trigger actions like evicting Pods from unhealthy nodes, which indirectly affects scheduling.

---
If pods are in Pending state — what are the reasons?

When a Pod stays in **Pending** state in Kubernetes, it means the Pod has been accepted by the cluster but **cannot yet be scheduled onto a node or started**. This usually happens due to constraints or missing resources rather than runtime failures.

Here are the main reasons, explained naturally:

---

**1. Insufficient cluster resources**  
The scheduler cannot find any node with enough CPU, memory, or other requested resources. For example, if your Pod requests 4 CPUs but no node has that much free, it will remain Pending.

---

**2. Node selector / affinity rules not satisfied**  
If the Pod specifies `nodeSelector`, `nodeAffinity`, or `anti-affinity`, Kubernetes will only place it on matching nodes. If no nodes meet those conditions, scheduling fails.

---

**3. Taints and tolerations mismatch**  
Nodes may have taints that repel Pods. If your Pod doesn’t have the corresponding tolerations, it won’t be scheduled on those nodes.

---

**4. Persistent Volume issues**  
If the Pod uses a PersistentVolumeClaim (PVC) and the volume is:

- not yet provisioned
    
- not bound
    
- or unavailable in the required zone
    

then the Pod stays Pending until storage is ready.

---

**5. Image pull or container config delays (pre-start phase)**  
Although usually this leads to `ContainerCreating`, sometimes early-stage issues like missing image secrets or slow image resolution can keep the Pod in Pending.

---

**6. Scheduler constraints / policies**  
Custom schedulers, Pod priority, or quota restrictions (ResourceQuota / LimitRange) may prevent scheduling.

---

**7. Node not ready or unavailable**  
Even if resources exist, nodes might be:

- NotReady
    
- cordoned (unschedulable)
    
- under maintenance
    

so the scheduler skips them.

---

**8. Network or CNI plugin issues**  
If the cluster networking (CNI) isn’t properly set up, Pods may not proceed beyond Pending because networking setup is part of scheduling readiness.

---

**9. Too many Pods per node limit reached**  
Each node has a maximum Pod capacity. If all nodes hit that limit, new Pods stay Pending.

---

**10. Quotas or limits exceeded**  
Namespace-level constraints (like CPU/memory quotas) can block Pod creation from completing scheduling.

---

### How to quickly debug

Run:

```bash
kubectl describe pod <pod-name>
```

Look at **Events** at the bottom — Kubernetes usually tells you exactly why it’s Pending (e.g., _0/3 nodes available: insufficient CPU_).

---


Pod stuck in ContainerCreating. What’s a common cause?


A common cause for a Pod stuck in **ContainerCreating** is an **image pull issue**—for example, an incorrect image name, tag, missing registry credentials, or a private repository that Kubernetes cannot authenticate to. 
Network issues preventing image download

Other frequent reasons include:  
- **Volume mount failures** 
  Kubernetes is trying to set up storage for the container, but something is failing. Typical problems include:

- PVC not bound to a PV
- Storage class misconfiguration
- NFS / cloud disk not accessible
- Permission issues on the volume
-a hostPath that doesn't exist on the node

- **Node resource constraints** (insufficient CPU/memory, Pod scheduled but waiting for resources)  
- **Network plugin problems** (CNI misconfiguration delaying pod networking setup)  
- **Secrets / ConfigMaps missing** Referenced Secret or ConfigMap doesn’t exist Mount failures delay container start

To diagnose, use `kubectl describe pod <pod-name>` and check the **Events** section for specific error messages.


What is readiness/liveness probes in kubernetes?(

In Kubernetes, readiness and liveness probes are mechanisms used by the kubelet (the node agent) to understand the health and state of a container, but they serve different purposes.

A **liveness probe** is used to determine whether a container is still running properly or has become stuck or unresponsive. If the liveness probe fails repeatedly, Kubernetes assumes the container is “dead” and automatically restarts it. This is useful for situations where your application might enter a bad state (like a deadlock) but doesn’t crash on its own.

A **readiness probe**, on the other hand, is used to determine whether a container is ready to start accepting traffic. Even if a container is running, it might still be initializing (loading data, establishing connections, warming up, etc.). Until the readiness probe succeeds, Kubernetes will not send any traffic to that pod via Services. If the readiness probe later fails, the pod is temporarily removed from load balancing but is not restarted.

In simple terms, liveness answers “Should this container be restarted?” while readiness answers “Is this container ready to serve requests right now?”

```
livenessProbe:
  httpGet:
    path: /health
    port: 8080
  initialDelaySeconds: 10
  periodSeconds: 5

readinessProbe:
  httpGet:
    path: /ready
    port: 8080
  initialDelaySeconds: 5
  periodSeconds: 3
```
---

What happens when readiness/liveness probes fail?

When these probes fail, Kubernetes reacts differently depending on which probe it is.

If a **liveness probe** fails, Kubernetes treats it as a signal that the container is unhealthy and cannot recover on its own. After the configured number of failures (based on `failureThreshold`), the kubelet will **restart the container**. This restart follows the pod’s restart policy (usually `Always`), so the container is killed and started again. The idea is to recover from situations like deadlocks, crashes, or unresponsive applications.

If a **readiness probe** fails, Kubernetes does **not restart the container**. Instead, it simply marks the pod as **“Not Ready.”**Once this happens, the pod is **removed from the Service’s endpoints**, meaning it will **stop receiving traffic**. The container keeps running in the background, and Kubernetes keeps checking the readiness probe. As soon as it starts passing again, the pod is added back to the Service and begins receiving traffic.

So in essence, when liveness fails → container gets restarted; when readiness fails → traffic is stopped, but the container continues running.

---

Give a practical example of how incorrect config can lead to downtime.

A very common real-world failure happens when a **liveness probe is configured too aggressively**, causing Kubernetes to restart healthy containers that are just slow to start.

Imagine you deploy a web application that takes ~40 seconds to fully start because it loads configs, warms caches, and connects to a database. But your liveness probe is configured like this:

- initial delay: 5 seconds
    
- period: 5 seconds
    
- failure threshold: 3
    

What happens is Kubernetes starts checking the container after just 5 seconds. The app is still starting, so the probe fails. It retries a couple more times, and within ~15 seconds Kubernetes decides the container is “dead” and **restarts it**.

Now the container restarts… and again doesn’t get enough time to start… so the probe fails again… and Kubernetes restarts it again.

This creates a **restart loop (CrashLoopBackOff)** even though your app is perfectly fine. Because the pod never becomes healthy, it never reaches a ready state, and **no traffic can be served**. From a user’s perspective, your service is completely down.

```
livenessProbe:
  httpGet:
    path: /health
    port: 8080
  initialDelaySeconds: 5   # ❌ too short
  periodSeconds: 5
```

Another practical case involves a **misconfigured readiness probe**. Suppose your readiness probe checks `/health` but your app actually exposes `/ready`. The probe will always fail. The pod keeps running, but Kubernetes never marks it as ready, so it is **never added to the Service endpoints**. Even though your app is working, it receives **zero traffic**, effectively causing downtime.

```
readinessProbe:
  httpGet:
    path: /ready
    port: 8080
```

A more subtle production issue happens when readiness probes are too strict during temporary slowdowns (like high CPU or DB latency). Pods briefly fail readiness, get removed from load balancing, and if this happens across multiple pods at once, you can end up with **no healthy pods serving traffic**, leading to intermittent outages.

In short, incorrect probe configuration can either:

- keep restarting healthy containers (via liveness), or
    
- prevent healthy pods from ever receiving traffic (via readiness),
    

and both scenarios can bring your service down even when the application itself is not actually broken.


---

Pod has no memory limit but still gets OOMKilled - why?

Even if your Pod doesn’t specify a memory **limit**, it can still be **OOMKilled** because the actual enforcement happens at the **node (Linux kernel) level**, not just at your Pod spec.

Here’s what’s going on in practice:

When a container keeps consuming memory without a limit, it can use as much of the **node’s available memory** as possible. If the node starts running out of memory, the Linux kernel triggers the **Out-Of-Memory (OOM) killer**. This mechanism picks a process to kill in order to free memory—and your container’s process can be that victim.

Kubernetes doesn’t need a memory limit to kill it in this case; the **kernel kills the process**, and Kubernetes just reports it as `OOMKilled`.

Another important detail is **OOM score**. Containers are assigned an OOM score based on things like QoS class:

- Pods with no requests/limits → **BestEffort** (highest chance of being killed)
    
- Pods with requests but no limits → **Burstable**
    
- Pods with equal requests & limits → **Guaranteed** (least likely to be killed)
    

So if your Pod has **no memory limit and no request**, it’s in BestEffort class and is actually the _first candidate_ to be killed under memory pressure.

There are also a couple of other practical reasons you might see this:

- The node itself is under heavy memory pressure from other Pods
    
- A different container in the same Pod consumes too much memory
    
- A memory leak in your application gradually exhausts node memory
    

So the key idea is:  
Even without a limit, your container isn’t “immune”—it just shifts the risk to the node, and when the node runs out of memory, something has to be killed, and your Pod is often the easiest target.