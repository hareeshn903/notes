#### 1. What is a Pod? (The Core Concept)

- **Simple Definition:** A Pod is a **logical layer** that groups one or more containers together.
- **Purpose of Grouping:** Containers are grouped to provide two main benefits:
    1.  **Common Network:** All containers in a Pod share the same network namespace.
    2.  **Shared Storage:** Containers can share the same storage volumes.

- **Why Learn Pods First?** Pods are the smallest and most basic deployable unit in Kubernetes. When you want to run your application (a workload) on a Kubernetes cluster, you create a Pod. The Pod then runs your container(s). Without understanding Pods, you cannot deploy applications on Kubernetes.

---

#### 2. Key Characteristics of a Pod

**A. Unique IP Address (Ephemeral)**
- Each Pod gets its own unique IP address.
- This IP address is assigned from the Pod network CIDR range that you specified when setting up the cluster (e.g., with `kubeadm init --pod-network-cidr`).
- **Important:** To access an application inside a Pod from *outside* the Pod, you use the **Pod's IP address**, not the container's IP address.
- **Ephemeral Nature:** The Pod's IP address is not permanent.
    - If you delete the Pod, its IP address is also removed.
    - If you recreate the Pod (even with the same application), it will be assigned a *new*, different IP address.
    - This is similar to how a device on a home Wi-Fi gets a new IP from the router's DHCP server each time it reconnects.

**B. Container Communication (Localhost)**
- All containers *inside* the same Pod share the same network namespace.
- Because they share the namespace, they can communicate with each other using `localhost` or `127.0.0.1`.
- This is a key advantage: a container in a Pod can reach another container in the same Pod simply by calling `localhost:port`.

**C. Shared Storage (Volume)**
- Containers within a Pod can share the same storage volumes.
- This allows for data sharing and synchronization between closely coupled containers. For example, one container could write data to a shared volume, and another container could read from it.

---

#### 3. Diagrammatic View & Explanation

- **Pod:** A logical wrapper with its own **Network Namespace**.
- **Inside the Pod:** You can have multiple containers (e.g., Container 1, Container 2).
- **Common Network:**
    - Both containers are placed inside the same Pod Network Namespace.
    - **Communication:** Container 1 ↔ Container 2 using `localhost`.
    - **External Access:** To reach Container 1 or 2 from outside the Pod, you must use the **Pod's IP Address**.
- **Shared Storage:**
    - A shared volume (storage) is attached to the Pod.
    - Any container within the Pod can read from and write to this shared volume, enabling easy data sharing.

---

#### 4. Best Practice: What to Put in a Pod?

- **Recommended:** Group containers that are **dependent** on each other and part of the same application.
    - *Example:* A main application container and a helper container that logs or processes data from the main app.
- **Not Recommended:** Group containers that are for completely different applications.
    - *Example:* An nginx container and a MySQL container should typically be in separate Pods. This promotes better scalability, isolation, and management.

---
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Here are the notes from the second lecture, explaining the two approaches to creating objects in Kubernetes.

---

### Notes: Approaches to Creating Kubernetes Objects

#### 1. Two Main Approaches

Kubernetes provides two ways to create, update, or manage objects (Pods, Deployments, ConfigMaps, etc.):

| Approach | Description | How it Works |
|----------|-------------|--------------|
| **Declarative** | Define the desired state of an object in a configuration file (YAML or JSON). | You give the file to `kubectl`, which sends it to the API server. The cluster ensures the actual state matches the file. |
| **Imperative** | Execute direct CLI commands to create or modify objects. | You use `kubectl` commands with arguments, flags, and inline parameters. No configuration file is used. |

---

#### 2. Declarative Approach (YAML/JSON Files)

- **What it is:** You write a YAML (or JSON) file that describes exactly what you want to create.
- **How it works:** The `kubectl` command (e.g., `kubectl apply -f file.yaml`) sends the file content to the **kube‑api‑server**. The API server performs schema validation, then stores the desired state in **etcd**. The controllers work to make the actual state match.
- **Real‑world usage:** This is the preferred method for production and most day‑to‑day operations (≈99.99% of cases). It is version‑controllable, repeatable, and aligns with GitOps practices.

**Example YAML structure for a Pod:**

```yaml
apiVersion: v1            # Kubernetes API version for the object
kind: Pod                 # Type of object
metadata:                 # Data that identifies the object
  name: my-pod            # Name of the pod
  labels:                 # Key‑value pairs for filtering/organization
    app: my-app
spec:                     # Desired state of the pod
  containers:             # List of containers
  - name: my-container
    image: nginx:latest
    ports:
    - containerPort: 80
    # ... other fields like env, resources, volumeMounts
  volumes:                # Shared storage definitions (optional)
  - name: shared-data
    emptyDir: {}
```

**Key Fields Explained:**
- **apiVersion** – Determines which API group and version to use (e.g., `v1` for core objects like Pods).
- **kind** – The object type (Pod, Deployment, Service, etc.).
- **metadata** – Name, namespace, labels, annotations.
- **spec** – The desired configuration: containers, volumes, restart policy, etc.

---

#### 3. Imperative Approach (Direct CLI Commands)

- **What it is:** You run `kubectl` commands with inline arguments to create or modify objects immediately.
- **How it works:** For example, `kubectl run my-nginx --image=nginx` creates a Pod imperatively.
- **Real‑world usage:** Useful for quick testing, debugging, or temporary objects. Also used for patching existing objects or performing one‑off actions.

**Comparison with Docker:**
- Docker **imperative** → `docker run nginx`
- Docker **declarative** → `docker-compose up` (with a `docker-compose.yml` file)

---

#### 4. Which Approach Should You Use?

- **Declarative (YAML) is the standard** for all production workloads, teams, and CI/CD pipelines. It enables:
  - Version control (Git)
  - Code review
  - Consistency across environments
  - Easy rollback

- **Imperative commands** are handy for:
  - Quick experiments
  - Debugging
  - Small temporary objects
  - Certain patch operations (e.g., `kubectl patch`, `kubectl edit`)

> **Lecturer’s note:** Most of the time (99.99%) you will use the declarative approach. Only in specific conditions do you fall back to imperative commands.

---

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
### Notes: Creating a Pod Using the Declarative Approach (YAML)

#### 1. Prerequisites: Accessing the Cluster

- **Switch to root user** (if needed):
  ```bash
  sudo -i
  ```
  This is temporary; for a regular user you need the kubeconfig file.

- **Copy kubeconfig to a non‑root user**:
  ```bash
  # As root, copy the config file
  mkdir -p /home/testuser/.kube
  cp /root/.kube/config /home/testuser/.kube/config
  chown -R testuser:testuser /home/testuser/.kube
  ```
  Now the user can run `kubectl` commands without `sudo`.

