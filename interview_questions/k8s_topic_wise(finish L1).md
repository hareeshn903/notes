
# 🔹 Kubernetes Architecture & Core Concepts
- Can you write deployment or service files for Kubernetes or similar CI/CD setups, or Docker files?

- What are the key components of Kubernetes?
- Explain Kubernetes objects or components.
- What are Namespaces and why use them?
Why should we prefer Kubernetes? - Why do we use Kubernetes?
- Control Plane vs Worker Nodes
- Explain Kubernetes architecture and it's Components
- What is the role of the kubelet?
- In Kubernetes: what is your role in the project?  Kubernetes in your project — what exactly do you handle?
- What type of Kubernetes have you worked with? (AKS, EKS, etc.)
- What is the EKS plugin? (You clarified EKS add-ons)
- What is Karpenter?
- kubectl get, describe, create vs apply
- Finalizers
- PV vs PVC
- How I used ArgoCD for GitOps

---

# 🔹 Pods, Scheduling & Lifecycle

- What is a Deployment in Kubernetes? Write a `deployment.yaml` for deploying 3 replicas of an Nginx container.
- Explain the Kubernetes controllers: Deployment, StatefulSet, ReplicaSet, and DaemonSet.
- What is the difference between Deployment and ReplicaSet?(What are Deployments and ReplicaSets?)
- What is a ReplicaSet?
- What is a StatefulSet in Kubernetes?
- What is a DaemonSet, and how is it used?
- What are the types of Deployments in Kubernetes? What is a DaemonSet used for?
- What is the difference between a DaemonSet and other Kubernetes controllers (e.g., Deployment, StatefulSet)?
- What is a Pod vs ReplicaSet vs Deployment?
- What is a Pod, Deployment, ReplicaSet, and Service?
- 


---

# 🔹 Workloads (Deployment, StatefulSet, ReplicaSet, DaemonSet)
- StatefulSet vs Deployment vs DaemonSet
- What is a Deployment in Kubernetes?
- What is the difference between Stateful and Stateless applications? Give examples.
- Deployment vs StatefulSet?
- • Deployment vs StatefulSet vs DaemonSet — real-life use cases?
- How do you manage stateful applications in Kubernetes?
- What is a Kubernetes Deployment vs StatefulSet?
    
- What's the difference between ReplicaSet, Deployment and StatefulSet?
    
- What is the difference between Deployment and StatefulSet in Kubernetes?
    
- What is the difference between Deployment and StatefulSet?
    
- What is a Deployment in Kubernetes and how do you configure it?
    
- What is a DaemonSet?
    
- What is a DaemonSet and where is it used?
    

---

# 🔹 Services, Networking & Communication
- What is Kubernetes By Default Service?
- What is a Service in Kubernetes, and what are the types of Services?
- When would you use each type of Kubernetes Service (ClusterIP, NodePort, LoadBalancer, ExternalName)?
- Explain `port`, `targetPort`, and `nodePort` in a Kubernetes service.
- How would you expose a Kubernetes application externally?
- What is the use of Ingress and Ingress Controller in Kubernetes?
- What is a LoadBalancer and an Ingress Controller in Kubernetes?
- What is the difference between a LoadBalancer and an Ingress Controller?
- Explain Kubernetes services?
- How does Ingress work?
- Difference between NodePort, ClusterIP, and LoadBalancer.
- How do you expose a Pod to the internet?
- How do you expose a service externally?
- • How do you expose a service externally?
- How does kubernetes services find Pods?
  - How the app is exposed? (discussed my Ingress setup)  
- How does kubernetes services linked to the pods ?
    
- How does one namespace pod find another namespace?
    
- How do containers communicate inside Kubernetes?
    
- What are Services in Kubernetes
    
- Types of Kubernetes Services
    
- What is Ingress and Ingress Controller
    
- How do you set up an Ingress Controller
    
- How does traffic flow from domain → Ingress → Service → Pod
    
- Difference between LoadBalancer Service and Ingress
    
- What is ClusterIP and NodePort in Kubernetes?
    
- Can you explain Kubernetes Services in detail?
    
- What are Kubernetes Services?
    
- What are the types of Services in Kubernetes and how do they work?
    
- What does an Ingress controller do?
    
- What is the difference between Ingress and Gateway API?
    
- Service works inside cluster but not across namespaces. Why?
    
- NodePort service created, but unreachable from outside. Why?
    
