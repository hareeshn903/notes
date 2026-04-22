
# 🧩 1. Kubernetes Services – Fundamentals

### Core Concepts

- What is a Service in Kubernetes? What is Kubernetes default Service type? _(ClusterIP)
- What are the types of Services in Kubernetes? Explain ClusterIP, NodePort, LoadBalancer, and ExternalName. When would you use each type of Service?
- What is a LoadBalancer in Kubernetes?
- NodePort vs LoadBalancer vs Ingress for exposing apps.
- Explain `port`, `targetPort`, and `nodePort` in a Service.
    
- How do Kubernetes Services find Pods?
- How does kubernetes services linked to the pods ? _(labels & selectors)_
- How do containers communicate inside Kubernetes?

- How does one namespace pod communicate with another namespace?
- Why does a Service work inside a cluster but not across namespaces?
    
- How do you expose a Pod to the internet?
- How do you expose a Service externally?

- What is Ingress in Kubernetes? What is an Ingress Controller? What does an Ingress Controller do? How does Ingress work?
- What is the use of Ingress and Ingress Controller in Kubernetes?
- How do you set up an Ingress Controller?
- What is a LoadBalancer and an Ingress Controller in Kubernetes? What is the difference between them?
- How the app is exposed? (discussed my Ingress setup)  
- How does traffic flow: **Domain → Ingress → Service → Pod**?

-  What is the difference between Ingress and Gateway API?

- How is an application exposed end-to-end in Kubernetes? _(design discussion)_
    
- When to use Ingress vs LoadBalancer in real-world scenarios?

- NodePort service created, but unreachable from outside. Why?
    
- How do you troubleshoot Kubernetes networking issues? _(DNS, CNI, Ingress)_
    

---

# ⚡ Bonus: Condensed “Top Interview Questions” (High Value)

If you want to focus quickly, these are the **most commonly asked**:

1. What is a Kubernetes Service and its types?
    
2. Difference between ClusterIP, NodePort, LoadBalancer.
    
3. Explain `port`, `targetPort`, `nodePort`.
    
4. How does Service discover Pods?
    
5.  How would you expose a Kubernetes application externally?
    
6. What is Ingress and how it works?
    
7. Ingress vs LoadBalancer.
    
8. Traffic flow: Domain → Ingress → Service → Pod.
    
9. Cross-namespace communication in Kubernetes.
    
10. Troubleshooting Service/Ingress issues.

---

### What is a Service in Kubernetes? What is Kubernetes default Service type? _(ClusterIP)

A Service in Kubernetes is an abstraction that provides a stable network endpoint to access a group of Pods.

In Kubernetes, Pods are ephemeral (dynamic) and their IP addresses change when they are recreated. A Service solves this by assigning a fixed IP address and DNS name, it allows other applications to reliably communicate with the Pods.
It also performs load balancing, distributing incoming traffic across all the Pods 

Services use labels and selectors to identify Pods
Default type is ClusterIP (internal communication)
Other types include NodePort, LoadBalancer, and ExternalName


> We can create different types of Services by passing .spec.type=[ClusterIP, NodePort, LoadBalancer] parameter
>pods are integrated to service by endpoint objects (spec.endpoints)
>service DNS name are controlled by CoreDNS 


Types of Services in Kubernetes
Kubernetes supports several types of Services, each suited to different use cases:

ClusterIP (default): Exposes the Service only within the cluster (internal access). Other Pods in the cluster can access the Service, but external clients cannot.
NodePort: Exposes the Service on a specific port on each node in the cluster, making it accessible from outside the cluster.
LoadBalancer: Exposes the Service externally using a cloud provider’s load balancer (if available), allowing external traffic to access it.
ExternalName: Maps the Service to an external DNS name, allowing Kubernetes workloads to access external services by name.



ClusterIP
a ClusterIP Service is the default Service type that exposes an application only within the cluster. It provides a stable virtual IP and DNS name that other Pods can use to communicate with it.
It acts as an internal load balancer, distributing traffic across multiple Pods that match a selector. Since it’s not accessible from outside the cluster, it’s mainly used for internal microservice communication, like a backend talking to a database.”

>“A ClusterIP Service abstracts a dynamic set of Pods and gives them a fixed endpoint, even if Pods restart or scale. Kubernetes automatically updates the endpoints behind the Service and balances traffic across them.

```

apiVersion: v1
kind: Service
metadata:
  name: my-service
spec:
  selector:
    app: my-app
  ports:
    - port: 80
      targetPort: 8080
  type: ClusterIP

```

What this does:
  Exposes Pods with label app: my-app
  Service is reachable at:
    my-service
    my-service.default.svc.cluster.local
  Only accessible within the cluster


NodePort
NodePort is a Kubernetes Service type used to expose an application externally. It opens a specific port on every node in the cluster, and traffic coming to <NodeIP>:<NodePort> is forwarded to the Service and then to the Pods. The NodePort range is typically 30000 to 32767. It’s mainly used for testing or in environments where a cloud load balancer is not available.

