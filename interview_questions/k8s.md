- What is a Pod in Kubernetes? Create a `pod.yaml` for a single-container pod running Nginx.
- What is a Deployment in Kubernetes? Write a `deployment.yaml` for deploying 3 replicas of an Nginx container.
- What is a Service in Kubernetes, and what are the types of Services?
- When would you use each type of Kubernetes Service (ClusterIP, NodePort, LoadBalancer, ExternalName)?
- Explain `port`, `targetPort`, and `nodePort` in a Kubernetes service.
- How would you expose a Kubernetes application externally?
- What is Helm, and what are its components (Chart, Repository, Release)?
- What is the use of Ingress and Ingress Controller in Kubernetes?
- Explain the Kubernetes controllers: Deployment, StatefulSet, ReplicaSet, and DaemonSet.
- What is the difference between Deployment and ReplicaSet?
- What are Kubernetes Probes (Liveness, Readiness, Startup)?
- What is the difference between Stateful and Stateless applications? Give examples.
- What are Namespaces in Kubernetes?
- What is Port Forwarding in Kubernetes
- How do you deploy an application in a Kubernetes cluster?
- How do you communicate with a Jenkins server and a Kubernetes cluster?
- Do you only update Docker images in Kubernetes, or do you also update replicas, storage levels, and CPU allocation?
- What is a Deployment in Kubernetes?
- How would you explain a Kubernetes Pod in a way that a 5 year old children can understand?
- What are the types of Deployments in Kubernetes?
- What is a StatefulSet in Kubernetes?
- What is a DaemonSet, and how is it used?
- What is a Service in Kubernetes?
- What is a LoadBalancer and an Ingress Controller in Kubernetes?
- What is the difference between a LoadBalancer and an Ingress Controller?
- Can you create a Pod without a Deployment?
- How do you set up Kubernetes on AWS using EKS?
- What is EKS and How Does it Work?
- What are Deployments and ReplicaSets?
- What is the Role of the Scheduler in Kubernetes?
- What is Kube-Proxy?
- What is the Default Deployment Method in Kubernetes?
- What Happens if a Pod Fails—How Does Kubernetes Respond?
- How Does Kubernetes Handle Secrets?
- How Would You Give an S3-Accessing Pod Secure Access?
- How Does Scaling Work in Kubernetes?
- How Does Kubernetes Pull Images for New Applications?
- How Does Kubernetes Pull Docker Images?
- How Do You List All Deployments with Specific Labels/Selectors?
- How Would You See Logs Inside a Pod?
- How Would You Determine Which Cluster You’re Connected To?
- If Pods are Running but the Application isn’t Working, How Would You Troubleshoot?
- How Would You Confirm That a Request is Reaching a Pod?
- K8s rolling updates via YAML - zero downtime approach.
- Centralized monitoring for multi-cluster K8s - your toolchain?
- Have you upgraded any Kubernetes clusters?
- What are common Kubernetes errors you’ve faced (like CrashLoopBackOff, ImagePullError), and how did you resolve them?
- What is the command to access a pod and how can you define or create a Kubernetes class or object?
- Explain the folder structure of a basic Helm chart. What commands do you use to deploy with Helm?
- How do you monitor logs in an EKS cluster?
- What are some ways to secure Kubernetes secrets?
- How do you create and manage Kubernetes clusters (using tools like Terraform), and what are the master and worker nodes?
- What is Kubernetes architecture?
- Deployment vs StatefulSet?
- What is Kubernetes Architecture?
- Difference between Pod, Node, and Cluster?
- Horizontal Pod Autoscaler vs Vertical Pod Autoscaler?
- If Developers say there is a latency issue, how would you reduce the latency to Kubernetes pods?
- If a node goes down, what would happen to the pod? What would be your action for it?
- What are ConfigMaps and Secrets?
- What is a CrashLoopBackOff error in Kubernetes?
- You created pods, but kubectl get pods doesn’t show them. What could be the issue?
- List the commands to scale pods in Kubernetes.
- Multiple environments are running on EKS. How would you ensure that staging pods shut down on Saturday and allow developers to manually restart them?
- What is the difference between a DaemonSet and other Kubernetes controllers (e.g., Deployment, StatefulSet)?
- Kubernetes nodes are healthy. But kubectl logs is blank for critical pods. What’s happening?
- Autoscaling isn’t kicking in despite the CPU crossing the threshold. What’s broken — metrics, HPA, or API server?
- Prod users reporting 504s, but ELB health checks are green. Explain your isolation + triage process.
- A production pod was OOMKilled, but you can’t find logs. Walk through a forensic-level debug.
- Kernel panic on a GKE node mid-deploy. How do you identify if it’s infra, base image, or app-level?
- How do you upgrade a Kubernetes cluster? What’s the correct upgrade order?
- How many master nodes would you choose if you have to design a self-hosted Kubernetes cluster?
- Why is it recommended to have 3 master nodes?
- Explain Kubernetes architecture ?
- Imagine in your company Kubernetes cluster running? for this one of node is unresponsive what kind of steps you take?
- Explain Kubernetes services?
- What is kubectl?
- What is a deployment YAML file? Explain horizontal and vertical pod scaling.
- What is readiness in Kubernetes?
- What are the key components of Kubernetes?
- Explain the roles of the Kubernetes master node and worker node.
- What are the deployment strategies in Kubernetes, and which one have you worked with?
- What is a ReplicaSet?
- Have you worked with Kubernetes?
- What is the difference between Horizontal Pod Autoscaler (HPA) and Vertical Pod Autoscaler (VPA) in Kubernetes?
- How do you troubleshoot ImagePullBackOff and CrashLoopBackOff errors in Kubernetes?
- One app’s pods restart daily at 2 AM — no crash loops, no OOMs.  
    Where do you start: CronJobs, readiness probes, HPA events, or the node scheduler?