- **Verify cluster status**:
  ```bash
  kubectl get nodes -o wide
  ```
  Example output shows node status, version, IP, OS, kernel, and container runtime (e.g., containerd).

---

#### 2. Creating the YAML File

- **Create a folder for manifests** (e.g., `k-test-manifest`) and inside it a folder `pods`.
- **Create a YAML file** inside `pods`, e.g., `nginx-pod.yaml`.

**File structure and key fields:**

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

---

#### 3. How to Find the Correct `apiVersion` and `kind`

- List all API versions:
  ```bash
  kubectl api-versions
  ```
- Find the resource details for Pods:
  ```bash
  kubectl api-resources | grep -i pod
  ```
  Output shows:
  - **NAME** (pod)
  - **SHORTNAMES** (po)
  - **APIVERSION** (v1)
  - **NAMESPACED** (true)
  - **KIND** (Pod)

Thus for a Pod, you use `apiVersion: v1` and `kind: Pod`.

---

#### 4. Understanding the YAML Sections

| Section | Description |
|---------|-------------|
| **apiVersion** | The Kubernetes API group/version (e.g., `v1` for core resources). |
| **kind** | The object type (must match exactly: `Pod`, `Deployment`, etc.). |
| **metadata** | Data that identifies the object: `name` (required), `labels`, `annotations`, `namespace`. |
| **spec** | The desired state of the object. For a Pod, this includes `containers`, `volumes`, `initContainers`, etc. |
| **containers** | List of containers in the Pod. Each has at least `name` and `image`. |
| **ports** | Not required; only documents what port the container exposes. Does **not** change the container's listening port. |
| **volumeMounts** | Mounts a volume into the container at `mountPath`. The `name` must match a volume defined under `volumes`. |
| **volumes** | Defines storage volumes available to the Pod (e.g., `emptyDir`, `hostPath`, `configMap`). |

---

#### 5. Important Notes

- **`containerPort`** is informational only. The container’s application must actually listen on that port.
- **`volumeMounts`** is plural; a common mistake is writing `volumeMount` (singular), which causes a schema validation error.
- **Labels** are optional but useful for selecting and grouping resources.

---

#### 6. Applying the YAML (Declarative Creation)

- **Using `kubectl create`**:
  ```bash
  kubectl create -f pods/nginx-pod.yaml
  ```
- **Using `kubectl apply`** (more common in production):
  ```bash
  kubectl apply -f pods/nginx-pod.yaml
  ```
  *Difference*: `create` fails if the object already exists; `apply` creates or updates.

- **What happens behind the scenes**:
  1. `kubectl` sends the YAML to the **kube‑api‑server**.
  2. The API server performs **authentication/authorization**.
  3. **Schema validation** checks that fields are correct and known.
  4. If successful, the object is stored in **etcd** and the controllers start to reconcile.

- **If there is a syntax error** (e.g., `volumeMount` instead of `volumeMounts`):
  ```
  error: error validating "pods/nginx-pod.yaml": error validating data: unknown field "volumeMount" ...
  ```
  Fix the YAML and reapply.

---

#### 7. Verifying the Pod

- **List pods**:
  ```bash
  kubectl get pods
  ```
  or with shorthand:
  ```bash
  kubectl get po
  ```
- **More details** (IP address, node, etc.):
  ```bash
  kubectl get pods -o wide
  ```
- **Ready column** shows `1/1` meaning 1 container is ready out of 1 expected. If less (e.g., `0/1`), something is wrong.

- **Test the application**:
  ```bash
  curl <pod-ip>
  ```
  You should see the nginx welcome page.

---

#### 8. Key Concepts Reinforced

- **Pod IP** is assigned from the pod network CIDR and is **ephemeral**.
- The **declarative approach** (YAML) is preferred for repeatability and version control.
- **Schema validation** catches errors before the object is stored, preventing inconsistent states.

---

#### 9. Common Commands Summary

| Task | Command |
|------|---------|
| Check nodes | `kubectl get nodes -o wide` |
| Find API versions | `kubectl api-versions` |
| Find resource info | `kubectl api-resources \| grep pod` |
| Create from YAML | `kubectl create -f <file>` or `kubectl apply -f <file>` |
| List pods | `kubectl get pods` or `kubectl get po` |
| List pods with IPs | `kubectl get pods -o wide` |
| Test pod application | `curl <pod-ip>` |

---

These notes capture the practical steps and concepts covered in the lecture for creating a Pod using the declarative approach.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

### Notes: Imperative Approach and Declarative Preference

#### 1. Cleaning Up a Pod

- **Delete by pod name**:
  ```bash
  kubectl delete pod nginx-demo
  ```
- **Delete using the YAML file** (declarative cleanup):
  ```bash
  kubectl delete -f nginx-pod.yaml
  ```
- **Verify deletion**:
  ```bash
  kubectl get pods
  ```

> **Warning:** `kubectl delete pod --all` deletes **all** pods in the current namespace. Never use this in production. Always delete specific pods by name.

---

#### 2. Creating a Pod Imperatively with `kubectl run`

- **Basic syntax**:
  ```bash
  kubectl run <pod-name> --image=<image> [options]
  ```
- **Common flags**:
  - `-i` : interactive
  - `-t` : allocate a TTY (terminal)
  - `--image=<image>` : container image
  - `--restart=Always|OnFailure|Never` : restart policy (default `Always`)
  - `--command -- <command>` : override the container’s entrypoint/command

- **Example 1 – Simple run (detached)**:
  ```bash
  kubectl run nginx-demo --image=nginx:1.22.0 --restart=Always
  ```
  This creates a pod; the container runs in the background.

- **Example 2 – Interactive shell inside the container**:
  ```bash
  kubectl run -it nginx-demo --image=nginx:1.22.4 --restart=Always -- /bin/bash
  ```
  After logging in, you can manually start the nginx process:
  ```bash
  nginx -g "daemon off;"
  ```
  (This runs nginx in the foreground.)

- **Testing the application**:
  - In another terminal, get the pod IP:
    ```bash
    kubectl get pods -o wide
    ```
  - Use `curl` to access nginx:
    ```bash
    curl <pod-ip>
    ```
  - You should see the nginx welcome page.

---

#### 3. Why Declarative is Preferred

- **Scalability**: Managing tens or hundreds of applications with CLI options is error‑prone and hard to remember.
- **Source of truth**: YAML files can be stored in version control (Git), reviewed, and applied consistently across environments.
- **Orchestration philosophy**: Kubernetes is a declarative system. You define the **desired state** (YAML), and the cluster makes it happen.
- **Imperative is useful** for:
  - Quick tests
  - Debugging
  - Temporary resources