- How do you troubleshoot network issues (DNS, CNI, Ingress)?
    

---
# Advanced Concepts

- What are Kubernetes Probes (Liveness, Readiness, Startup)?
- What is readiness in Kubernetes?
- What are readiness and liveness probes?
- What is taint, toleration, and node affinity?
- If you have one Kubernetes node running two pods (Pod-A and Pod-B), and you want your application to always run on Pod-B, how would you ensure that?
- How Does Kubernetes Pull Images for New Applications?
- How Does Kubernetes Pull Docker Images?
- What is Port Forwarding in Kubernetes
---
# 🔹 Autoscaling
- How Does Scaling Work in Kubernetes?
- Horizontal Pod Autoscaler vs Vertical Pod Autoscaler?
- What is the difference between Horizontal Pod Autoscaler (HPA) and Vertical Pod Autoscaler (VPA) in Kubernetes?
- What is a Horizontal Pod Autoscaler (HPA)?
- List the commands to scale pods in Kubernetes.
- How do you limit resources (CPU/memory) for Pods?
- Do you only update Docker images in Kubernetes, or do you also update replicas, storage levels, and CPU allocation?
- If Developers say there is a latency issue, how would you reduce the latency to Kubernetes pods?
- How do you handle scaling challenges during peak traffic?
- 🔷 5. EKS pods are not autoscaling even under high traffic. What could be the issue?
- 🔷 7. CPU usage is continuously high in your cluster. What actions will you take?
- Autoscaling isn’t kicking in despite the CPU crossing the threshold. What’s broken — metrics, HPA, or API server?
- How does Horizontal Pod Autoscaler work internally?
    
- Kubernetes scaling vs autoscaling — explain.
    
- What is Kubernetes scaling and autoscaling?
    
- What are autoscaling methods in Kubernetes?
    
- How do you implement autoscaling (HPA/VPA/Cluster Autoscaler)?
    
- How do you configure autoscaling (HPA, VPA, Cluster Autoscaler, Karpenter)?
    
- When would you choose Vertical Pod Autoscaler over HPA, and why?
    
- HPA is configured, but replicas stay at 1 - even under load. What could be wrong?
    
- What is the node scale-up and scale-down time? How do you define minimum and maximum nodes?
    
- Can you write a Kubernetes manifest file for a Horizontal Pod Autoscaler (HPA)?
    
- How do you configure Horizontal Pod Autoscaler (HPA) in GKE?
    

---

# 🔹 Configuration & Secrets

- What is the difference between ConfigMap and Secret in Kubernetes?
    
- What is a Kubernetes Secret?
    
- What are Kubernetes Secrets?
    
- How do you call/use secrets in Kubernetes deployments?
    
- How do you handle secrets securely in Kubernetes or Terraform?
    
- How do you manage secrets securely in Kubernetes (Vault / Sealed Secrets)?
    
- How do you secure Secrets in Kubernetes and integrate with GCP Secret Manager?
    
- How do you securely manage secrets and certificates in AKS using Azure Key Vault and CSI drivers?
    

---

# 🔹 Scheduling Constraints (Affinity, Taints)

- Taints and Tolerations
    
- Node Affinity
    
- Taints & Tolerations (deeper discussion)
    
- What are taints and tolerations in Kubernetes, and when would you use them?
    
- What are taints and tolerations in Kubernetes?
    
- How do you configure node affinity, taints, and tolerations?
    

---

# 🔹 Deployments & Release Strategies
- What is the Default Deployment Method in Kubernetes?
- K8s rolling updates via YAML - zero downtime approach.
- What are the deployment strategies in Kubernetes, and which one have you worked with?
- Explain rolling update, blue-green, and canary deployment.
- RollingUpdate vs Recreate strategy — when to use which?
- How do you approach zero-downtime deployments in production?
- 🔷 6. How do you ensure zero-downtime deployments for critical applications?
- How would you ensure zero-downtime deployment during a critical update?
- How do you perform rolling updates and rollbacks safely?
- Explain the CI/CD flow you used to deploy apps on Kubernetes.
- What security tools or scans did you use in pipelines?
- How do you prevent bad configs from reaching production in a CI/CD pipeline?
- Deployment strategies (Rolling, Blue-Green, Canary)
    
- How blue green deployment works
    
- How do you perform rolling updates & rollbacks in Kubernetes?
    