- Your Kubernetes cluster’s etcd snapshot restore works, but pods don’t reconcile properly afterward.  
    What’s your recovery approach?
- You’ve been asked to set up a highly available Kubernetes cluster for a production environment. How would you approach it?
- How can you connect to and interact with a Kubernetes cluster without using `kubectl`?  
    Or, if `kubectl` is not available, how can you access the cluster or get information from the API?
- What methods can be used to set up a Kubernetes cluster (e.g., kubeadm, kOps, managed services)? Which one would you choose and why?
What is the use of Helm in Kubernetes?  
What is Docker?  
What is the use of Helm in Kubernetes?  
What is Docker?

1. Can you walk through a real production incident you solved in Kubernetes?
2. How do you tune resource requests and limits based on real workloads?
3. What steps do you take when pods are stuck in CrashLoopBackOff?
4. How do you secure traffic inside the cluster?
5. How do you approach zero-downtime deployments in production?
6. What’s your strategy for managing secrets across environments?
7. How do you handle scaling challenges during peak traffic?
8. What’s your process for debugging slow or failing services?
9. How do you manage stateful applications in Kubernetes?
10. What improvements did you make to your Kubernetes setup based on real learnings?  
    🔷 1. How do you troubleshoot a failing EKS deployment?  
    🔷 5. EKS pods are not autoscaling even under high traffic. What could be the issue?  
    🔷 6. How do you ensure zero-downtime deployments for critical applications?  
    🔷 7. CPU usage is continuously high in your cluster. What actions will you take?  
    🔷 13. Application pods are running but the service is not reachable. What do you check?  
    🔷 15. Kubernetes pods are in CrashLoopBackOff. What is your root-cause approach?
11. Explain Kubernetes objects or components.
12. If you have one Kubernetes node running two pods (Pod-A and Pod-B), and you want your application to always run on Pod-B, how would you ensure that?
13. Have you worked with an Ingress Controller? What does it do?  
    Since both Ingress and Load Balancers seem to serve similar purposes, why do we need both? Can we rely on only one?