---

#### 4. Recap: Two Approaches at a Glance

| Aspect | Declarative | Imperative |
|--------|-------------|------------|
| **Method** | `kubectl apply -f file.yaml` | `kubectl run ...`, `kubectl create ...` |
| **Configuration** | Stored in YAML/JSON files | Inlined in command arguments |
| **Reproducibility** | Yes (file versioned) | No (unless scripted) |
| **Use Case** | Production, day‑2 operations | Ad‑hoc, testing, exploration |

---

#### 5. Important Notes from the Lecture

- Inside a container, starting an application like nginx requires using its binary directly (`nginx -g "daemon off;"`), not `systemctl` or `service`.
- When you exit the interactive shell (Ctrl‑D), the container **stops** if the main process ends. In the example, nginx was run in the foreground, so exiting the shell would stop it. To keep it running, you can detach with `Ctrl-P Ctrl-Q` (in some setups) or run nginx as the main process without a shell.
- The `--restart=Always` policy means Kubernetes will restart the container if it stops. However, if the pod is deleted, it is gone.

---

#### 6. Cleanup After Imperative Creation

- Delete the pod by name:
  ```bash
  kubectl delete pod nginx-demo
  ```
- Confirm deletion:
  ```bash
  kubectl get pods
  ```

---

These notes conclude the discussion on declarative vs. imperative approaches, providing practical examples and reinforcing the best practice of using YAML manifests for production workloads.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
### Notes: Advanced Pod Configuration – Environment, Resources, and Volumes

In this session, we expand the basic Pod YAML to include **environment variables**, **resource limits**, and a **volume** (emptyDir). We then verify each component.

---

#### 1. Enhanced Pod YAML Structure

We start with the previous nginx Pod and add three new sections under the container:

- `ports` (already present) – informational only.
- `env` – environment variables to pass to the container.
- `resources` – CPU and memory requests/limits.
- `volumeMounts` and `volumes` – shared storage.

**Example YAML snippet:**

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

---

#### 5. Practical Demonstration: Using the Volume

1. **Apply the YAML**:
   ```bash
   kubectl apply -f nginx-pod.yaml
   ```

2. **Check the Pod status**:
   ```bash
   kubectl get pods -o wide
   ```

3. **Test nginx** (initially returns 403 Forbidden if the mount path is empty):
   ```bash
   curl <pod-ip>
   ```

4. **Write content into the volume from the host**:
   - Locate the volume directory on the node (using Pod UID).
   - Create an `index.html` file inside it:
     ```bash
     sudo vi /var/lib/kubelet/pods/<uid>/volumes/.../nginx-data/index.html
     ```
     Add some HTML content, e.g., `<h1>Welcome to Kubernetes volumes</h1>`.

5. **Curl the Pod again**:
   ```bash
   curl <pod-ip>
   ```
   Now the new page is served, proving that the `emptyDir` is mounted at `/usr/share/nginx/html` and changes on the host are visible inside the container.

6. **Alternatively, inside the container**:
   ```bash
   kubectl exec -it nginx-demo -- /bin/bash
   cat /usr/share/nginx/html/index.html
   ```
   The same file is present.

---

#### 6. Key Takeaways

- **Environment variables** are set per container and can be verified with `kubectl exec` and `env`.
- **Resource requests/limits** are crucial for stability; they are enforced by the kubelet and can be inspected with `kubectl describe node`.
- **Volumes** like `emptyDir` provide ephemeral shared storage. They live on the node and are tied to the Pod’s lifecycle.
- **Mount propagation**: Changes made on the node’s volume directory reflect inside the container immediately, and vice versa.

---

#### 7. Cleanup

```bash
kubectl delete pod nginx-demo
```

> **Note:** Deleting the Pod removes the `emptyDir` and all its data. If persistence is needed, other volume types (hostPath, PersistentVolumeClaim) are used.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
### Notes: Multi‑Container Pod with Shared Volume

In this session, we create a **multi‑container Pod** where two containers share the same volume. One container writes data (date every 10 seconds) into a file, and the other container (nginx) serves that file. This demonstrates how containers in a Pod can cooperate using a shared volume.

---

#### 1. Concept: Multi‑Container Pod with Shared Volume

- **Pod** is a logical group of one or more containers that share:
  - **Network namespace** (can talk via `localhost`)
  - **Storage** (shared volume)
- **Use case:** Sidecar pattern – one container produces data, another serves it.
- **Diagram explanation:**
  - The Pod runs on a node.
  - **Container 1 (writer):** runs a script (while loop) that writes to a file every 10 seconds.
  - **Container 2 (reader):** runs nginx, serving files from the same directory.
  - **Shared volume:** an `emptyDir` mounted into both containers at the appropriate paths.
  - External clients access the Pod’s IP (port 80) to see the dynamically updated content.

---

#### 2. YAML Definition for Multi‑Container Pod

Below is the YAML used in the lecture (file `multi-container-pod.yaml`). Key sections:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-demo
  labels:
    app: nginx
    type: web-server
spec:
  containers:
  # Writer container – updates the file
  - name: container-write
    image: alpine
    command: ["/bin/sh"]
    args:
      - -c
      - |
        while true; do
          date > /var/tmp/index.html
          sleep 10
        done
    volumeMounts:
    - name: shared-volume
      mountPath: /var/tmp

  # Reader container – serves the file
  - name: container-read
    image: nginx:1.22.0
    ports:
    - containerPort: 80
    volumeMounts:
    - name: shared-volume
      mountPath: /usr/share/nginx/html

  volumes:
  - name: shared-volume
    emptyDir: {}
