### How do you debug a CrashLoopBackOff or pending pod in Kubernetes?

### 🔍 Steps to Debug

**1. Check pod status**

```bash
kubectl get pods
kubectl describe pod <pod-name>
```

👉 Look for:

* Exit code
* Events (OOMKilled, Error, etc.)

---

**2. Check logs**

```bash
kubectl logs <pod-name>
kubectl logs <pod-name> --previous
```

👉 `--previous` is **very important** if container restarts fast

---

**3. Common causes**

* ❌ Application crash (bad code, missing config)
* ❌ Wrong environment variables
* ❌ Database/service not reachable
* ❌ Port conflicts
* ❌ OOMKilled (memory limit exceeded)

---

**4. Check resource limits**

```bash
kubectl describe pod <pod-name> | grep -i memory
```

👉 If OOMKilled → increase memory limits

---

**5. Check liveness/readiness probes**

```yaml
livenessProbe:
  httpGet:
    path: /health
```

👉 Wrong probe = container killed repeatedly

---

**6. Debug interactively**

```bash
kubectl exec -it <pod-name> -- /bin/sh
```

---

# ⏳ 2. Pending Pod (Pod not scheduled)

### 🔍 Steps to Debug

**1. Describe the pod**

```bash
kubectl describe pod <pod-name>
```

👉 Check **Events section** (most important)

---

**2. Common reasons**

### 🚫 Insufficient resources

```
0/3 nodes available: insufficient cpu/memory
```

✔ Fix:

* Reduce resource requests
* Add more nodes

---

### 🚫 Node selector / affinity mismatch

```yaml
nodeSelector:
  disktype: ssd
```

✔ Fix:

* Ensure nodes match labels

---

### 🚫 Taints & tolerations

```
node(s) had taint {key=value:NoSchedule}
```

✔ Fix:

```yaml
tolerations:
- key: "key"
  operator: "Equal"
```

---

### 🚫 PVC not bound

```
persistentvolumeclaim not found
```

✔ Fix:

```bash
kubectl get pvc
```

---

### 🚫 Image pull issues

```
ErrImagePull / ImagePullBackOff
```

✔ Fix:

* Check image name
* Check registry access

---

---


