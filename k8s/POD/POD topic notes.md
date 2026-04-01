POD defination
Pod lifecycle 
multi‑container Pod 


what is a pod?

Pods are the smallest deployable units we can create and manage. We actually run our applications inside these pods. A pod is basically a group of one or more containers that share the same storage, network, and configuration for how the containers should run. Usually, we run one container per pod, but in some special cases — like when containers need to work very closely together — we can have multiple containers inside the same pod.


### Pod lifecycle

Pod goes through different phases from creation to termination in Kubernetes.

A Pod moves through these **5 main phases**:

### 1. **Pending**

- Pod is created but not yet running Kubernetes is scheduling it
The container is preparing to start, pulling images, or processing secrets.

### 2. **Running**
The container is actively executing without errors.

### **Terminated**
The container has either successfully exited or failed, with logs indicating the reason.

### 3. **Succeeded**

- All containers completed successfully
    
- Will not restart
    

👉 Example: Batch jobs

---

### 4. **Failed**

- One or more containers failed (non-zero exit code)
    
- Pod won’t restart (depending on restart policy)
    

---

### 5. **Unknown**

- Kubernetes cannot determine the Pod state
    
- Usually due to node communication issues
    

---

## 🔁 Restart Policies (Important Add-on ⭐)

Mention this to stand out:

- **Always** (default) → restart container always
    
- **OnFailure** → restart only if it fails
    
- **Never** → do not restart
    

## multi‑container Pod 

A multi‑container Pod is a single Pod that runs **two or more containers** that are tightly coupled. They share the same lifecycle, network namespace (so they can communicate over `localhost`), and storage volumes.

Multi-container pods include init containers and sidecar/helper containers:


**Sidecar Containers**: Provide some helper service to the main application container, for example, service mesh, monitoring agent, logging agent,


**Init Containers**: Run and complete before the application containers are started,
used to perform some pre-validation/sanity checks or
Used for setup tasks like waiting for a database to be ready, pre‑populating data

## They Communicate
- **Over `localhost`** – Containers can connect to each other using `localhost:<port>`.
    
- **Via shared volumes** – A volume mounted in all containers allows one container to write and another to read files.
    
- **Via process signalling (optional)** – They share the same IPC namespace if enabled, though that’s less common.

### Environment Variables in Kubernetes
Environment variables are a fundamental way to pass configuration data into containers running in Kubernetes. They allow you to decouple configuration from the container image, making applications more portable and manageable.

Environment variables are set at the **container level** inside a Pod spec. The most basic form is a literal value:
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-app
spec:
  containers:
  - name: app
    image: myapp:latest
    env:
    - name: DATABASE_URL
      value: "postgresql://db.example.com:5432/mydb"
    - name: LOG_LEVEL
      value: "info"
```

Kubernetes provides several ways to populate environment variables without hard‑coding values in the YAML:

### a) **From ConfigMap**

ConfigMaps hold non‑sensitive configuration data.

```yaml

env:
- name: DB_HOST
  valueFrom:
    configMapKeyRef:
      name: app-config
      key: database.host
```

Or use `envFrom` to inject all keys from a ConfigMap as environment variables:

```
envFrom:
- configMapRef:
    name: app-config
```

### b) **From Secret**

Secrets hold sensitive data (passwords, tokens). The process is similar:

yaml

```
env:
- name: DB_PASSWORD
  valueFrom:
    secretKeyRef:
      name: db-secret
      key: password
```

Secrets are base64‑encoded but are injected as plain text into the container’s environment. Never log environment variables in production.

```
apiVersion: v1
kind: Pod
metadata:
  name: complex-app
spec:
  containers:
  - name: app
    image: myapp:latest
    env:
    - name: APP_MODE
      value: "production"
    - name: DB_HOST
      valueFrom:
        configMapKeyRef:
          name: app-config
          key: db.host
    - name: DB_PASSWORD
      valueFrom:
        secretKeyRef:
          name: db-secret
          key: password
    - name: NAMESPACE
      valueFrom:
        fieldRef:
          fieldPath: metadata.namespace
    envFrom:
    - configMapRef:
        name: global-config