```

---

#### 3. Explanation of Each Section

| Section | Details |
|---------|---------|
| **`apiVersion` & `kind`** | Standard – `v1` and `Pod` |
| **`metadata`** | Pod name `nginx-demo` and optional labels |
| **`spec.containers`** | List of two containers |
| **First container (writer)** | - **Image:** `alpine` (lightweight Linux)<br>- **`command` and `args`:** Override the container’s default entrypoint. Here we run a shell (`/bin/sh`) and pass a while‑loop script.<br>- The script: every 10 seconds, writes the output of `date` to `/var/tmp/index.html`.<br>- **`volumeMounts`:** mounts the shared volume at `/var/tmp` (where the file is written). |
| **Second container (reader)** | - **Image:** `nginx:1.22.0`<br>- **`ports`:** documents that nginx listens on port 80 (informational)<br>- **`volumeMounts`:** mounts the **same** shared volume at `/usr/share/nginx/html` – the default document root for nginx. |
| **`spec.volumes`** | Defines the shared volume of type `emptyDir`. This directory is created on the node when the Pod starts and deleted when the Pod is removed. |

---

#### 4. How It Works

1. **Writer container** starts and runs the infinite loop. Every 10 seconds, it writes the current date/time into `/var/tmp/index.html`.
2. **Reader container** (nginx) serves files from `/usr/share/nginx/html`. Because the shared volume is mounted there, nginx serves the `index.html` file created by the writer.
3. When a client sends a request to the Pod’s IP address (port 80), nginx returns the content of `index.html`, which is updated every 10 seconds.

---

#### 5. Practical Steps and Verification

**1. Apply the YAML:**
```bash
kubectl apply -f multi-container-pod.yaml
```

**2. Check Pod status:**
```bash
kubectl get pods -o wide
```
You should see the Pod `nginx-demo` with status `Running` and `READY` showing `2/2` (both containers ready).

**3. Test the application:**
- Get the Pod IP from the previous command.
- Use `curl` to access it:
  ```bash
  curl <pod-ip>
  ```
  The output will be the current date/time (e.g., `Mon Mar 24 12:34:56 UTC 2026`).
- Run `curl` again after 10 seconds – the output will have changed.

**4. Verify containers with `kubectl describe pod`:**
```bash
kubectl describe pod nginx-demo
```
The output shows details for both containers, including the command/args for the writer container and the mounts.

**5. Inspect the shared volume from inside the writer container:**
```bash
kubectl exec -it nginx-demo -c container-write -- cat /var/tmp/index.html
```
You’ll see the same content served by nginx.

---

#### 6. Important Notes

- **`emptyDir`** is ephemeral – data disappears when the Pod is deleted.
- The two containers share the same **network namespace**, so they can communicate via `localhost`, though not used in this example.
- The writer container uses `alpine`; it writes the file as the `root` user, which is fine for this demonstration.
- The `command` and `args` override the container’s default entrypoint. Here we provide a shell script inline.

---

#### 7. Cleanup

```bash
kubectl delete pod nginx-demo
```

---

#### 8. Summary

- Multi‑container Pods allow **tight coupling** of containers that need to share resources.
- **Shared volumes** enable one container to produce data and another to consume it.
- This pattern is commonly used for logging, data processing, and sidecar proxies.

The next session will cover **init containers**, which run to completion before the main containers start.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
### Notes: Shared Volume Persistence – Container Restart vs. Pod Deletion

This session demonstrates a key advantage of using a shared volume (`emptyDir`) inside a Pod: **data survives container restarts** but is lost when the Pod itself is deleted.

---

#### 1. Scenario

- We have a **multi‑container Pod** (`nginx-demo`) with:
  - **Writer container** (alpine) that writes the current date into `/var/tmp/index.html` every 10 seconds.
  - **Reader container** (nginx) that serves that file from `/usr/share/nginx/html`.
  - **Shared volume** (`emptyDir`) mounted into both containers.

- We want to prove that:
  - If a container **restarts** (is recreated), the volume data **remains**.
  - If the **Pod is deleted**, the volume data is **lost**.

---

#### 2. Initial Setup

```bash
# Create the Pod
kubectl create -f multi-container-pod.yaml

# Verify it is running
kubectl get pods -o wide

# Confirm both containers are ready (2/2)
kubectl get pod nginx-demo
```

- The shared volume is populated by the writer container. Accessing the Pod IP shows the current date, updated every 10 seconds.

---

#### 3. Restart a Container (Using Container Runtime CLI)

**Goal:** Restart the writer container without deleting the Pod.

- **Identify the container ID** using `crictl` (since the runtime is containerd):

```bash
# List containers
sudo crictl ps
```

Find the writer container (image: alpine). Copy its ID.

- **Stop and remove the container** (this simulates a container crash or manual restart):

```bash
sudo crictl stop <container-id>
sudo crictl rm <container-id>
```

- **Observe**: The kubelet detects that the container is missing and recreates it. The Pod remains; the shared volume is untouched.

- **Check restart count**:

```bash
kubectl describe pod nginx-demo
```

Look for the `Containers` section. The writer container’s `Restart Count` will have increased (e.g., from 0 to 1).

- **Test the application**:

```bash
curl <pod-ip>
```

The output still shows the current date, proving the file inside the shared volume was **not lost** during the container restart.

---

#### 4. Delete the Pod

- **Delete the Pod**:

```bash
kubectl delete pod nginx-demo
```

- **Verify the volume is gone**:

Previously, we located the volume on the node using the Pod’s UID:

```bash
# Get Pod UID (before deletion)
kubectl get pod nginx-demo -o yaml | grep uid

# On the node, list the volume directory (example)
sudo ls -l /var/lib/kubelet/pods/<pod-uid>/volumes/kubernetes.io~empty-dir/
```

After Pod deletion, the entire Pod directory (including the volume) is removed. Running the same `ls` command yields:

```
ls: cannot access ... : No such file or directory
```

This confirms that the volume is **ephemeral** and exists only as long as the Pod exists.

---

#### 5. Key Takeaways

| Action | Effect on Volume Data |
|--------|----------------------|
| **Container restart** (container stopped/recreated) | **Data persists**. The volume is managed by the Pod and is independent of individual container lifecycles. |
| **Pod deletion** | **Data is lost**. The `emptyDir` volume is removed along with the Pod. |

- **Why this matters:**  
  - Containers can fail or be restarted without affecting data that is stored in shared volumes.  
  - However, for persistent data beyond Pod lifetime, you need other volume types (e.g., `hostPath`, PersistentVolumeClaim).  

- **Commands used in the demo:**
  - `sudo crictl ps` – list containers (containerd runtime)
  - `sudo crictl stop <id>` – stop a container
  - `sudo crictl rm <id>` – remove a stopped container
  - `kubectl describe pod` – view restart counts
  - `kubectl delete pod` – delete the Pod

---

#### 6. Conclusion

The shared volume within a Pod provides a **data‑sharing mechanism** that survives container restarts, enabling sidecar‑like patterns where one container produces data and another serves it. However, the volume is tied to the Pod’s lifecycle; deleting the Pod removes the volume. For production workloads requiring data persistence beyond Pod life, use persistent storage solutions (covered later).
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
### Notes: Exposing a Pod Outside the Cluster with `hostPort`

#### 1. Problem: Accessing a Pod from Outside Kubernetes

- Inside the cluster, you can access a pod using its **Pod IP address** (e.g., `curl <pod-ip>`).
- But external users (outside the cluster) cannot directly reach a Pod IP because it is internal to the cluster network.
- A simple method to expose a pod externally is **`hostPort`** – similar to Docker port mapping.

---

#### 2. Solution: `hostPort` in the Pod Specification

- `hostPort` binds a port **on the node** (where the pod runs) to the container’s port.
- Traffic arriving at `<node-ip>:<hostPort>` is forwarded to `<pod-ip>:<containerPort>`.
- The forwarding is handled by **kube-proxy** (or the underlying container runtime).

---

#### 3. YAML Configuration for `hostPort`

In the container’s `ports` section, you can add `hostPort` and optionally `hostIP` and a `name`.

**Example snippet (from the multi‑container pod, modified for `hostPort`):**

```yaml
containers:
- name: container-read
  image: nginx:1.22.0
  ports:
  - containerPort: 80           # Port inside container
    hostPort: 8090              # Port on the node to bind
    name: http                  # Optional name for this port
    protocol: TCP               # Optional, default TCP
  # ... other container config