- How do you implement canary or blue-green deployments?
    
- How do you implement blue-green or canary deployments in AKS using Helm or service mesh (e.g., Istio)?
    

---

# 🔹 Observability, Logging & Monitoring
- How Would You See Logs Inside a Pod?
- How do you monitor logs in an EKS cluster?
- How do you view logs and events of a Pod?
- How do you monitor an app using Prometheus & Grafana
- 9️⃣ How to monitor an app using Prometheus & Grafana
- Centralized monitoring for multi-cluster K8s - your toolchain?
- Kubernetes nodes are healthy. But kubectl logs is blank for critical pods. What’s happening?
- How do you check which Pods are consuming high memory or CPU?
- How do you perform health checks for Pods and Nodes in live environments?
- A service is failing — how do you find logs in Kubernetes
    
- What log collection architecture are you using in your cluster?
    
- What observability stack have you implemented in your current project?
    
- How do you onboard a new application into your observability platform?
    
- What Datadog pods get created when you deploy the Datadog agent?
    
- How do you configure logs, metrics, and traces for a new service?
    
- What tools do you use for log management and why?
    
- How do you tune Fluent Bit / Datadog Agent for performance issues?
    
- What are the most important dashboards for SRE monitoring?
    
- How do you design a scalable cluster logging system?
    

---

# 🔹 Troubleshooting & Debugging
- If Pods are Running but the Application isn’t Working, How Would You Troubleshoot?
- How Would You Confirm That a Request is Reaching a Pod?
- What Happens if a Pod Fails—How Does Kubernetes Respond?
- What is a CrashLoopBackOff error in Kubernetes?
- What are common Kubernetes errors you’ve faced (like CrashLoopBackOff, ImagePullError), and how did you resolve them?
- How do you troubleshoot ImagePullBackOff and CrashLoopBackOff errors in Kubernetes?
- You created pods, but kubectl get pods doesn’t show them. What could be the issue?
- Prod users reporting 504s, but ELB health checks are green. Explain your isolation + triage process.
- A production pod was OOMKilled, but you can’t find logs. Walk through a forensic-level debug.
- Kernel panic on a GKE node mid-deploy. How do you identify if it’s infra, base image, or app-level?
- One app’s pods restart daily at 2 AM — no crash loops, no OOMs.  
    Where do you start: CronJobs, readiness probes, HPA events, or the node scheduler?
- A pod is in CrashLoopBackOff — how do you debug it?
- A pod is stuck in CrashLoopBackOff. Logs show failure during initialization — how do you troubleshoot?
- How do you troubleshoot Pod in CrashLoopBackOff?
- A Pod is stuck in Terminating state for a long time — what’s happening and how to fix it?
- • Your Pod is restarting frequently. How do you identify the root cause?
- • A Deployment is stuck in a "progressing" state. How do you troubleshoot this?
- • How do you debug a CrashLoopBackOff issue?
- • A Persistent Volume is not attaching. What is your troubleshooting approach?
- • How do you handle failed DaemonSet pods?
- 🔷 13. Application pods are running but the service is not reachable. What do you check?
- 🔷 15. Kubernetes pods are in CrashLoopBackOff. What is your root-cause approach?
- A critical deployment failed halfway — how would you mitigate the issue?
- Your application is experiencing intermittent performance issues — what steps do you take to troubleshoot?
- Kubernetes pods keep restarting unexpectedly — how would you debug and fix the problem?
- During high traffic, your app shows intermittent 502 errors through Ingress — how do you debug?
- What’s your process for debugging slow or failing services?
- 🔷 1. How do you troubleshoot a failing EKS deployment?
- How do you debug a CrashLoopBackOff or pending pod in Kubernetes?
    
- How do you troubleshoot CrashLoopBackOff and ImagePullBackOff?
    
- If a pod crashes, how would you fix/debug it?
    
- How do you troubleshoot a production incident in Kubernetes?
    
- Kubernetes problem-solving scenario approach daily in your project.
    
- How do you identify a crash loop in Kubernetes?
    
- Deployment applied, but no pods are created. What to check first?
    
- Image updated in the registry, but pods pull the old one. Why?
    
- Using emptyDir, but data disappears after pod restart. Why?
    
- How do you handle image-pull issues in Kubernetes?
    

---

