In **Kubernetes**, containers are **ephemeral** (temporary). When a container crashes or is recreated, any data stored inside the container filesystem is lost.  
To solve this, Kubernetes provides **Volumes**—a mechanism to **store and share data between containers and persist data beyond container lifetimes**.


## 1. What is a Kubernetes Volume? #k8s_volumes

A **Kubernetes Volume** is a **directory accessible to containers in a Pod**, backed by some storage medium.

Key properties:

- Exists for the **lifetime of the Pod**
    
- Can be **shared between multiple containers** in the same Pod
    
- Mounted inside containers at specified paths
    
- Storage type can vary (disk, memory, network storage, cloud storage, etc.)
    

Important note:

- **Volume lifecycle = Pod lifecycle**
    
- When a Pod is deleted, most volume data is also deleted (except persistent volumes).
    

---

## 2. Why Kubernetes Volumes are Needed

Containers by default have **temporary storage**.

Without volumes:

- Data disappears if container restarts
    
- Containers cannot easily share files
    
- Applications like databases cannot persist data

---

## 3. How Volumes Work in Kubernetes

Volumes are defined in the **Pod specification** and mounted inside containers.

### Basic Structure

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: volume-demo
spec:
  containers:
  - name: app
    image: nginx
    volumeMounts:
    - mountPath: /data
      name: my-volume

  volumes:
  - name: my-volume
    emptyDir: {}
```

Explanation:

1. `volumes` → defines the storage
    
2. `volumeMounts` → mounts storage into container
    
3. `mountPath` → directory inside container
    


---

# Types of Kubernetes Volumes

Kubernetes supports multiple volume types depending on storage needs.

---

# 1. emptyDir Volume

`emptyDir` is a **temporary volume created when a Pod starts**.

Characteristics:

- Exists as long as Pod runs
    
- Deleted when Pod is removed
    
- Shared between containers in the same Pod
    

Use cases:

- Cache
    
- Temporary processing data
    
- Data sharing between containers
    

Example:

```yaml
volumes:
- name: cache-volume
  emptyDir: {}
```

---

# 2. hostPath Volume

`hostPath` mounts a **file or directory from the host node** into the Pod.

Characteristics:

- Uses node filesystem
    
- Data persists on the node
    
- Not portable across nodes
    

Example:

```yaml
volumes:
- name: host-volume
  hostPath:
    path: /data
```

Use cases:

- Access node logs
    
- Monitoring agents
    
- Debugging
    

⚠️ Not recommended for production due to **security risks**.

---

# 3. PersistentVolume (PV)

A **PersistentVolume (PV)** represents **cluster storage provisioned by an admin**.

Characteristics:

- Independent of Pods
    
- Lives beyond Pod lifecycle
    
- Backed by cloud or network storage
    

Example storage:

- AWS EBS
    
- NFS
    
- Ceph
    
- Azure Disk
    
- Google Persistent Disk
    

Example PV:

```yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-storage
spec:
  capacity:
    storage: 5Gi
  accessModes:
  - ReadWriteOnce
  hostPath:
    path: /data/pv
```

---

# 4. PersistentVolumeClaim (PVC)

A **PVC is a request for storage by a user**.

Workflow:

```
Pod → PVC → PV → Storage
```

Example PVC:

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: storage-claim
spec:
  accessModes:
  - ReadWriteOnce
  resources:
    requests:
      storage: 2Gi
```

Pods mount the PVC instead of the PV.

---

# 5. ConfigMap Volume

A **ConfigMap volume** provides configuration files to containers.

Example:

```yaml
volumes:
- name: config-volume
  configMap:
    name: app-config
```

Use cases:

- Application configuration
    
- Environment settings
    
- Properties files
    

---

# 6. Secret Volume

Secret volumes store **sensitive data securely**.

Examples:

- passwords
    
- tokens
    
- SSH keys
    
- API keys
    

Example:

```yaml
volumes:
- name: secret-volume
  secret:
    secretName: db-password
```

Mounted as files inside container.

---

# Access Modes in Persistent Volumes

Access modes define how the volume can be mounted.

|Mode|Meaning|
|---|---|
|ReadWriteOnce (RWO)|One node read/write|
|ReadOnlyMany (ROX)|Multiple nodes read-only|
|ReadWriteMany (RWX)|Multiple nodes read/write|

---

# Storage Classes (Dynamic Provisioning)

StorageClass allows **automatic creation of volumes**.

Instead of manually creating PVs, Kubernetes dynamically provisions storage.

Example:

```yaml
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: fast-storage
provisioner: kubernetes.io/aws-ebs
```

Workflow:

```
Pod → PVC → StorageClass → PV → Cloud Storage
```

---


```run-bash
cd /Users/hari/myws/notes/notes/k8s/storage/

kubectl apply -f pod-emptyDir.yaml
```


```run-bash
kubectl get pods -o wide
```

```run-bash
kubectl describe pod nginx-demo
kubectl port-forward pod/nginx-demo 80:80
```

```run-bash
kubectl get pods -o jsonpath='{.items[1].status.podIP}'
curl 10.244.3.2
```

```run-bash
curl $(kubectl get pods -o jsonpath='{.items[1].status.podIP}')

```