```

- **`containerPort`** (mandatory) – the port the application listens on inside the container.
- **`hostPort`** (optional) – the port to expose on the node. If omitted, no external mapping.
- **`hostIP`** (optional) – specific IP address on the node to bind (e.g., `127.0.0.1`). If omitted, binds to all interfaces (`0.0.0.0`).
- **`name`** – a human-readable name for the port.
- **`protocol`** – `TCP`, `UDP`, or `SCTP` (default `TCP`, case‑sensitive).

---

#### 4. Practical Steps to Expose a Pod with `hostPort`

1. **Edit the Pod YAML** – add `hostPort` under the container’s ports.
2. **Apply the configuration**:
   ```bash
   kubectl apply -f multi-container-pod.yaml
   ```
   (If the pod already exists, you may need to delete and recreate it.)
3. **Verify pod is running**:
   ```bash
   kubectl get pods -o wide
   ```
4. **Determine the node IP** – if it’s a single‑node cluster, the node IP is the same as the machine’s IP. For multi‑node, check which node the pod is running on:
   ```bash
   kubectl get pods -o wide   # look at the NODE column
   ```
5. **Access from outside** – using the node’s IP and the `hostPort`:
   ```bash
   curl http://<node-ip>:8090
   ```
   Or open a browser: `http://192.168.0.150:8090`

---

#### 5. Demonstration Recap

- The lecturer used the multi‑container pod example (writer + nginx).
- Added `hostPort: 8090` under the nginx container.
- After creating the pod, they accessed the application from the browser using the node IP (192.168.0.150) and port 8090.
- The application (date from writer container) was successfully served.

---

#### 6. Limitations of `hostPort`

| Issue | Explanation |
|-------|-------------|
| **Port conflicts** | Only one pod on the same node can use a given `hostPort`. If another pod tries to use the same `hostPort`, it will fail because the port is already bound. |
| **Pod location changes** | If the pod is recreated, it may land on a **different node**. The client would need to know the new node’s IP. This makes `hostPort` unsuitable for stable external access. |
| **Not scalable** | For multiple replicas, you cannot expose them all on the same `hostPort` on a single node; you would need a load balancer or a different approach. |
| **Node IP must be known** | Clients need the exact IP address of the node where the pod is scheduled. |

- **Conclusion:** `hostPort` is **only suitable for temporary testing or debugging**, not for production workloads. For production, use **Services** (e.g., `NodePort`, `LoadBalancer`, or Ingress) which provide stable endpoints and load balancing.

---

#### 7. Verification Commands Used

```bash
# Check running pods
kubectl get pods -o wide

# Delete an existing pod (if needed)
kubectl delete pod nginx-demo

# Create from YAML
kubectl create -f multi-container-pod.yaml

# Test internal access (inside cluster)
curl <pod-ip>

# Test external access (node IP + hostPort)
curl http://<node-ip>:8090
```

---

#### 8. Summary

- `hostPort` provides a quick way to expose a pod externally by binding a port on the node.
- Configured under `spec.containers[].ports` with `hostPort` field.
- Useful for local development, demos, or debugging.
- Not suitable for production due to port conflicts and lack of stable addressing.

**Next topics:** Services (NodePort, LoadBalancer) and Ingress for production‑grade external access.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
### Notes: Init Containers in Kubernetes

#### 1. What Are Init Containers?

- **Init containers** are specialized containers that run **before** any application containers (defined under `spec.containers`) in a Pod.
- They are used to perform **initialization tasks** that must complete successfully before the main application starts.
- Once their task is finished, they **terminate** (enter the `Completed` state). The Pod remains `Running` only for the app containers.

---

#### 2. Key Characteristics

| Feature | Description |
|---------|-------------|
| **Execution order** | Init containers run sequentially (one after another). Each must complete successfully before the next starts. |
| **State** | They are **not** kept running; they exit when their work is done. `kubectl get pods` will show them as `Completed` (or `Init:0/1` while initializing). |
| **Failure handling** | If an init container fails (exits with non-zero code), the kubelet **restarts** it according to the Pod’s `restartPolicy`. If the restart policy is `Never`, the Pod will stay in `Init:Error`. |
| **Resource isolation** | Init containers can have their own resource requests/limits; they are considered separately from app containers. |
| **Configuration** | They use the same fields as regular containers (image, command, args, volumeMounts, env, etc.), except they **do not support** **probes** (liveness, readiness, startup) or **lifecycle hooks** (postStart, preStop). |

---

#### 3. Why Use Init Containers?

- **Prerequisites** – Run setup scripts, change kernel parameters, or create necessary files before the main application starts.
- **Data preparation** – Download configuration files, clone repositories, or generate secrets into a shared volume.
- **Dependency checks** – Wait for external services (e.g., database) to be ready (though a separate init container with a simple `sleep` or `nc` can achieve this).
- **Separation of concerns** – Keep initialization logic out of the main application container, making it easier to update or debug.

---

#### 4. Practical Example: Init Container Downloading Content

**Scenario:**
- An nginx Pod serves a custom `index.html`.
- An init container downloads `index.html` from a GitHub repository into a shared volume.
- The nginx container serves that file.

**YAML Structure:**

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: init-demo
spec:
  initContainers:
  - name: downloader
    image: busybox
    command: ['wget', '-O', '/work-dir/index.html', 'https://raw.githubusercontent.com/.../index.html']
    volumeMounts:
    - name: shared-data
      mountPath: /work-dir
  containers:
  - name: nginx
    image: nginx:latest
    volumeMounts:
    - name: shared-data
      mountPath: /usr/share/nginx/html
  volumes:
  - name: shared-data
    emptyDir: {}
