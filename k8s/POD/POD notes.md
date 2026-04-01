
A **Kubernetes object** represents the desired state of your cluster.

## Workloads
These are the main workload objects:
- **Pod** (basic unit)
- **ReplicationController**
- **ReplicaSet**
- **Deployment**
- **DaemonSet**
- **StatefulSet**
- **Job**
- **CronJob**

## Other Kubernetes Objects (Non-Workloads)
Apart from workloads, Kubernetes has many other objects:
- **Service**
- **ConfigMap**
- **Secret**
- **Ingress**
- **NetworkPolicy**
- **PVC (Persistent Volume Claim)**
- **PV (Persistent Volume)**
- **StorageClass**

**Simple definition (must remember):**

> A Pod is a logical layer that groups one or more containers to provide a common network and shared storage.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

key characteristics of a Pod
---

### 1. **Shared Network Namespace**
- Every Pod gets its own **unique IP address** (cluster‑wide).
- All containers inside the Pod share that IP and the same network namespace.
- They can communicate over `localhost` and need to coordinate port usage (no two containers can bind the same port).
- This makes the “sidecar” pattern possible: a main container and a helper container (e.g., log shipper, proxy) that talk via `localhost`.

### 2. **Shared Storage (Volumes)**
- A Pod can define one or more **volumes** that are mounted into all containers within the Pod.
- Containers can share data easily—for example, one container writes files, another reads them.
- Volumes are scoped to the Pod’s lifecycle; when the Pod goes away, certain volume types (like emptyDir) disappear with it.

### 3. **Atomic Scheduling Unit**
- Pods are the smallest unit that Kubernetes schedules onto a node.
- You never schedule a container by itself; you schedule a Pod.
- All containers in a Pod are always co‑located and co‑scheduled on the same node (they cannot be split across nodes).

### 4. **Ephemeral / Disposable Nature**
- Pods are designed to be **non‑permanent**. They can be terminated, recreated, or moved.
- They have no inherent self‑healing—if a Pod dies, Kubernetes (via a controller like a Deployment) may replace it, but the replacement is a *new* Pod with a new IP and new identity.
- This immutability encourages stateless application design.

### 5. **Lifecycle & Status**
- A Pod goes through well‑defined phases: `Pending`, `Running`, `Succeeded`, `Failed`, `Unknown`.
- It has **restart policies** (`Always`, `OnFailure`, `Never`) that dictate how containers behave after exit.
- Probes (`liveness`, `readiness`, `startup`) are configured at the Pod level to control container health and traffic routing.

### 6. **Resource Management (QoS)**
- You specify CPU and memory requests/limits for each container.
- Kubernetes uses those values to determine **Quality of Service** classes (`Guaranteed`, `Burstable`, `BestEffort`), which affect eviction priority under resource pressure.

### 7. **Template for Higher‑Level Controllers**
- Pods are rarely created directly. Instead they are defined as a **template** inside controllers like:
  - **Deployment** – for stateless apps (scaling, rolling updates)
  - **StatefulSet** – for stateful apps (stable identity, ordered deployment)
  - **DaemonSet** – for one Pod per node
  - **Job / CronJob** – for batch processing
- This separation of concerns (Pod definition vs. management logic) is a core Kubernetes principle.

### 8. **Multi‑Container Pods (Advanced)**
- While single‑container Pods are most common, Pods can contain multiple containers that work as a cohesive unit.
- Common patterns:
  - **Sidecar** (adds functionality like logging, monitoring)
  - **Init containers** (run to completion before app containers start)
  - **Adapter** (transform data formats)
- All containers share the same lifecycle, but you can control start order with init containers.


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## declarative vs imperative in Creating Kubernetes Objects

When working with Kubernetes, you can create and manage objects (like Pods, Deployments, Services) in two fundamentally different ways: **imperative** and **declarative**. Understanding the distinction is critical—both for daily operations and for interviews.

---

## Imperative Management

With the imperative approach, you tell Kubernetes *what to do*, step by step, using commands.

- **You specify the operation** (create, update, delete) and often the exact object configuration inline.
- Common commands:  
  ```bash
  kubectl run nginx --image=nginx
  kubectl create deployment myapp --image=myapp:v1
  kubectl expose deployment myapp --port=80
  kubectl edit deployment myapp
  kubectl delete pod mypod
  ```
- **Characteristics**:
  - Fast for one-off tasks, debugging, or testing.
  - No persistent configuration file; the live state is the source of truth.
  - Changes are applied immediately, but they are not easily repeatable or auditable.
  - Prone to “configuration drift” if multiple people manually edit objects.

---

## Declarative Management

With the declarative approach, you tell Kubernetes *what the desired end state should be* by providing configuration files (YAML or JSON). Kubernetes then figures out how to make the live state match that desired state.