14. Describe the toughest situation you faced while working with Kubernetes. How did you identify and resolve the issue?  
    🔹 What is the difference between Horizontal Pod Autoscaler (HPA) and Vertical Pod Autoscaler (VPA) in Kubernetes?
15. How to create custom image in Docker ?
16. Elaborate Docker file.
17. What is the prerequisites of "docker build" command?
18. How do copy file from the container to host ?
19. what if we put "COPY ." ? what will happen in background? what is the source and destination here ?
A pod is in CrashLoopBackOff — how do you debug it?  
• Deployment vs StatefulSet vs DaemonSet — real-life use cases?  
• How do you expose a service externally?  
• How do ConfigMaps and Secrets work?  
• RollingUpdate vs Recreate strategy — when to use which?
- What is the current version of K8s you are using in your project?
- What was the last production issue you faced and how did you resolve it?
- A pod is stuck in CrashLoopBackOff. Logs show failure during initialization — how do you troubleshoot?
- How do you enforce tenant isolation in a multi-tenant Kubernetes setup?
- During high traffic, your app shows intermittent 502 errors through Ingress — how do you debug?
- How do you prevent bad configs from reaching production in a CI/CD pipeline?
- How would you ensure zero-downtime deployment during a critical update?
- Helm deployment fails due to insufficient cluster resources — what’s your approach?
- How do you share Helm charts internally?
- What is Helm chart testing and how is it done?
How do various Kubernetes components interact when you run kubectl apply (for a Pod)? Explain the full flow in detail.  
You want to run workloads across multiple Kubernetes clusters for high availability — how would you design this?  
You are seeing frequent API rate-limit errors from the K8s API server. How would you troubleshoot and resolve this?  
How do you secure secrets in Kubernetes, both at rest and in transit?  
A Pod is stuck in Terminating state for a long time — what’s happening and how to fix it?  
How do you validate a Helm chart before deploying?  
How do you rollback a Helm release in case of deployment failure?
• Your Pod is restarting frequently. How do you identify the root cause?  
• A Deployment is stuck in a "progressing" state. How do you troubleshoot this?  
• How do you debug a CrashLoopBackOff issue?  
• How do you check which Pods are consuming high memory or CPU?  
• A Node is in a NotReady state. What steps do you take to investigate?  
• Your application is not accessible through the service. What will you check?  
• How do you handle failed DaemonSet pods?  
• A Persistent Volume is not attaching. What is your troubleshooting approach?  
• How do you perform rolling updates and rollbacks safely?  
• How do you perform health checks for Pods and Nodes in live environments?
• What is the role of values.yaml, and how do you override them?  
• How do you manage multiple environment deployments using Helm?  
• How do you debug a failed Helm release?  
• What is the difference between a Helm Chart, Release, and Repository?
• What is a Pod vs ReplicaSet vs Deployment?  
• What is a DaemonSet used for?  
• What is the difference between ConfigMap and Secret?  
• How does Ingress work?
17. A critical deployment failed halfway — how would you mitigate the issue?  
18. Your application is experiencing intermittent performance issues — what steps do you take to troubleshoot?  
19. Kubernetes pods keep restarting unexpectedly — how would you debug and fix the problem?  
20. Share a challenging DevOps automation problem you solved and the business impact it had.
6️⃣ Why should we prefer Kubernetes?  
7️⃣ What is a Pod?  
8️⃣ Difference between a Container and an Image  
9️⃣ How to monitor an app using Prometheus & Grafana  
🔟 What is Kubernetes By Default Service?  
1️⃣1️⃣ Can you briefly explain Kubernetes architecture?
- Explain the CI/CD flow you used to deploy apps on Kubernetes.
- What security tools or scans did you use in pipelines?
- What is a Pod, Deployment, ReplicaSet, and Service?
- What are Namespaces and why use them?
- Difference between ConfigMap and Secret.
- How do you expose a Pod to the internet?
- Difference between NodePort, ClusterIP, and LoadBalancer.
- What is a DaemonSet and StatefulSet?
- Explain rolling update, blue-green, and canary deployment.
- How do you view logs and events of a Pod?
- What are readiness and liveness probes?
- How do you troubleshoot Pod in CrashLoopBackOff?
- What is a kubeconfig file?
- What is a Horizontal Pod Autoscaler (HPA)?
- How do you limit resources (CPU/memory) for Pods?
- What is taint, toleration, and node affinity?
- How do you manage secrets securely in Kubernetes?