```

**Explanation:**
- The init container (`downloader`) runs `wget` and saves the file to `/work-dir/index.html`.
- The volume `shared-data` is mounted at `/work-dir` in the init container and at `/usr/share/nginx/html` in the nginx container.
- After the init container completes (successful download), nginx starts and serves the downloaded file.

---

#### 5. Verification Steps

1. **Create the Pod:**
   ```bash
   kubectl apply -f init-pod.yaml
   ```

2. **Watch the init container progress:**
   ```bash
   kubectl get pods -w
   ```
   You will see the Pod in `Init:0/1` (or similar) while the init container runs, then `Running` when it succeeds.

3. **Check init container status:**
   ```bash
   kubectl describe pod init-demo
   ```
   Look for the `Init Containers` section – you’ll see the state `Completed` and exit code `0`.

4. **Verify the main container serves the content:**
   ```bash
   kubectl exec init-demo -c nginx -- cat /usr/share/nginx/html/index.html
   # or
   kubectl port-forward init-demo 8080:80
   curl localhost:8080
   ```

---

#### 6. Important Notes

- **Order matters** – If you have multiple init containers, they run in the order they appear in the YAML.
- **Restart behavior** – If an init container fails, kubelet restarts it **until it succeeds**. This is governed by the Pod’s `restartPolicy`. The app containers will **not** start until all init containers are successful.
- **Resource consumption** – Init containers can have their own resource requests/limits, which are considered separately from app containers. The scheduler uses the **highest** of either init container or app container resource requirements for placement.
- **No probes** – Probes (liveness/readiness) are not allowed in init containers because they run to completion; they would not make sense.

---

#### 7. Use Cases Summary

- **File download / preparation** – As demonstrated.
- **Database schema migrations** – Run a migration script before starting the app.
- **Waiting for dependencies** – Use `nc` or `curl` to test if a service is available.
- **Privileged operations** – Perform kernel tuning or set capabilities that require higher privileges, then exit.

---

#### 8. Cleanup

```bash
kubectl delete pod init-demo
```

---

These notes cover the lecture’s explanation of init containers, their behavior, and a practical example. They form a foundation for understanding how to perform setup tasks before your main application starts in a Kubernetes Pod.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
### Notes: Init Containers – Practical Demo

#### 1. What Are Init Containers?

- **Init containers** are specialized containers that run **before** the main application containers in a Pod.
- They are defined under `spec.initContainers` (separate from `spec.containers`).
- They run to **completion** (successful exit) – once their work is done, they terminate and are not kept running.
- If an init container fails, the kubelet restarts it according to the Pod’s `restartPolicy`. The main containers will **not** start until all init containers succeed.

---

#### 2. Key Characteristics

| Feature | Description |
|---------|-------------|
| **Execution order** | Init containers run **sequentially**. Each must complete successfully before the next starts. |
| **State** | They enter `Completed` state after finishing. `kubectl get pods` shows only the main containers; init containers are not listed in the `READY` column. |
| **Failure handling** | Restart logic follows the Pod’s `restartPolicy`. If `restartPolicy` is `Always` (default) or `OnFailure`, failed init containers are restarted until success. |
| **Resource limits** | Init containers can have their own `resources` (requests/limits). The scheduler uses the **highest** of init and regular container resource requirements for node selection. |
| **Configuration** | Same fields as regular containers (`image`, `command`, `args`, `env`, `volumeMounts`, etc.) **except** they do **not** support **probes** (liveness/readiness/startup) or **lifecycle hooks** (`postStart`/`preStop`). |

---

#### 3. Use Cases for Init Containers

- **Prerequisites** – Install packages, set kernel parameters, or create directories before the main app starts.
- **Data preparation** – Download configuration files, clone Git repositories, or generate secrets into a shared volume.
- **Dependency checks** – Wait for external services (e.g., database) to become available.
- **Separation of concerns** – Keep setup logic out of the main container image for cleaner updates.

---

#### 4. Practical Demo: Init Container Downloading Content from GitHub

**Goal:**  
- An init container downloads a custom `index.html` file from a GitHub repository.  
- The downloaded file is stored in a shared volume (`emptyDir`).  
- The main nginx container serves that file.

**YAML file (`init-container-pod.yaml`):**

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-init
  labels:
    app: nginx
    type: web-server
spec:
  initContainers:
  - name: alpine-init
    image: alpine
    command: ['wget', '-O', '/var/tmp/index.html', 'https://raw.githubusercontent.com/<your-repo>/index.html?raw=true']
    volumeMounts:
    - name: shared-data
      mountPath: /var/tmp
  containers:
  - name: nginx
    image: nginx:latest
    ports:
    - containerPort: 80
    volumeMounts:
    - name: shared-data
      mountPath: /usr/share/nginx/html
  volumes:
  - name: shared-data
    emptyDir: {}
```

**Explanation:**
- `initContainers` section:  
  - Uses `alpine` image.  
  - Runs `wget -O /var/tmp/index.html <url>` to download the file.  
  - The shared volume is mounted at `/var/tmp` inside the init container.
- `containers` section:  
  - Standard nginx container.  
  - Shared volume mounted at `/usr/share/nginx/html` (nginx’s default document root).
- `volumes`: defines an `emptyDir` volume named `shared-data`.

---

#### 5. Creating and Verifying the Pod

**1. Create the Pod:**
```bash
kubectl create -f init-container-pod.yaml
```

**2. Watch the Pod status (init phase):**
```bash
kubectl get pods -w
```
Initial output may show `Init:0/1` or `Init:0/1` while the init container runs. Once completed, you’ll see `Running` and `READY 1/1`.

**3. Check detailed status:**
```bash
kubectl describe pod nginx-init
```
Look for:
- **Init Containers** section – state `Completed`, exit code `0`.
- **Containers** section – nginx container state `Running`.
- **Events** – shows order: scheduler, pulling images, starting init container, then starting main container.

**4. View logs of the init container:**
```bash
kubectl logs nginx-init -c alpine-init
```
Output will show the wget download process (e.g., connecting to GitHub, saving file).

**5. Test the served content:**
```bash
# Get Pod IP
kubectl get pods -o wide

# Curl the Pod IP
curl <pod-ip>
```
You should see the content from the GitHub file (e.g., "Welcome to GitHub repo init containers demo").

---

#### 6. Failure Demonstration

To see how init container failures affect the Pod:

1. **Introduce a mistake** – change the URL to a non‑existent file (e.g., `index.php` instead of `index.html`).
2. **Apply the faulty YAML**:
   ```bash
   kubectl apply -f init-container-pod.yaml   # (or create/delete)
   ```
3. **Check Pod status** – it will remain in `Init:Error` or `Init:CrashLoopBackOff`.
   ```bash
   kubectl get pods
   ```