```

### Restart policies

the **restart policy** defines how containers within a Pod behave when they exit. It’s set at the Pod level under `spec.restartPolicy` and applies to **all containers** in that Pod.

There are three possible values:

|Policy|Behavior|
|---|---|
|**Always**|The kubelet restarts the container regardless of its exit code. This is the **default** if not specified.|
|**OnFailure**|The container is restarted only if it exits with a **non-zero** (error) code. If it exits successfully (code 0), it is not restarted.|
|**Never**|The container is never restarted, regardless of exit code.|

---

## 1. **Top‑Level Structure**

```
apiVersion: v1
kind: Pod
metadata:            # Data that identifies the Pod
  name: my-pod
  namespace: default
  labels:            # Used for selection by services, controllers
    app: myapp
  annotations:       # Arbitrary metadata (tooling, monitoring)
    description: "This is a test pod"
spec:                # The desired state – the actual configuration
  containers: []
  # other spec fields...
status:              # Read-only – observed state (you don't set this)
```
  
---

## 2. **The `spec` – Core Configuration**

All the runtime behavior is defined under `spec`. Key categories:

### a) **Containers** (required)

- **`containers`** – list of app containers.
    
    - `name`, `image`, `command`, `args`
        
    - `ports` – container ports to expose.
        
    - `env` / `envFrom` – environment variables from literals, ConfigMaps, Secrets.
        
    - `resources` – CPU/memory `requests` (scheduling guarantee) and `limits`.
        
    - `volumeMounts` – mount volumes into the container. (where volumes are mounted inside the container)
        
    - `livenessProbe`, `readinessProbe`, `startupProbe` – health checks.
        
    - `securityContext` – container‑level privileges (runAsUser, capabilities, etc.).
    
- **`volumes`** – defined separately (e.g., emptyDir, hostPath, ConfigMap, PersistentVolumeClaim).
    
- **`restartPolicy`** – defaults to `Always`, but can be `Never` or `OnFailure`.
    
- **`nodeSelector`**, **`tolerations`**, **`affinity`** – for scheduling control.
    
- **`serviceAccountName`** – to assign permissions to the Pod.
        

### b) **Init Containers** (`initContainers`)

- Run to completion before app containers start.
    
- Useful for setup (waiting for dependencies, pre‑populating data).
    

### c) **Volumes** (`volumes`)

- Storage available to the Pod’s containers.
    
- Types: `emptyDir`, `hostPath`, `configMap`, `secret`, `persistentVolumeClaim`, etc.
    
- Containers reference them via `volumeMounts`.
    

### d) **Restart Policy** (`restartPolicy`)

- `Always` (default), `OnFailure`, `Never`.
    
- Governs whether the kubelet restarts containers after they exit.
    

### e) **Scheduling Constraints**

- `nodeSelector` – simple key‑value labels to select target nodes.
    
- `nodeName` – force a specific node (bypasses scheduler).
    
- `affinity` / `antiAffinity` – advanced placement rules (node and pod affinity).
    
- `tolerations` – allow the Pod to be scheduled on tainted nodes.
    

### f) **Service Identity & Networking**

- `serviceAccountName` – the service account whose credentials the Pod uses to talk to the API.
    
- `hostNetwork` – if `true`, uses the node’s network namespace instead of a dedicated Pod IP.
    
- `dnsPolicy` – DNS settings (`ClusterFirst`, `Default`, `None`).
    
- `hostname`, `subdomain` – for custom hostnames and headless service discovery.
    

### g) **Security Context** (`securityContext` at Pod level)

- Apply settings to all containers (e.g., `runAsNonRoot`, `fsGroup`).
    

### h) **Other Settings**

- `priorityClassName` – pod priority (scheduling preemption).
    
- `schedulerName` – use a custom scheduler.
    
- `terminationGracePeriodSeconds` – time allowed for graceful shutdown.
    
- `activeDeadlineSeconds` – max time the Pod can run (useful for Jobs).
    
- `imagePullSecrets` – credentials for private registries.

---