# 🔹 Cluster Design, HA & Production
- Difference between Pod, Node, and Cluster?
- Explain the roles of the Kubernetes master node and worker node.
- What is the Role of the Scheduler in Kubernetes?
- What is Kube-Proxy?
- How many master nodes would you choose if you have to design a self-hosted Kubernetes cluster?
- Why is it recommended to have 3 master nodes?
- What happens if a node goes down, what would happen to the pod? What would be your action for it?
- Imagine in your company Kubernetes cluster running? for this one of node is unresponsive what kind of steps you take?
- A Node is in a NotReady state. What steps do you take to investigate?
- Explain your production-grade Kubernetes architecture.
    
- How do we make a Kubernetes cluster highly available?
    
- How do you design namespace isolation for multiple product teams in a shared cluster?
    
- What is your approach for multi-AZ node group architecture?
    
- How do you manage Kubernetes cluster upgrades?
    
- Explain how you would roll out cluster upgrades while ensuring zero service downtime.
    
- What preventive measures do you take to avoid node capacity exhaustion?
    
- What steps do you take to secure a Kubernetes cluster?
    

---

# 🔹 Resource Management & Performance

- How do you handle high resource utilization on nodes or containers?
    
- How do you prevent OOMKilled and CPU throttling issues?
    
- What node-level issues have you seen, and how did you fix them?
    
- How do you configure PodDisruptionBudgets (PDBs)?
    
- What is Pod Disruption Budget (PDB) in Kubernetes?
    

---

# 🔹 Service Mesh & Advanced Networking

- Explain the difference between service mesh (Istio/Linkerd) and an ingress controller.
    
- Have you implemented service mesh ingress? Explain how.
    

---

# 🔹 Helm
- What is Helm, and what are its components (Chart, Repository, Release)?
- What is the use of Helm in Kubernetes?
- What is the use of Helm in Kubernetes?
- Explain the folder structure of a basic Helm chart. What commands do you use to deploy with Helm?
- What is the difference between a Helm Chart, Release, and Repository?
- What is the role of values.yaml, and how do you override them?
- How do you manage multiple environment deployments using Helm?
- How do you debug a failed Helm release?
- How do you validate a Helm chart before deploying?
- How do you rollback a Helm release in case of deployment failure?
- Helm deployment fails due to insufficient cluster resources — what’s your approach?
- How do you share Helm charts internally?
- What is Helm chart testing and how is it done?
- What is Helm?
    
- Without Helm managing YAML is difficult — explain issues faced.
    
- One application deployment using Helm + Ansible — how do you approach it?
    
- How do you override values when using Helm charts + Ansible deployment for a Java application?
    
- Explain a typical Helm chart folder structure.
    
- How to use Helm for multiple environments and manage deployments?
    
- How to list Helm releases?
    

---

# 🔹 Commands & kubectl
- How Would You Determine Which Cluster You’re Connected To?
- How Do You List All Deployments with Specific Labels/Selectors?
- What is the command to access a pod and how can you define or create a Kubernetes class or object?
- What is a kubeconfig file?
- How can you connect to and interact with a Kubernetes cluster without using `kubectl`?  
    Or, if `kubectl` is not available, how can you access the cluster or get information from the API?
- How do various Kubernetes components interact when you run kubectl apply (for a Pod)? Explain the full flow in detail.
- You are seeing frequent API rate-limit errors from the K8s API server. How would you troubleshoot and resolve this?
- Command to run cluster and configuration in Kubernetes.
    
- Command to use resource (kubectl basic usage).
    
- kubectl get — environments/options used.
    
- Creating, updating, deleting Kubernetes resources.
    
- Debugging and logging commands in Kubernetes.
    
- Editing Kubernetes resources — command.
    
- Command for Kubernetes config file.
    
- kubectl copy command (pod ↔ local system).
    
- What are the common commands used in Kubernetes?
    
- How to check live logs of a pod?
    
- How to check node status in Kubernetes?
    
- What is the command to check resource utilization of a pod?
    
- How to check which pod is running on a particular node?
    

---

# 🔹 Practical / Scenario-Based Questions

- How do you debug random pod evictions in a busy Kubernetes cluster?
    
- How do you deploy a stateful app on Kubernetes?
    
- How would you deploy a three-tier application in Kubernetes?
    
- What are the prerequisites to upgrade a Kubernetes cluster?
    

---
# EKS / Cloud / Cluster Setup