4. **Describe the Pod** – you’ll see the init container failing with exit code 1 and repeated restarts.
   ```bash
   kubectl describe pod nginx-init
   ```
5. **View init container logs** to see the error:
   ```bash
   kubectl logs nginx-init -c alpine-init
   ```
   Output: `ERROR 404: Not Found`.

6. **Fix the YAML** (correct the filename) and reapply:
   ```bash
   kubectl replace --force -f init-container-pod.yaml
   ```
   The Pod will be deleted and recreated with the corrected init container.

---

#### 7. Important Observations

- The `READY` column in `kubectl get pods` only counts **regular containers**, not init containers. A Pod with an init container will show `1/1` once the main container is ready.
- Init containers are **ephemeral** – after they complete, they are not restarted (unless they fail).
- If an init container fails, the main containers never start until the init container succeeds.
- Shared volumes can be used to pass data from init containers to main containers.

---

#### 8. Cleanup

```bash
kubectl delete pod nginx-init
```

---

#### 9. Summary

| Aspect | Details |
|--------|---------|
| **Purpose** | Perform initialization tasks before main containers start. |
| **Definition** | `spec.initContainers` list. |
| **Order** | Sequential; each must complete successfully. |
| **State** | Completed after success; main containers start only after all init containers succeed. |
| **Failure** | Restarted until success (if `restartPolicy` permits). |
| **Probes** | Not supported in init containers. |
| **Shared volumes** | Often used to pass data from init to main containers. |

Init containers are a powerful feature for ensuring that your application has the correct prerequisites before it starts, keeping your main container images clean and focused.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
### Notes: Pod Restart Policy

#### 1. Overview

- **Restart policy** determines how the kubelet handles container termination inside a Pod.
- It is defined at the **Pod level** under `spec.restartPolicy`, **not** per container.
- Supported values: `Always` (default), `OnFailure`, `Never`.

---

#### 2. The Three Policies

| Policy | Behavior |
|--------|----------|
| **Always** | Kubelet restarts the container regardless of the exit code (0 or non‑zero). This is the **default** if no `restartPolicy` is specified. |
| **OnFailure** | Kubelet restarts the container **only if it terminates with a non‑zero exit code** (failure). If exit code is 0 (successful completion), no restart occurs. |
| **Never** | Kubelet never restarts the container, regardless of exit code. The container stays terminated; the Pod may show `Error` or `Completed` depending on exit code. |

---

#### 3. Where to Specify Restart Policy

In the Pod YAML, under `spec`:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: example-pod
spec:
  restartPolicy: OnFailure   # or Always, Never
  containers:
  - name: my-container
    image: alpine
    command: ["sleep", "10"]
```

- If omitted, Kubernetes defaults to `Always`.
- You can verify the effective policy by inspecting the Pod’s YAML:
  ```bash
  kubectl get pod <pod-name> -o yaml | grep restartPolicy
  ```

---

#### 4. Backoff Delay and Restart Logic

- When a container fails and the policy allows a restart, kubelet does **not** restart immediately without limit.
- It applies an **exponential backoff**:
  - First restart: after 10 seconds
  - Subsequent restarts: increasing delay (20s, 40s, …) up to a maximum of **5 minutes**
- If the container runs without failure for **10 minutes**, the backoff timer is reset to zero.
- This prevents a failing container from consuming excessive node resources.

---

#### 5. Practical Demonstration Summary

The lecturer used a multi‑container Pod (nginx + alpine writer) to test the policies.

**Steps for each test:**
1. Modify the Pod YAML:
   - Set `restartPolicy` to the desired value.
   - In the alpine container, add a command that exits after 10 seconds with a specific exit code (0 or 1).
2. Create the Pod.
3. Observe behavior with `kubectl get pods -w` and `kubectl describe pod`.

**Results:**

| Policy | Exit Code | Behavior |
|--------|-----------|----------|
| `Always` (default) | 0 | Container restarts repeatedly (backoff). Pod stays `Running`. |
| `Always` | 1 | Same as above – restarts regardless. |
| `OnFailure` | 0 | No restart. Pod eventually shows `NotReady` (one container missing). |
| `OnFailure` | 1 | Restarts repeatedly (backoff) because it’s a failure. |
| `Never` | 0 | No restart. Pod may show `Completed` or `NotReady`. |
| `Never` | 1 | No restart. Pod shows `Error` or `CrashLoopBackOff` (but no actual restart). |

- `kubectl describe pod` shows exit codes and restart counts under the container’s state.
- Events show when kubelet attempts restarts.

---

#### 6. Use Cases

- **Always** – Typical for long‑running applications (web servers, databases) that should be automatically recovered after crashes.
- **OnFailure** – Suitable for batch jobs or tasks where you want automatic retry only when the task fails, but not if it completes successfully.
- **Never** – Useful for debugging or one‑time tasks where you do not want automatic restarts; you want the Pod to remain in a terminal state for inspection.

---

#### 7. Important Notes

- The restart policy applies to **all containers in the Pod**. If any container terminates, the policy determines whether kubelet restarts it.
- Init containers have their own failure handling (they are restarted according to the Pod’s `restartPolicy` until they succeed; otherwise, the main containers never start).
- The default `Always` policy is designed to keep application containers running by default.

---

#### 8. Verification Commands

```bash
# View effective restart policy
kubectl get pod <pod-name> -o yaml | grep -A1 restartPolicy

# Watch Pod status in real time
kubectl get pods -w

# Get detailed info (exit codes, restart counts)
kubectl describe pod <pod-name>