+++++++++++++++++++++++++++++++++++++++++++++++++++

https://github.com/hclpandv/devops-training-material/blob/main/kubernetes/k8s-interview-questions.md

How does Horizontal Pod Autoscaler work internally? #autoscale   
Taints and Tolerations  
Node Affinity  
Kubernetes Architecture Components  
Control Plane vs Worker Nodes
Deployment strategies (Rolling, Blue-Green, Canary)  
What is a DaemonSet?  
Taints & Tolerations (deeper discussion)  
Kubernetes Architecture
How does kubernetes services find Pods?
How does kubernetes services linked to the pods ? 
How does one namespace pod find another namespace?
What is a Kubernetes Deployment vs StatefulSet? 
How does Service & Ingress work in Kubernetes? 
What is the difference between ConfigMap and Secret in Kubernetes?
How do you perform rolling updates & rollbacks in Kubernetes?
What are taints and tolerations in Kubernetes, and when would you use them?
- How does Kubernetes schedule a Pod? Walk me through the control-plane process.
- How do you debug a CrashLoopBackOff or pending pod in Kubernetes?
- How do you handle secrets securely in Kubernetes or Terraform?
- Explain the difference between service mesh (Istio/Linkerd) and an ingress controller.
- How do containers communicate inside Kubernetes?
- What's the difference between ReplicaSet, Deployment and StatefulSet?
- How do you debug a CrashLoopBackOff or pending pod in Kubernetes?
- How do you handle secrets securely in Kubernetes or Terraform?
- Explain the difference between service mesh (Istio/Linkerd) and an ingress controller.
- How do containers communicate inside Kubernetes?
- What's the difference between ReplicaSet, Deployment and StatefulSet?
SSL certificate management  
Certificate expiration handling  
Common production issues and resolutions
If a pod crashes, how would you fix/debug it?
How blue green deployment works
✅ How do you debug random pod evictions in a busy Kubernetes cluster?  
✅ Explain how you would roll out cluster upgrades while ensuring zero service downtime.  
✅ How do you design namespace isolation for multiple product teams in a shared cluster?  
✅ When would you choose Vertical Pod Autoscaler over HPA, and why?
20 A service is failing — how do you find logs in Kubernetes
- How did you design a secure Amazon EKS cluster architecture?
- What is the node scale-up and scale-down time? How do you define minimum and maximum nodes?
- Can you write a Kubernetes manifest file for a Horizontal Pod Autoscaler (HPA)?
What are Services in Kubernetes
Types of Kubernetes Services
What is Ingress and Ingress Controller
How do you set up an Ingress Controller
How does traffic flow from domain → Ingress → Service → Pod
Difference between LoadBalancer Service and Ingress
17. Explain your production-grade Kubernetes architecture.
18. How do you troubleshoot CrashLoopBackOff and ImagePullBackOff?
19. What happens when readiness/liveness probes fail?
20. How do you implement autoscaling (HPA/VPA/Cluster Autoscaler)?
21. How do you manage secrets securely in Kubernetes (Vault / Sealed Secrets)?
- Pod stuck in ContainerCreating. What’s a common cause?  
    A: Because the image cannot be pulled (auth issues, wrong tag, private repo).  
    Checking events will usually show image pull errors.
- Pod has no memory limit but still gets OOMKilled - why?  
    A: Because the pod becomes BestEffort QoS. If the node runs out of memory, kubelet OOMKills BestEffort pods first to free memory.