- How do you set up Kubernetes on AWS using EKS?
- What is EKS and How Does it Work?
- How do you create and manage Kubernetes clusters (using tools like Terraform), and what are the master and worker nodes?
- What methods can be used to set up a Kubernetes cluster (e.g., kubeadm, kOps, managed services)? Which one would you choose and why?
- You’ve been asked to set up a highly available Kubernetes cluster for a production environment. How would you approach it?
- Multiple environments are running on EKS. How would you ensure that staging pods shut down on Saturday and allow developers to manually restart them?
- How do you upgrade a Kubernetes cluster? What’s the correct upgrade order?
- Have you upgraded any Kubernetes clusters?
- Your Kubernetes cluster’s etcd snapshot restore works, but pods don’t reconcile properly afterward.  
    What’s your recovery approach?
- You want to run workloads across multiple Kubernetes clusters for high availability — how would you design this?
---
# 🔹 Security, SSL & Certificates
- How Does Kubernetes Handle Secrets?
- What are ConfigMaps and Secrets?
- What is the difference between ConfigMap and Secret?
- Difference between ConfigMap and Secret.
- How Would You Give an S3-Accessing Pod Secure Access?
- What are some ways to secure Kubernetes secrets?
- What’s your strategy for managing secrets across environments?
- How do you manage secrets securely in Kubernetes?
- How do you secure traffic inside the cluster?
- How do you enforce tenant isolation in a multi-tenant Kubernetes setup?
- How do you secure secrets in Kubernetes, both at rest and in transit?
- SSL certificate management
    
- Certificate expiration handling
    

---

# 🔹 CI/CD, Terraform, AWS & General DevOps

- If you need to provision 100 EC2 instances and install an application on them, how would you accomplish that using your CI/CD pipeline?
    
- If you have an existing complex infrastructure and want to introduce Terraform, how would you bring Terraform in line with the current setup?
    
- How do you detect and resolve Terraform drift?
    
- How did you design a secure Amazon EKS cluster architecture?
    
- How do you set up an EKS cluster? What prerequisites and components are required?
    
- What is your CI/CD workflow for Kubernetes deployments?
    
- How does Argo CD enforce GitOps principles during deployments?
    
- What happens when manual changes are made directly in Kubernetes for resources managed by Argo CD?
    
- How would you configure Argo CD to manage multiple environments?
    
---
# Real-world / Scenario / Experience Questions

- Can you create a Pod without a Deployment?
- How would you explain a Kubernetes Pod in a way that a 5 year old children can understand?
- How do you deploy an application in a Kubernetes cluster?
- If Developers say there is a latency issue, how would you reduce the latency to Kubernetes pods?
- If a node goes down, what would happen to the pod? What would be your action for it?
- What improvements did you make to your Kubernetes setup based on real learnings?
- Can you walk through a real production incident you solved in Kubernetes?
- What steps do you take when pods are stuck in CrashLoopBackOff?
- How do you tune resource requests and limits based on real workloads?
- How do you handle scaling challenges during peak traffic?
- What’s your process for debugging slow or failing services?
- What improvements did you make to your Kubernetes setup based on real learnings?
- Describe the toughest situation you faced while working with Kubernetes. How did you identify and resolve the issue?
- Share a challenging DevOps automation problem you solved and the business impact it had.
- What was the last production issue you faced and how did you resolve it?
- What is the current version of K8s you are using in your project?
---

# 🔹 Linux, Networking & Misc

- What is sed, and why is the -E (or -G, based on system) option used?
- How do you communicate with a Jenkins server and a Kubernetes cluster?
- Can a VPC CIDR block go beyond /16? Why or why not?
    
- Suppose you are working with 30 AWS accounts, how are you managing those 30 accounts ?
    
- Give me one or two examples of what a load balancer does apart from distributing traffic.?
    
- How to check route entries in Kubernetes or node level?
    
- How to check disk utilization?
    
- How to set up password-less authentication in Linux?
    
- How to check server utilization in Linux?
    

---

# 🔹 Repeated / Duplicate Questions (kept verbatim)

- How do you debug a CrashLoopBackOff or pending pod in Kubernetes?
    
- How do you handle secrets securely in Kubernetes or Terraform?
    
- Explain the difference between service mesh (Istio/Linkerd) and an ingress controller.
    
- How do containers communicate inside Kubernetes?
    
- What's the difference between ReplicaSet, Deployment and StatefulSet?
    

