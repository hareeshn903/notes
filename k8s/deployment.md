
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: catalog
  labels:
    app.kubernetes.io/name: catalog
spec:
  replicas: 1
  strategy:
    rollingUpdate:
      maxUnavailable: 1
    type: RollingUpdate
  selector:
    matchLabels:
      app.kubernetes.io/name: catalog
  template:
    metadata:
      labels:
        app.kubernetes.io/name: catalog
    spec:
      securityContext:
        fsGroup: 1000
      containers:
        - name: catalog
          securityContext:
            capabilities:
              drop:
              - ALL
            readOnlyRootFilesystem: true
            runAsNonRoot: true
            runAsUser: 1000
          image: "public.ecr.aws/aws-containers/retail-store-sample-catalog:1.0.0"
          imagePullPolicy: IfNotPresent
          ports:
            - name: http
              containerPort: 8080
              protocol: TCP
          readinessProbe:
            httpGet:
              path: /health
              port: 8080
          livenessProbe:
            httpGet:
              path: /health
              port: 8080                 
          resources:
            limits:
              cpu: 200m
              memory: 256Mi
            requests:
              cpu: 100m
              memory: 256Mi

```

```run-bash
cd /Users/hari/myws/projects_ex/devosAWS_project/kalyan_reddy/devops-real-world-project-implementation-on-aws/08_Kubernetes_Foundation/08_02_Kubernetes_Deployments/catalog_k8s_manifests
ls
kubectl apply -f 01_catalog_deployment.yaml
```

```run-bash
kubectl get deploy
```

```run-bash
kubectl get rs
```

```run-bash
kubectl get pods
```

```run-bash
kubectl rollout status deploy/catalog
```


```run-bash
kubectl describe pod catalog-78d7fd7f6
```

```run-bash
kubectl describe deploy catalog
```

```run-bash
kubectl get rs
```

```run-bash
kubectl describe rs catalog-78d7fd7f6
```

```run-bash
kubectl port-forward deployment/catalog 7080:8080
```

```run-bash
kubectl scale deployment catalog --replicas=3
```

```run-bash
kubectl scale deployment catalog --replicas=5
```

```run-bash
kubectl scale deployment catalog --replicas=1
```

```run-bash
kubectl get pods -o wide
```