- HPA is configured, but replicas stay at 1 - even under load. What could be wrong?  
    A: Most common reason ➜ Metrics Server isn’t reporting usage.  
    No metrics = HPA has no data ➜ no scaling.
- Service works inside cluster but not across namespaces. Why?  
    A: Because the app may be using the short DNS name, not the full format: service.namespace.svc.cluster.local
- Deployment applied, but no pods are created. What to check first?  
    A: Check admission webhooks. A failing validation/mutating webhook can reject pod creation silently until you inspect events.
- NodePort service created, but unreachable from outside. Why?  
    A: The node firewall / security group / NACL is likely blocking the port. Kubernetes exposes it, but the OS or cloud layer may still drop traffic.
- Image updated in the registry, but pods pull the old one. Why?  
    A: Because imagePullPolicy is IfNotPresent, or Deployment uses an immutable digest. Nodes simply reuse the cached image.
- Using emptyDir, but data disappears after pod restart. Why?  
    A: Because emptyDir is deleted whenever a pod stops. It’s only for temporary, non-persistent data.
- Liveness probe keeps killing the pod. What should you look at first?  
    A: Check whether the probe path/port is correct or if the startup time is too slow. A slow container + aggressive probe = unnecessary restarts.
	What are Services in Kubernetes
Types of Services
What is Ingress & Ingress Controller
How to set it up
Traffic flow: Domain → Ingress → Service → Pod
Load Balancer Service vs Ingress
- How do you troubleshoot a production incident in Kubernetes?
- What log collection architecture are you using in your cluster?
- How do you handle high resource utilization on nodes or containers?
- How do you configure autoscaling (HPA, VPA, Cluster Autoscaler, Karpenter)?
- What preventive measures do you take to avoid node capacity exhaustion?
- What observability stack have you implemented in your current project?
- How do you onboard a new application into your observability platform?
- What Datadog pods get created when you deploy the Datadog agent?
- How do you configure logs, metrics, and traces for a new service?
- Have you implemented service mesh ingress? Explain how.
- What tools do you use for log management and why?
- How do you tune Fluent Bit / Datadog Agent for performance issues?
- What is Kubernetes resource requests and limits, and how do you set them?
- Describe a real production outage you handled and how you fixed it.
- How do you prevent OOMKilled and CPU throttling issues?
- How do you configure node affinity, taints, and tolerations?
- What is your approach for multi-AZ node group architecture?
- How do you manage Kubernetes cluster upgrades?
- What is the difference between Ingress and Gateway API?
- How do you configure SLOs/SLIs and error budget policies?
- How do you detect and resolve Terraform drift?
- What steps do you take to secure a Kubernetes cluster?
- What is your CI/CD workflow for Kubernetes deployments?
- How do you implement canary or blue-green deployments?
- How do you handle image-pull issues in Kubernetes?
- What are the most important dashboards for SRE monitoring?
- How do you configure PodDisruptionBudgets (PDBs)?
- How do you design a scalable cluster logging system?
- What node-level issues have you seen, and how did you fix them?
- How do you troubleshoot network issues (DNS, CNI, Ingress)?
- How do you implement blue-green or canary deployments in AKS using Helm or service mesh (e.g., Istio)?
- What are liveness and readiness probes? Give a practical example of how incorrect config can lead to downtime.
- How do you securely manage secrets and certificates in AKS using Azure Key Vault and CSI drivers?
- What is ClusterIP and NodePort in Kubernetes?
- Can you explain Kubernetes Services in detail?
- What is the difference between Deployment and StatefulSet in Kubernetes?
- How do you configure Horizontal Pod Autoscaler (HPA) in GKE?
- How do you secure Secrets in Kubernetes and integrate with GCP Secret Manager?
- How do you deploy a stateful app on Kubernetes?
31. What type of Kubernetes have you worked with? (AKS, EKS, etc.)
32. What is the EKS plugin? (You clarified EKS add-ons)
33. What is Karpenter?
44. Kubernetes in your project — what exactly do you handle?
45. What is a Kubernetes Secret? (repeat question)
46. Kubernetes scaling vs autoscaling — explain
1. How to debug issues in Kubernetes?
2. What is an OOMKilled error in Kubernetes?
3. In Kubernetes: what is your role in the project?    
4. What are Kubernetes Secrets?    
5. How do you call/use secrets in Kubernetes deployments?    
6. What is Kubernetes scaling and autoscaling?
7. What is Helm?  
8. Without Helm managing YAML is difficult — explain issues faced.    
9. One application deployment using Helm + Ansible — how do you approach it?
14. How do you override values when using Helm charts + Ansible deployment for a Java application?    
2. How are your day-to-day activities as a DevOps Engineer?
3. What are prerequisites to upgrade a Kubernetes cluster?   
4. What is Pod Disruption Budget (PDB) in Kubernetes?    
5. How do we make a Kubernetes cluster highly available?
**Explain a typical Helm chart folder structure.**
**How to use Helm for multiple environments and manage deployments?**
**How to list Helm releases?**
**What is a Deployment in Kubernetes and how do you configure it?**
**What are the types of Services in Kubernetes and how do they work?**
**How do you set up an EKS cluster? What prerequisites and components are required?**
**What is the role of the kubelet?**
**Write a simple Pod YAML to run an Nginx container.**
**Explain a typical Helm chart folder structure.**
**How to use Helm for multiple environments and manage deployments?**
**How to list Helm releases?**
19. Kubernetes problem-solving scenario approach daily in your project.
20. Why do we use Kubernetes?
21. Command to run cluster and configuration in Kubernetes.
22. Command to use resource (kubectl basic usage).
23. kubectl get — environments/options used.
24. Creating, updating, deleting Kubernetes resources.
25. Debugging and logging commands in Kubernetes.
26. Editing Kubernetes resources — command.
27. Command for Kubernetes config file.    
28. kubectl copy command (pod ↔ local system).
1. If you need to provision 100 EC2 instances and install an application on them, how would you accomplish that using your CI/CD pipeline?  
2. If you have an existing complex infrastructure and want to introduce Terraform, how would you bring Terraform in line with the current setup?    
3. What is sed, and why is the -E (or -G, based on system) option used?    
4. How would you configure Argo CD to manage multiple environments?    
5. Are Docker image layers read-only or read-write, and how does that work?  
6. Can a VPC CIDR block go beyond /16? Why or why not?  
7. What metrics do you typically monitor in a CI/CD system, and how do you alert on failures?  
8. How does Argo CD enforce GitOps principles during deployments?  
9. What happens when manual changes are made directly in Kubernetes for resources managed by Argo CD?   
10. Suppose you are working with 30 AWS accounts, how are you managing those 30 accounts ?  
11. Give me one or two examples of what a load balancer does apart from distributing traffic.?
 9. What is the difference between Deployment and StatefulSet?    
10. Do you know how to cordon a node?    
11. What are autoscaling methods in Kubernetes?
12. How do you identify a crash loop in Kubernetes?   
13. If nodes are in NotReady state — what are possible reasons?  
14. How to check route entries in Kubernetes or node level?  
15. How to check disk utilization?  
16. Explain Kubernetes architecture.   
17. What are Kubernetes Services?  
18. How to check which pod is running on a particular node?   
19. What is the command to check resource utilization of a pod?    
20. How to set up password-less authentication in Linux?   
21. How to check server utilization in Linux?    
22. If pods are in Pending state — what are the reasons?    
23. What are the common commands used in Kubernetes?    
24. How to check live logs of a pod?    
25. How to check node status in Kubernetes?
15. What is a DaemonSet and where is it used?
16. What are taints and tolerations in Kubernetes?
17. What does an Ingress controller do?
18. Explain Common Kubernetes pod errors .
19. How would you deploy a three-tier application in Kubernetes?

+++++++++++++++++++++++++++++++++++++++++++++++++++