- **You define the entire object** in a file and apply it.
- Common command:  
  ```bash
  kubectl apply -f my-deployment.yaml
  ```
- **Characteristics**:
  - Idempotent: running `apply` multiple times produces the same result.
  - Configuration is stored in version control (Git), enabling GitOps, code review, and rollbacks.
  - Kubernetes’ controllers continuously reconcile the live state with the declared state (self‑healing).
  - Merges changes intelligently (e.g., fields not specified remain untouched).

---

## Key Differences

| Aspect                | Imperative                           | Declarative                              |
|-----------------------|--------------------------------------|------------------------------------------|
| **Approach**          | “Do this now” (commands)             | “Make this true” (files)                 |
| **Configuration**     | Inline arguments or interactive      | YAML/JSON files (source of truth)        |
| **Repeatability**     | Low (commands are ephemeral)         | High (files can be reapplied)            |
| **Audit / Versioning**| Hard to track changes                | Easy via Git                              |
| **Self‑healing**      | No (manual repair needed)            | Yes (controllers reconcile desired state) |
| **Use case**          | Ad‑hoc tasks, debugging, learning    | Production, automation, team workflows   |

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

![[k8s/POD/Pasted image 20260324220136.png]]

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

```yaml

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
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-demo
  labels:
    app: nginx
spec:
  containers:
  - name: nginx-container
    image: nginx:1.22.0
    ports:
    - containerPort: 80
      protocol: TCP                # optional, default TCP
    env:                           # environment variables
    - name: DB_USER
      value: "admin"
    resources:                     # resource management
      limits:                      # maximum allowed
        cpu: "500m"                # 500 millicores = 0.5 core
        memory: "500Mi"            # 500 Mebibytes
      requests:                    # guaranteed minimum
        cpu: "200m"
        memory: "200Mi"
    volumeMounts:                  # mount a volume into the container
    - name: nginx-data
      mountPath: /usr/share/nginx/html
  volumes:                         # define the volume
  - name: nginx-data
    emptyDir: {}                   # ephemeral, shares Pod’s lifetime
```


---
#### 2. Environment Variables (`env`)

- **Purpose:** Pass configuration data into the container (e.g., database credentials, feature flags).
- **Verification:**
  ```bash
  kubectl exec -it nginx-demo -- /bin/bash
  env | grep DB_USER
  ```
  Output: `DB_USER=admin`

- The environment variable is visible inside the container and can be used by the application.

---

#### 3. Resource Requests and Limits (`resources`)

| Term      | Meaning                                                               |
|-----------|-----------------------------------------------------------------------|
| **requests** | The amount of CPU/memory guaranteed to the container. The scheduler uses this to place the Pod. |
| **limits**   | The maximum amount the container is allowed to use. Exceeding this can lead to throttling (CPU) or termination (memory). |

- **CPU units:**  
  - `1` = 1 vCPU/Core  
  - `1000m` = 1 core (millicores)  
  - `0.5` = 500m = half a core  

- **Memory units:**  
  - `Mi` = Mebibytes (2²⁰ bytes)  
  - `Gi` = Gibibytes  
  - Alternatively, `M` (megabytes) can be used, but Mi is more precise in Kubernetes.

- **Verification:**  
  Use `kubectl describe node` to see the resource usage of all Pods on that node.
  ```bash
  kubectl describe node <node-name>
  ```
  Look for the section listing Pods with their requests and limits. Example:
  ```
  Namespace    Name           CPU Requests  CPU Limits  Memory Requests  Memory Limits
  default      nginx-demo     200m (10%)    500m (25%)  200Mi (5%)       500Mi (12%)
  ```

- **Why set limits?**  
  Prevents a single container from consuming all node resources and starving other Pods.

---

#### 4. Volumes: `emptyDir`

- **What is `emptyDir`?**  
  An empty directory that is created when the Pod is assigned to a node. It exists as long as the Pod is running. If the Pod is deleted, the data is lost. It’s useful for temporary storage or sharing data between containers.

- **How it works:**  
  - Define a volume with a name under `spec.volumes`.  
  - Mount it into one or more containers using `volumeMounts`.  
  - The `mountPath` inside the container points to the volume.

- **Location on the node:**  
  `emptyDir` volumes are stored under `/var/lib/kubelet/pods/<pod-uid>/volumes/kubernetes.io~empty-dir/`.

- **Example verification:**
  ```bash
  # Get Pod UID
  kubectl get pod nginx-demo -o yaml | grep uid

  # Navigate to volume on the node (as root or with sudo)
  sudo ls -l /var/lib/kubelet/pods/<pod-uid>/volumes/kubernetes.io~empty-dir/nginx-data/
  ```

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++