# Check container logs to understand failures
kubectl logs <pod-name> -c <container-name>
```

---

#### 9. Summary

- Pod restart policy is a **spec‑level** setting controlling container restarts.
- Three values: `Always` (default), `OnFailure`, `Never`.
- Kubelet uses an exponential backoff delay for restarts.
- The choice depends on whether you want automatic recovery for failures and how you want to handle successful completions.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
### Notes: Static Pods

#### 1. What Are Static Pods?

- **Static pods** are pods that are managed **directly by the kubelet daemon** on a specific node, **not** by the Kubernetes API server.
- The kubelet watches a designated directory (or a URL) for pod manifests (YAML/JSON files) and automatically creates and runs those pods.
- Because they are not managed by the API server, static pods cannot be controlled using `kubectl` or the API in the usual way – any changes via the API are temporary; the kubelet will revert them.

---

#### 2. How Static Pods Differ from Regular Pods

| Feature | Regular Pod | Static Pod |
|---------|-------------|------------|
| **Management** | API server + controllers | Kubelet only |
| **Creation** | `kubectl` or API call | Manifest file in a kubelet‑watched directory or URL |
| **API server awareness** | Yes – stored in etcd | No – the API server sees them as “mirror pods” but cannot control them |
| **Deletion** | `kubectl delete` removes permanently | If deleted via API, kubelet recreates it (since manifest still exists) |
| **Pod name** | User‑defined | Appended with node name (e.g., `my-pod-node1`) |

- **Mirror pod:** The API server creates a read‑only representation of a static pod so it appears in `kubectl get pods`, but any modification is overwritten by the kubelet.

---

#### 3. Use Cases for Static Pods

- Running **control plane components** in a self‑managed Kubernetes cluster (e.g., `kube-apiserver`, `kube-controller-manager`, `kube-scheduler`, `etcd`).
- Deploying a **critical node‑local agent** that must run even if the API server is down.
- Bootstrapping a cluster (kubelet starts static pods before the control plane is up).

---

#### 4. Creating Static Pods – Two Approaches

**A. File‑System Hosted Approach (most common)**

1. Place a pod manifest file (YAML or JSON) in a directory that the kubelet monitors.
2. Default directory: `/etc/kubernetes/manifests` (can be changed via kubelet’s `--pod-manifest-path` flag).
3. Kubelet periodically scans the directory and creates/updates/deletes pods as files change.

**B. Web‑Hosted (HTTP) Approach**

1. Configure the kubelet with a URL where it can fetch manifests (e.g., `--manifest-url=https://example.com/manifests/`).
2. Kubelet downloads the manifest file from that URL and creates the pod.
3. It periodically re‑downloads to detect changes.

---

#### 5. Practical Steps (File‑System Approach)

- **Locate the static pod directory** (on control‑plane nodes, it is typically `/etc/kubernetes/manifests`).
- **Create a pod manifest** (e.g., `static-nginx.yaml`) in that directory:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: static-nginx
spec:
  containers:
  - name: nginx
    image: nginx:latest
    ports:
    - containerPort: 80
```

- **Verify** – The pod should start automatically within seconds.
  ```bash
  kubectl get pods   # Shows static-nginx-<node-name>
  ```
- **Delete the pod** via `kubectl delete pod static-nginx-<node-name>` – it will be recreated because the manifest file still exists.
- **Remove the manifest file** to delete the static pod permanently.

---

#### 6. Verification and Characteristics

- **Pod name suffix:** The node name is appended automatically.
- **Kubelet logs** can be inspected to see static pod activity.
- **Pod lifecycle:** If the kubelet restarts, it re‑creates static pods from the manifests.
- **No self‑healing via API:** If you edit a static pod using `kubectl edit`, the changes will be overwritten by the kubelet (which reconciles from the manifest file).

---

#### 7. Summary

| Aspect | Details |
|--------|---------|
| **Definition** | Pods managed solely by kubelet, not by the API server. |
| **Creation** | Place manifest in `/etc/kubernetes/manifests` or provide a URL to kubelet. |
| **Naming** | `pod-name-<node-name>` |
| **Persistence** | Deleting via kubectl does not remove permanently; manifest file must be removed. |
| **Typical use** | Hosting control plane components, critical node agents. |

Static pods are a powerful mechanism for running essential workloads that must survive API server outages and are tied to a specific node.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
### Notes: Challenges of Using Standalone Pods in Production

#### 1. Pod Is the Basic Building Block

- **Pod** is the fundamental unit for running applications in Kubernetes.
- Any higher‑level controller (Deployment, ReplicaSet, DaemonSet, StatefulSet, Job, CronJob) ultimately creates and manages Pods.
- However, using a **standalone Pod** (a Pod not managed by a controller) is **not suitable for production workloads**.

---

#### 2. Key Limitations of Standalone Pods

| Challenge | Explanation |
|-----------|-------------|
| **No self‑healing** | If a standalone Pod fails or is deleted, Kubernetes does **not** recreate it automatically. The user must manually intervene (e.g., `kubectl delete` and recreate). |
| **Not bound to a node** | The scheduler decides where a Pod runs. If the Pod is recreated, it may land on a different node (unless you use nodeSelector, node affinity, etc.). This can break assumptions about node‑local resources. |
| **No high availability** | A single Pod cannot provide high availability. If it goes down, there is no replica to take over. For HA, you need multiple replicas managed by a controller (e.g., Deployment). |
| **Failed Pods remain until manual cleanup** | A Pod that goes into `Error` or `CrashLoopBackOff` stays in the cluster until manually deleted (or until the kubelet’s garbage collection threshold is reached). This consumes resources and clutters the API. |
| **Node failure = Pod loss** | If a node dies, Pods running on that node are eventually evicted (after a timeout, default 5 minutes). They are **not** automatically rescheduled to another node unless managed by a controller. |

---

#### 3. Best Practices: Use Controllers, Not Standalone Pods

- In real‑world Kubernetes clusters, applications are **never** deployed as standalone Pods.
- Instead, controllers such as **Deployment**, **ReplicaSet**, **StatefulSet**, **DaemonSet**, **Job**, or **CronJob** are used to manage Pods.
- These controllers provide:
  - **Self‑healing** – recreate failed Pods.
  - **Scaling** – adjust the number of replicas.
  - **Rolling updates and rollbacks** – seamless application upgrades.
  - **Node failure recovery** – reschedule Pods onto healthy nodes.

---

#### 4. Proper Use of Multi‑Container Pods

- **Do not** bundle unrelated applications (e.g., nginx and MySQL) into a single Pod.
- Multi‑container Pods should contain **tightly coupled containers** that share a common purpose (e.g., a main application container and a sidecar that logs or processes data).
- Each logical application component should have its own Pod (and typically its own controller).

---

#### 5. Cleanup of Failed Pods

- Failed or terminated Pods are **not automatically deleted immediately** – they remain until:
  - Manually removed (`kubectl delete pod <name>`), or
  - The **TerminatedPodGC** controller (part of kube-controller-manager) removes them after a certain threshold or time period.
- Leaving many failed Pods wastes API storage and can cause confusion.

---

#### 6. Node Failure Impact

- When a node becomes unreachable, the control plane waits for a timeout (default 5 minutes) before marking the Pods as terminating.
- Those Pods are **not rescheduled** unless a controller (like a Deployment) manages them. Standalone Pods are simply lost.

---

#### 7. Summary

- **Standalone Pods** are useful for learning, testing, and troubleshooting, but they lack essential production features.
- For production workloads, always use a **controller** to ensure reliability, scalability, and self‑healing.
- Understanding standalone Pods is the foundation, but real‑world Kubernetes applications rely on higher‑level abstractions.
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