> NodePort builds on top of ClusterIP. It creates a service that is accessible internally via ClusterIP and externally by exposing a static port on each node. When a request hits any node on that port, Kubernetes routes it to the appropriate backend Pod using kube-proxy. However, it's not ideal for production due to limited port range and lack of advanced load balancing

```

apiVersion: v1
kind: Service
metadata:
  name: my-nodeport-service
spec:
  type: NodePort
  selector:
    app: my-app
  ports:
    - port: 80          # Service port
      targetPort: 8080  # Pod port
      nodePort: 30007   # Optional (auto-assigned if not given)

```

LoadBalancer

n Kubernetes, a LoadBalancer Service is used to expose an application to external users over the internet.
When we create a Service with type LoadBalancer, Kubernetes automatically provisions an external load balancer from the cloud provider and assigns a public IP.
Incoming traffic hits this external IP, gets routed to a NodePort, and then forwarded to the appropriate Pods using ClusterIP.
It is commonly used for production applications that need public access.

How It Works
The flow is:
User sends request to external IP
Cloud Load Balancer receives it
Forwards to NodePort on cluster nodes
Kubernetes routes it to Pods via ClusterIP


```

apiVersion: v1
kind: Service
metadata:
  name: my-service
spec:
  type: LoadBalancer
  selector:
    app: my-app
  ports:
    - port: 80        # External port
      targetPort: 8080 # Pod port

```

ExternalName

In Kubernetes, an ExternalName Service is a type of Service that maps a Kubernetes service name to an external DNS name.
Instead of routing traffic to pods, it returns a CNAME record via the cluster DNS like CoreDNS.
This allows applications inside the cluster to access external services using an internal service name, without changing application code.

It doesn’t use kube-proxy and doesn’t provide load balancing — it works purely at the DNS level.

For example, if I have an external database like db.example.com, I can create an ExternalName service called my-db, and my pods can access it using my-db.default.svc.cluster.local.

```
apiVersion: v1
kind: Service
metadata:
  name: my-external-service
spec:
  type: ExternalName
  externalName: example.com

```


### NodePort vs LoadBalancer vs Ingress for exposing apps.


### Explain `port`, `targetPort`, and `nodePort` in a Service.

1️⃣ targetPort (Pod side)
This is the actual port on the container (Pod) where your app is running.
Kubernetes forwards traffic to this port inside the Pod.
👉 Example:
```targetPort: 8080```
Your application is listening on port 8080 inside the container.

2️⃣ port (Service internal port)
This is the port exposed by the Service inside the cluster.
Other services/pods communicate using this port.
👉 Example:
```port: 80```
So inside the cluster:
```http://my-service:80```
Kubernetes maps:
```Service:80 → Pod:8080```


3️⃣ nodePort (External access via node)
This is the port exposed on each Node's IP.
Used only with NodePort or LoadBalancer Services.
Range: 30000–32767
👉 Example:
```nodePort: 30007```
External access:
```http://<NodeIP>:30007```

```

apiVersion: v1
kind: Service
metadata:
  name: my-service
spec:
  type: NodePort
  selector:
    app: my-app
  ports:
    - port: 80
      targetPort: 8080
      nodePort: 30007
```

### How do Kubernetes Services find Pods?
### How does kubernetes services linked to the pods ? _(labels & selectors)_

Kubernetes Services find Pods using label selectors. Any Pod whose labels match the Service’s selector becomes part of that Service.
A Service is linked to Pods via label selectors. Kubernetes continuously matches the selector with Pod labels and updates the Service’s endpoints dynamically.

Every Pod has key-value labels:
```
metadata:
  labels:
    app: my-app
    env: prod
```
Service defines a selector
```
spec:
  selector:
    app: my-app
```

What happens internally

Kubernetes creates EndpointSlices for the Service.
These contain:
Pod IP addresses
Target ports
👉 Example (conceptual):

```
Service: my-service
Endpoints:
  - 10.244.1.5:8080
  - 10.244.1.6:8080

```


kube-proxy uses this to route traffic.

### How do containers communicate inside Kubernetes?

“In Kubernetes, container communication happens at three levels.
First, containers within the same Pod communicate using localhost, because they share the same network namespace and IP.
Second, for communication between Pods, Kubernetes uses Services. Each Pod gets its own IP, but since Pod IPs are dynamic, Services provide a stable DNS name and load balancing.
Third, across nodes, Kubernetes uses CNI plugins like Calico or Flannel to create a flat network, so all Pods can talk to each other directly.
Additionally, Kubernetes uses CoreDNS for service discovery via DNS.
So overall, communication is seamless using localhost, Services, and cluster networking.”

### - How does one namespace pod communicate with another namespace?

pods across namespaces can communicate by default because namespaces provide logical isolation, not network isolation.
The recommended way is through a Service using DNS like <service-name>.<namespace>.svc.cluster.local.
Kubernetes DNS resolves this and routes traffic to the correct pods.
This communication can be restricted using NetworkPolicies if needed.

How exactly does it resolve?
“Kubernetes has an internal DNS (CoreDNS) that maps Service names to cluster IPs, which then forward traffic to the backend pods.”


### Why does a Service work inside a cluster but not across namespaces?