4. How do you debug a CrashLoopBackOff or pending pod in Kubernetes?
5. What happens when a Terraform apply fails halfway?
6. How do you handle secrets securely in Kubernetes or Terraform?
7. Explain state locking in Terraform - why is it important?
8. How would you design logging and monitoring for a microservices architecture?
9. How do you reduce AWS costs without compromising performance?
10. How do you secure a CI/CD pipeline?
11. What is GitOps and how is it different from traditional CI/CD?
12. How would you recover from a failed deployment in production?
13. Explain the difference between service mesh (Istio/Linkerd) and an ingress controller.
14. How do containers communicate inside Kubernetes?
15. What's the difference between ReplicaSet, Deployment and StatefulSet?
16. When would you use SQS over Kafka or vice-versa?
17. Explain horizontal vs vertical scaling in real infra scenarios.
18. Describe how you’d set up observability (logs, metrics, traces).
19. What's the difference between mutable and immutable infrastructure?
20. Your service goes down at 2 AM. How do you approach troubleshooting?
1. Explain how CI/CD works end-to-end in a production environment.
2. Difference between Blue-Green and Canary deployments - when do you use each?
3. How does Kubernetes schedule a Pod? Walk me through the control-plane process.
4. How do you debug a CrashLoopBackOff or pending pod in Kubernetes?
5. What happens when a Terraform apply fails halfway?
6. How do you handle secrets securely in Kubernetes or Terraform?
7. Explain state locking in Terraform - why is it important?
8. How would you design logging and monitoring for a microservices architecture?
9. How do you reduce AWS costs without compromising performance?
10. How do you secure a CI/CD pipeline?
11. What is GitOps and how is it different from traditional CI/CD?
12. How would you recover from a failed deployment in production?
13. Explain the difference between service mesh (Istio/Linkerd) and an ingress controller.
14. How do containers communicate inside Kubernetes?
15. What's the difference between ReplicaSet, Deployment and StatefulSet?
16. When would you use SQS over Kafka or vice-versa?
17. Explain horizontal vs vertical scaling in real infra scenarios.
18. Describe how you’d set up observability (logs, metrics, traces).
19. What's the difference between mutable and immutable infrastructure?
20. Your service goes down at 2 AM. How do you approach troubleshooting?
Experienced Level (3-5 Years)
1. How do you design a scalable and fault-tolerant architecture in AWS?
2. Explain the difference between ECS, EKS, and Lambda — when would you choose each?
3. How do you implement CI/CD pipelines using tools like CodePipeline or Jenkins on AWS?
4. What are some strategies for cost optimization in AWS environments?
5. How do you handle secret management securely across your DevOps workflow?
6. What's the role of S3 lifecycle policies and versioning in data management?
7. Explain how you would set up centralized logging and monitoring across multiple accounts.
8. How can you use Route 53 for high availability and failover architecture?
9. How do you secure an S3 bucket that needs to be publicly accessible for static websites?
10. Describe your approach to troubleshooting deployment failures in an AWS-based CI/CD pipeline.
--> Self introduction
--> What is DevOps and why it is important
--> AWS fundamentals discussion
--> What is S3
--> Practical task: creating an S3 bucket and uploading an object
--> What is EC2
--> Problem statement: a website hosted on S3 that can be accessible only for 60 seconds and then becomes unavailable
--> Discussion on why I chose DevOps as a career
--> Assigned a task to complete and asked to prepare for the second round within 24 hours
--> Showed the completed task
--> Shared the task URL and explained the overall approach and implementation
--> Non-technical, real-life scenario questions
--> If the founder calls while the production server is down, what should be handled first and why
--> How to handle a situation where a developer does not fix issues even after feedback
--> What to do if neither the developer nor the founder is aligned and the issue remains unresolved
🚀 Observability & Reliability Engineering
✅ How do you implement service-level indicators (SLIs) for internal APIs?
✅ How do you correlate deployment events with performance regressions?
✅ What's your approach to reducing alert noise while maintaining fast incident detection?
✅ How do you instrument distributed tracing in a microservices architecture?
🚀 Security & Governance
✅ How do you integrate security scans (IaC, container, dependency) into CI/CD pipelines?
✅ What's your approach to secrets lifecycle management across pipelines and runtime?
✅ How do you restrict CI/CD agent permissions using least-privilege principles?
✅ How would you detect and prevent unauthorized infrastructure changes?
🚀 CI/CD & Platform Automation
✅ How would you design a single CI/CD framework that supports multiple programming languages and deployment targets?
✅ How do you implement environment-specific configuration management without duplicating pipeline code?
✅ What's your approach to building self-service pipelines for developer teams?
✅ How do you prevent configuration drift across environments in pipeline-driven deployments?
🚀 Kubernetes & Cloud-Native Operations
✅ How do you debug random pod evictions in a busy Kubernetes cluster?
✅ Explain how you would roll out cluster upgrades while ensuring zero service downtime.
✅ How do you design namespace isolation for multiple product teams in a shared cluster?
✅ When would you choose Vertical Pod Autoscaler over HPA, and why?
🚀 Infrastructure as Code & Environment Management
✅ How do you design Terraform modules that support rapid environment cloning for new projects?
✅ What's your strategy for handling breaking changes in IaC without impacting production?
✅ How do you manage shared infrastructure components (VPCs, IAM, logging) across teams?
✅ How do you validate Terraform plans automatically before approvals?
🚀 Observability & Reliability Engineering
✅ How do you implement service-level indicators (SLIs) for internal APIs?
✅ How do you correlate deployment events with performance regressions?
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
11. Give me one or two examples of what a load balancer does apart from distributing traffic. ?
1. How would you design a multi-account AWS setup for an enterprise environment?
2. Explain the difference between Transit Gateway and VPC Peering. When would you choose each?
3. How do you ensure high availability across multiple AWS regions?
4. What's your approach to securing workloads using AWS KMS and IAM policies?
5. How can you automate patch management across EC2 instances?
6. Describe how you would implement centralized logging and alerting for all AWS accounts.
7. How do you design disaster recovery using services like S3 Cross-Region Replication and Route 53 failover?
8. How do you integrate on-premises data centers with AWS (Hybrid Cloud setup)?
9. What steps would you take to minimize downtime during rolling deployments on ECS or EKS?
10. How would you monitor cost, usage, and performance metrics across a large AWS environment?
1 Explain Build vs Release
2 Difference between Continuous Delivery vs Continuous Deployment
3 Types of pipelines
4 Declarative vs Scripted (Classic) pipeline
5 Jenkins pipeline — step-by-step explanation
6 Types of variables in Jenkins pipeline
7 Types of parameters in Jenkins
8 Predefined / built-in variables in Jenkins
9 Git checkout vs Git clone
10 Git pull vs Git fetch
11 What is Git stash
12 What is Git cherry-pick
13 Explain branching strategy
14 What is a merge conflict
15 How do you resolve a merge conflict
16 What is Maven
17 mvn install vs mvn deploy
18 What is distribution management
19 What is transitive dependency
20 A service is failing — how do you find logs in Kubernetes
21 How do you check if a port is in use
22 Port number 8080 — how do you search it
1) Have you worked with AWS Lambda functions? How did you use them in your projects?
2) How many organizations are using AWS Lambda instead of EC2, and in which scenarios would you prefer Lambda over EC2?
3) How did you use Terraform workspaces in your project? Can you explain the folder structure?
4) Can you write a Terraform module for creating a VPC?
5) How did you design a secure Amazon EKS cluster architecture?
6) What is the node scale-up and scale-down time? How do you define minimum and maximum nodes?
7) Can you write a Kubernetes manifest file for a Horizontal Pod Autoscaler (HPA)?
8) Your Jenkins pipeline failed because the artifact is not accessible due to credential issues. What could be the possible reasons?
9) What are the different ways to run and build pipelines? Explain Poll SCM and Webhooks.
10) How do you run multiple jobs in Jenkins?
11) Write a Bash script to create and write log files in the current directory.
12) If your colleague tries to upload your project’s important files to their personal account, how would you secure against this type of threat?
13) Discuss how AI agents are important in modern technology.
Difference between Public EC2 and Private EC2
What is a NAT Gateway, where does it reside, and how is it used?
Difference between NAT Gateway and Bastion Host
How does routing work for NAT Gateway?
What is an Internet Gateway?
How to access S3 from a private subnet without using public internet
Types of Load Balancers in AWS
What is a VPC
How to connect multiple VPCs together
Alternatives to VPC Peering
What is CIDR in AWS
How to calculate IP addresses from CIDR
How many IPs are reserved/blocked by AWS
Which IP addresses are blocked by AWS
Difference between TCP and UDP
Difference between HTTP and HTTPS
What does ‘S’ stand for in HTTPS
What is TLS/SSL
Who issues SSL certificates
How does the SSL/TLS Handshake work (high-level)
Explain Docker Architecture
Difference between Containers and Virtual Machines
How containers use OS resources
How resource allocation works for containers
Explain Dockerfile
1. Explain Build and Release
2. Difference between Continuous Delivery and Continuous Deployment
3. Types of pipelines
4. Difference between Declarative and Scripted (Classic) pipeline
5. Explain the Jenkins pipeline step by step
6. Difference between Git checkout and Git clone
7. Difference between Git pull and Git fetch
8. What is Git stash
9. What is Git cherry-pick
10. Explain branching strategy
11. What is a merge conflict
12. How do you resolve a merge conflict
13. How many types of variables are there in Jenkins pipeline
14. How many types of parameters are there in Jenkins
15. What are predefined / built-in variables in Jenkins pipeline
16. What is Maven
17. Difference between mvn install and mvn deploy
18. What is distribution management in Maven
19. What is transitive dependency
20. A service is failing — how do you find logs in k8s
21. How do you check if a port is in use
22. Port number is 8080 — how do you search it
23. What does netstat -tulnp | grep <port> mean
1. Your EC2 instance becomes unreachable via SSH during peak traffic. How do you troubleshoot without restarting it?
2. An application on EC2 is running slow, but CPU and memory look normal. What do you check next?
3. You deployed an update on EC2 and the health checks behind ALB started failing. How do you debug it?
4. Your EC2 instance is stuck in a boot loop with a kernel panic error. How do you recover it?
5. A microservice hosted on EC2 is dropping 20% of connections randomly. How do you identify the root cause?
6. Your t3.micro instance is suddenly very slow even though CPU % is low. What is happening and how to fix it?
7. After deploying a new AMI, all instances fail the user-data script. How do you troubleshoot the user-data execution?
8. Your EC2 root EBS volume is 100% full and the instance is not responding. What steps will you take?
9. Your production EC2 instance is accidentally terminated. How do you recover as much data as possible?
10. You need to migrate EC2-based workloads to another region with zero downtime. How do you plan the migration?
11. A security audit reports exposure via IMDSv1. What changes do you perform immediately?
12. Your EC2 instance is under DDoS attack. What steps do you take from AWS side and OS side?
13. Two EC2 instances in the same subnet cannot communicate. What are possible causes?
14. EC2 instances behind an ALB take too long to deregister during deployments. How do you optimize?
15. Your instance is failing to attach an EBS volume after restart. What can cause this and how do you fix it?
16. You increase EC2 instance size but application still performs poorly. What else can be the reason?
17. You need to rotate application secrets stored on EC2. What is the best automated approach?
18. A single EC2 instance receives unpredictable traffic spikes. How do you redesign it for stability?
19. EC2 patching is taking too long on a fleet of 200 servers. How do you automate OS patching?
20. Your instance cannot reach the internet even though it's in a public subnet. What are all possible misconfigurations?
21. A new EC2 instance takes too long to bootstrap. How do you optimize AMI and user-data processing?
22. EC2 Nginx server shows “upstream timeout” errors randomly. What AWS-level issues may cause it?
23. An instance’s network throughput is capped but CPU is low. Why and how do you fix it?
24. A production team is facing high EBS IO latency on EC2. How do you diagnose and solve it?
25. You need to enable detailed auditing of who accessed which EC2 instance. What’s the best way?
1. Pod stuck in ContainerCreating. What’s a common cause?
A: Because the image cannot be pulled (auth issues, wrong tag, private repo).
Checking events will usually show image pull errors.
2. Pod has no memory limit but still gets OOMKilled - why?
A: Because the pod becomes BestEffort QoS. If the node runs out of memory, kubelet OOMKills BestEffort pods first to free memory.
3. HPA is configured, but replicas stay at 1 - even under load. What could be wrong?
A: Most common reason ➜ Metrics Server isn’t reporting usage.
   No metrics = HPA has no data ➜ no scaling.
4. Service works inside cluster but not across namespaces. Why?
A: Because the app may be using the short DNS name, not the full format: service.namespace.svc.cluster.local
5. Deployment applied, but no pods are created. What to check first?
A: Check admission webhooks. A failing validation/mutating webhook can reject pod creation silently until you inspect events.
6. NodePort service created, but unreachable from outside. Why?
A: The node firewall / security group / NACL is likely blocking the port. Kubernetes exposes it, but the OS or cloud layer may still drop traffic.
7. Image updated in the registry, but pods pull the old one. Why?
A: Because imagePullPolicy is IfNotPresent, or Deployment uses an immutable digest. Nodes simply reuse the cached image.
8. Using emptyDir, but data disappears after pod restart. Why?
A: Because emptyDir is deleted whenever a pod stops. It’s only for temporary, non-persistent data.
9. Liveness probe keeps killing the pod. What should you look at first?
A: Check whether the probe path/port is correct or if the startup time is too slow. A slow container + aggressive probe = unnecessary restarts.
Q1. Explain the Linux file system hierarchy. What is / etc, /var, /home, /usr?
Q2. what is the difference between an absolute and relative path?
Q3. How do you install, remove, or upgrade packages?
Q4. How do you schedule tasks using cron?
Q5. What is the use of /etc/hosts and /etc/resolv.conf file?
Q6. What is the purpose of shebang?
Q7. What are sticky bits, SUID, and SGID?
Q8. what is the difference between locate and find a command?
Q9. What tools are used for network debugging?
Q10.what is the port no. of ssh? can we change it ? if yes, how ?
Q11. A server is swapping heavily How do you identify memory-hungry processes and stabilize the server?
Q12. What is the difference between kill, killall, and pkill?
Q13. what is the main difference between yum and rpm command, as both are used to install packages?
Q14. Your server is not responding on SSH, but it pings. What do you check next?
Q15. A system update caused your kernel to break. How do you boot using an older kernel?
Q16. How you can increase the filesystem?
Q17. A file system is mounted read-only unexpectedly. How do you fix it?
Q18. Explain partitions and file systems. How you can create a filesystem and format a disk?
Q19. what are the different types of raid in linux?
Q20. df -h command is in hung state, what are the possible reason of it and how you will resolve it ?
AWS Networking & VPC
Public EC2 vs Private EC2
What is a NAT Gateway? Where does it reside?
NAT Gateway vs Bastion Host
How routing works for NAT Gateway
What is an Internet Gateway
Accessing S3 from private subnet without internet
Types of Load Balancers
What is a VPC
Connecting multiple VPCs
Alternatives to VPC Peering
What is CIDR and how to calculate IPs

Reserved IPs by AWS & blocked IP ranges

🔹 Networking Fundamentals
TCP vs UDP
HTTP vs HTTPS
What does ‘S’ stand for
What is TLS/SSL
Who issues certificates
TLS/SSL Handshake (high-level)

🔹 Docker & Containers
Explain Docker Architecture
Containers vs Virtual Machines
How containers use OS resources
Resource allocation in containers
Explain Dockerfile

🔹 Kubernetes
What are Services in Kubernetes
Types of Services
What is Ingress & Ingress Controller
How to set it up
Traffic flow: Domain → Ingress → Service → Pod
Load Balancer Service vs Ingress

🔹 Monitoring & Observability
What tools have you used?
What is Grafana & how to configure
What is Prometheus
Components of Prometheus
How did you configure Prometheus

1. How do you troubleshoot a production incident in Kubernetes?
2. What log collection architecture are you using in your cluster?
3. How do you handle high resource utilization on nodes or containers?
4. How do you configure autoscaling (HPA, VPA, Cluster Autoscaler, Karpenter)?
5. What preventive measures do you take to avoid node capacity exhaustion?
6. What observability stack have you implemented in your current project?
7. How do you onboard a new application into your observability platform?
8. What Datadog pods get created when you deploy the Datadog agent?
9. How do you configure logs, metrics, and traces for a new service?
10. Have you implemented service mesh ingress? Explain how.
11. What tools do you use for log management and why?
12. How do you tune Fluent Bit / Datadog Agent for performance issues?
13. What is Kubernetes resource requests and limits, and how do you set them?
14. Describe a real production outage you handled and how you fixed it.
15. How do you prevent OOMKilled and CPU throttling issues?
16. How do you configure node affinity, taints, and tolerations?
17. What is your approach for multi-AZ node group architecture?
18. How do you manage Kubernetes cluster upgrades?
19. What is the difference between Ingress and Gateway API?
20. How do you configure SLOs/SLIs and error budget policies?
21. How do you detect and resolve Terraform drift?
22. What steps do you take to secure a Kubernetes cluster?
23. What is your CI/CD workflow for Kubernetes deployments?
24. How do you implement canary or blue-green deployments?
25. How do you handle image-pull issues in Kubernetes?
26. What are the most important dashboards for SRE monitoring?
27. How do you configure PodDisruptionBudgets (PDBs)?
28. How do you design a scalable cluster logging system?
29. What node-level issues have you seen, and how did you fix them?
30. How do you troubleshoot network issues (DNS, CNI, Ingress)?

1. How would you architect a secure, auditable CI/CD pipeline in Azure DevOps for multi-environment (Dev/Test/Prod) deployments?

2. Differentiate between classic pipelines and YAML pipelines in Azure DevOps. Which one is better for Infrastructure-as-Code and why?

3. What rollback strategies have you implemented in mission-critical environments? Can you detail a real-world example?

4. Explain the use of Jenkins Shared Libraries or Azure DevOps Templates for enterprise-level DRY (Don't Repeat Yourself) pipelines.

5. How do you handle multi-repo CI/CD pipelines when deploying a microservices-based application with interdependencies?

6. Describe techniques to cache Docker layers or NuGet/NPM packages in pipelines for speed optimization.

7. How do you integrate Azure Key Vault with DevOps pipelines securely, especially with rotating secrets or certificates?

8. What is the purpose of manual intervention gates, and how would you enforce them before production release?
Interview Questions – Azure DevOps / Terraform / Docker / AKS

9. Explain how you implement compliance as code (security scanning, code coverage, policy checks) in Azure DevOps pipelines.

10. How do you enforce pipeline security – from source control (Git) to deployment? Tools? Policies?

11. What strategies do you use for managing Terraform state in a team? How do you handle state locking and backups in Azure?

12. Explain the differences between terraform plan, terraform refresh, and terraform apply. When should each be used?

13. How do you modularize Terraform for large-scale projects? Give examples.

14. How do you detect and resolve drift in Terraform-managed resources?

15. Explain how to set up remote Terraform backends in Azure (Blob Storage) and enable state locking with Azure CosmosDB or similar.

16. Show a use-case for for_each vs count in a real Terraform deployment. When should dynamic blocks be preferred?

17. Explain the purpose and real-world use of lifecycle blocks (prevent_destroy, create_before_destroy) in Terraform.

18. Write a Dockerfile for a secure Python/Node.js API with multistage builds and best practices.

19. How do multistage Docker builds improve security and reduce image size?

20. Differentiate between Docker volumes and bind mounts. When do you use each in a Kubernetes environment?

21. How do you implement blue-green or canary deployments in AKS using Helm or service mesh (e.g., Istio)?

22. What are liveness and readiness probes? Give a practical example of how incorrect config can lead to downtime.

23. How do you securely manage secrets and certificates in AKS using Azure Key Vault and CSI drivers?

1. What is ClusterIP and NodePort in Kubernetes?
2. How do you define and use Artifact ID in GitLab CI/CD?
3. How do you configure Maven in GitLab to build code?
4. How do you reduce Docker image size?
5. Can you explain Kubernetes Services in detail?

Additional Random Questions:

6. What is the difference between Deployment and StatefulSet in Kubernetes?
7. How do you implement Blue-Green Deployment using GCP Cloud Deploy or GitLab CI/CD?
8. What is the role of IAM Service Accounts in GCP CI/CD pipelines?
9. How do you configure Horizontal Pod Autoscaler (HPA) in GKE?
10. What is the difference between Cloud Build triggers and GitLab CI pipelines?
11. How do you secure Secrets in Kubernetes and integrate with GCP Secret Manager?
12. Explain the concept of Infrastructure as Code (IaC) using Terraform in GCP.
15. Describe a GitLab CI/CD workflow.

Pipeline runs build → test → scan → deploy using runners, caching, variables, and templates.

16. What GitLab CI/CD challenges have you solved?

Resolved slow pipelines and runner congestion using dedicated runners, parallel jobs, caching, and optimized stages.

17. How do you manage branching and conflict resolution in Git?

Use GitFlow/trunk-based, frequent rebasing, clean conflict handling, and mandatory CI checks before merging.

18. How do you deploy a stateful app on Kubernetes?

Use StatefulSets, Headless Services, PVCs, probes, PDBs, and backups via snapshots/Velero.

1. Launch EC2 servers in multiple Availability Zones
   → Avoid AZ failure and ensure uptime

2. Create a Target Group
   → Register EC2 instances

3. Attach Target Group to Load Balancer
   → Routes traffic only to healthy instances

4. Create an AMI from configured server
   → Used for identical instances during scaling

5. Create a Launch Template
   → Define AMI, instance type, security groups, user-data

6. Attach Launch Template to Auto Scaling Group
   → Configure:
      - Min instances
      - Max instances
      - Desired capacity
      - Scaling policies

1. User → Route 53 (DNS resolution)
2. Route 53 → Load Balancer (ALB/NLB)
3. Load Balancer → Distributes traffic to healthy EC2 instances
4. EC2 instances are part of Auto Scaling Group (ASG)
5. ASG ensures desired number of instances are always running
6. Scale out → during high traffic
7. Scale in → during low traffic (cost saving)

1.What is the difference between IAM User, IAM Role, and IAM Policy?

2.What is a Permission Boundary?

3.If role policy allows RDS but permission boundary denies RDS, can you access RDS?

4. How does cross-account role work?
    

5Scenario: EC2 in Account A needs to access S3 bucket in Account B – how do you do it?

S3

6.What are S3 Events?

7.What does SNS do?

8.Can 1 SNS topic send messages to 2 SQS queues based on message type? (SNS → SQS message filters)

9.SQS / Lambda

10. Write a Lambda function to fetch messages from SQS.
    
11. If you print the event in an SQS-triggered Lambda, what will you see?
    
12. Networking / VPC
    
13. What is a VPC Endpoint?
    
14. Does DynamoDB support both interface and gateway endpoints?
    

15. What source control tool do you use?
    
16. Step-by-step process: checkout code → make changes → push → PR → merge → deploy.
    
17. How do you rollback code in Git?
    
18. What is git revert vs git reset?
    
19. What is git squash? What’s the purpose?
    
20. Jenkins / CI-CD
    
21. Write a simple Jenkins pipeline: Git checkout + Terraform deploy + variables.
    
22. Explain the Jenkinsfile step-by-step.
    
23. What is a Terraform workspace?
    
24. What is a Terraform backend?
    
25. What is a null_resource?
    
26. What are the types of provisioners? (local-exec, remote-exec, file)
    
27. What Docker repository have you used?
    
28. What things are available inside a Dockerfile?
    
29. Difference between Dockerfile and Docker Compose.
    
30. What is Docker Swarm?
    

Kubernetes

31. What type of Kubernetes have you worked with? (AKS, EKS, etc.)
    
32. What is the EKS plugin? (You clarified EKS add-ons)
    
33. What is Karpenter?
 

1. Linux fundamentals (not commands - understanding)
    
2. Networking basics: DNS, Load Balancing, Firewalls
    
3. Docker: Image optimization, tagging strategy, layer caching
    
4. Kubernetes: Scheduling, networking, storage, troubleshooting
    
5. Helm & GitOps (ArgoCD / FluxCD)
    
6. Terraform: modularization, remote state, workspaces
    
7. CI/CD Architecture (not just writing YAML)
    
8. Branching strategies: Git Flow, Trunk Based Development
    
9. Understanding build pipelines & dependency caching
    
10. Secrets management (AWS KMS / Vault / SOPS)
    
11. Observability: Logs, Metrics, Traces (ELK / Prometheus / Loki / Grafana)
    
12. Incident Response & Root Cause Analysis
    
13. Debugging production failures
    
14. SRE mindset: SLIs, SLOs, Error Budgets
    
15. Cost Optimization in Cloud
    
16. Security Best Practices: IAM, network policies, scanning, SBOM
    
17. Cloud Services (AWS/Azure/GCP core services)
    
18. Scaling strategies: Auto-scaling, horizontal vs vertical
    
19. HA & DR architecture planning
    
20. Release strategies (Blue-Green, Canary, Progressive Delivery)
    
21. Messaging & queues (Kafka/SQS/RabbitMQ basics)
    
22. Shell scripting or Python for automation
    
23. Performance benchmarking & tuning
    
24. Infrastructure Documentation & Architecture Diagrams
    
25. Thinking like an engineer - not a tool operator
    
1️⃣ What are EC2, Lambda, and EKS?  
2️⃣ How do you create AWS infrastructure?  
3️⃣ How do you monitor your application on AWS?  
4️⃣ How do you apply changes via AWS CI/CD?  
5️⃣ Explain team structure, handling critical issues, and client interaction in an AWS context.  
6️⃣ How do you manage storage on AWS (S3, EBS, EFS)?  
7️⃣ How do you manage permissions on EC2?  
8️⃣ What is a Target Group / Backend in AWS Load Balancing?

---

**1st Scenario:**  
Your application is running on EC2 instances behind an Application Load Balancer (ALB). Suddenly, users report intermittent 502 errors.  
**Question:**  
How would you troubleshoot and resolve this issue?  
(Hint: Health checks, target group status, security groups, application logs, scaling policies.)

---

**2nd Scenario:**  
You need to deploy a microservices-based application on AWS using Kubernetes. The client wants high availability, auto-scaling, and secure IAM roles for pods.  
**Question:**  
Which AWS services and configurations would you use to meet these requirements?  
(Hint: EKS, IAM Roles for Service Accounts, Cluster Autoscaler, ALB Ingress Controller.)

---

**3rd Scenario:**  
Your team is migrating on-premise storage to AWS. The requirement is:  
Store large files with versioning and lifecycle policies  
Share POSIX-compliant file system across multiple EC2 instances  
**Question:**  
Which AWS storage services would you choose and why?  
(Hint: S3 for object storage, EFS for shared file system, EBS for block storage.)

---


**AWS Networking & VPC**

Public EC2 vs Private EC2

What is a NAT Gateway? Where does it reside?

NAT Gateway vs Bastion Host

How routing works for NAT Gateway

What is an Internet Gateway

Accessing S3 from private subnet without internet

Types of Load Balancers

What is a VPC

Connecting multiple VPCs

Alternatives to VPC Peering

What is CIDR and how to calculate IPs

Reserved IPs by AWS & blocked IP ranges

---

🔹 Networking Fundamentals  
TCP vs UDP

HTTP vs HTTPS

What does ‘S’ stand for

What is TLS/SSL

Who issues certificates

TLS/SSL Handshake (high-level)

---

🔹 Docker & Containers  
Explain Docker Architecture

Containers vs Virtual Machines

How containers use OS resources

Resource allocation in containers

Explain Dockerfile

---

🔹 Kubernetes  
What are Services in Kubernetes

Types of Services

What is Ingress & Ingress Controller

How to set it up

Traffic flow: Domain → Ingress → Service → Pod

Load Balancer Service vs Ingress

---

🔹 Monitoring & Observability  
What tools have you used?

What is Grafana & how to configure

What is Prometheus

Components of Prometheus

How did you configure Prometheus

Here is the **strict verbatim extraction** from your images:

---

1. Your EC2 instance is not reachable via SSH; what steps will you take to troubleshoot it?
    
2. You launched an EC2 instance without internet access in a private subnet — how do you allow it to download updates securely?
    
3. How do you ensure zero downtime during an EC2 instance replacement?
    
4. Your Auto Scaling group is not launching new instances even when CPU utilization is high — what could be the reason?
    
5. How do you handle user data updates on already running EC2 instances?
    
6. How do you move an EC2 instance from one VPC to another with minimal downtime?
    
7. Your application running behind an Application Load Balancer is giving intermittent 504 errors — how do you troubleshoot it?
    
8. How do you ensure high availability across regions for your EC2-based application?
    
9. What steps would you take if your EC2 instance keeps stopping due to health check failures?
    
10. How do you reduce EC2 cost without affecting performance in a production workload?
    
11. Your S3 bucket uploads are failing with Access Denied — what would you check first?
    
12. How do you host a static website securely on Amazon S3?
    
13. How do you enforce encryption for all objects uploaded to an S3 bucket?
    
14. Your application requires shared storage between multiple EC2 instances — what AWS storage service would you use and why?
    
15. How do you migrate on-premises data to S3 with minimal downtime?
    
16. What is your strategy for data lifecycle management and cost optimization in S3?
    
17. You accidentally deleted data from an S3 bucket — how do you recover it?
    
18. How do you troubleshoot slow EBS volume performance on an EC2 instance?
    
19. Your EFS mount targets are not accessible from EC2 instances — what do you check?
    
20. How do you automate snapshot creation and deletion for EBS volumes?
    

---


🔵 Docker Basics (1–12)

1. What exactly is Docker and when should you use it?
    
2. Define a Docker Image.
    
3. What is a Docker Container in simple terms?
    
4. Why do we rely on Dockerfiles?
    
5. CMD vs ENTRYPOINT — what’s the real difference?
    
6. COPY vs ADD — which should you choose and why?
    
7. Docker Hub — what role does it play?
    
8. What is a Docker Volume used for?
    
9. Bind Mounts vs Volumes — how do they differ?
    
10. What is a Docker Network?
    
11. How do you view logs of a running container?
    
12. What is a multi-stage build and when should you use it?
    

---

🔵 Intermediate Docker Concepts (13–25)  
13. Difference between an image and its layers.  
14. How to check live container resource usage.  
15. Why the .dockerignore file is important.  
16. Ways to pass environment variables to containers.  
17. ARG vs ENV — which one applies when?  
18. How port exposure actually works in Docker.  
19. What is Docker Compose and where is it used?  
20. Docker vs Virtual Machines — key differences.  
21. Techniques to reduce Docker image size.  
22. How to clean unused images/containers.  
23. How Docker provides isolation (under the hood).  
24. What is an entrypoint script and why use one?  
25. Steps to troubleshoot a failing container.

Here is the **verbatim extraction** from the image:

---

🔹 **AWS Cloud**

**1** How do you launch and configure an EC2 instance with user data?  
**2** How do you configure security groups vs NACLs in a VPC?  
**3** Explain how to design a VPC with public and private subnets.  
**4** What is the use of a NAT Gateway vs Internet Gateway?  
**5** How do you attach and mount EBS volumes to EC2?  
**6** How do you configure Auto Scaling for EC2 instances?  
**7** What is the difference between ALB & NLB sing CloudWatch?  
**9** How do you set up CloudWatch log groups for an application?  
**10** How do you manage RDS backups and automated failover?  
**11** How do you configure Route 53 for domain hosting and failover routing?  
**12** What is the difference between Elastic IPs and Public IPs?

---

**DevOps**

**1** What is SCM, IaC, playbook, and a Docker image?  
**2** Explain Git and GitHub in simple terms.  
**3** How does GitLab CI/CD work?  
**4** What are the stages you have built in Jenkins pipelines?


🔷 Terraform — Questions Asked in the Interview :

1 What is Terraform state, and why is it so critical in team environments?  
2 What is the difference between terraform plan and terraform apply?  
3 How do you store and manage sensitive values in Terraform?  
4 How does Terraform handle resource dependencies automatically?  
5 When should we use Workspaces instead of separate repositories for environments?  
6 What are data sources, and how do you use them in real-world scenarios?  
7 Explain count vs for_each — when do you prefer each one?  
8 How do you design a reusable Terraform module?  
9 What does terraform refresh do internally?  
10 How do you import existing cloud resources into Terraform state?  
11 What is the purpose of lifecycle rules like create_before_destroy?  
12 What does it mean to “taint” a resource, and how do you fix it?  
13 How do you organize Terraform code for dev/staging/prod environments?  
14 Why do we need state locking, and how is it implemented?  
15 How do you debug failures during a terraform apply?

🟩 Ansible — Questions Asked in the Interview :

1 What’s the difference between Ansible ad-hoc commands and playbooks?  
2 How do you structure the inventory file and group hosts?  
3 Explain Ansible variable precedence with an example.  
4 What are Ansible roles, and why do we use them?  
5 How does Ansible ensure idempotency?  
6 What is the purpose of handlers in Ansible?  
7 How do you secure sensitive information using Ansible Vault?  
8 What are Ansible facts, and how does gather_facts impact execution time?  
9 Explain the difference between push-based and pull-based configuration management.  
10 How do you write conditional tasks using the when statement?  
11 How do loops work in Ansible, and what are common mistakes?  
12 What is the difference between the template and copy modules?  
13 What does the become directive do in a playbook?  
14 How do you test Ansible roles or playbooks before production?  
15 What are some ways to improve Ansible performance on large infrastructures?

1 What is SCM, IaC, playbook, and a Docker image?  
2 Explain Git and GitHub in simple terms.  
3 How does GitLab CI/CD work?  
4 What are the stages you have built in Jenkins pipelines?  
5 How do you resolve pipeline errors in Jenkins?  
6 How can you schedule a cron job in shell scripting?  
7 What is Kubernetes and why do we use it?  
8 If a pod crashes, how would you fix/debug it?  
9 How do you secure a Terraform state file?  
10 How do you manage secrets in DevOps projects?  
11 What is a Kubernetes Deployment vs StatefulSet?  
12 How does Service & Ingress work in Kubernetes?  
13 What is the difference between ConfigMap and Secret in Kubernetes?  
14 How do you perform rolling updates & rollbacks in Kubernetes?  
15 What are taints and tolerations in Kubernetes, and when would you use them?

🔹 **AWS Cloud**

1 How do you launch and configure an EC2 instance with user data?  
2 How do you configure security groups vs NACLs in a VPC?  
3 Explain how to design a VPC with public and private subnets.  
4 What is the use of a NAT Gateway vs Internet Gateway?  
5 How do you attach and mount EBS volumes to EC2?  
6 How do you configure Auto Scaling for EC2 instances?  
7 What is the difference between ALB & NLB sing CloudWatch?  
9 How do you set up CloudWatch log groups for an application?  
10 How do you manage RDS backups and automated failover?  
11 How do you configure Route 53 for domain hosting and failover routing?  
12 What is the difference between Elastic IPs and Public IPs?

1. What are the key differences between Continuous Integration, Continuous Delivery, and Continuous Deployment?
    
2. How do you ensure zero-downtime deployment in a microservices environment?
    
3. Can you explain how Infrastructure as Code (IaC) improves reliability in DevOps practices?
    
4. What are some best practices you follow while writing CI/CD pipelines?
    
5. How would you handle secrets management in a DevOps setup?
    
6. In case of a failed deployment, how would you design a rollback strategy?
    
7. What’s the difference between Blue-Green and Canary deployment strategies, and when would you choose one over the other?
    
8. How do you monitor and log microservices effectively in production?
    
9. Explain the importance of container orchestration and why Kubernetes is widely used.
    
10. How would you optimize a slow CI/CD pipeline in a large-scale project?
    
11. What are the differences between EC2, ECS, EKS, and Lambda? In which scenario would you choose one over the other?
    
12. How do you set up high availability and fault tolerance in AWS for a web application?
    
13. Explain the difference between scaling vertically and horizontally in AWS.
    
14. How would you implement a disaster recovery plan in AWS?
    
15. Can you walk through setting up an Auto Scaling Group (ASG) with load balancers?
    
16. How do IAM roles and policies differ from security groups in AWS?
    
17. What is the difference between S3 Standard, S3 Intelligent-Tiering, and S3 Glacier?
    
18. How would you secure sensitive data stored in AWS S3?
    
19. What are VPC Peering and Transit Gateway? When would you use them?
    
20. Explain how you would set up monitoring and alerting using CloudWatch for a production application.
 
### 🔹 **AWS Networking & VPC**

Difference between Public EC2 and Private EC2  
What is a NAT Gateway, where does it reside, and how is it used?  
Difference between NAT Gateway and Bastion Host  
How does routing work for NAT Gateway?  
What is an Internet Gateway?  
How to access S3 from a private subnet without using public internet  
Types of Load Balancers in AWS  
What is a VPC  
How to connect multiple VPCs together  
Alternatives to VPC Peering  
What is CIDR in AWS  
How to calculate IP addresses from CIDR  
How many IPs are reserved/blocked by AWS  
Which IP addresses are blocked by AWS

---

### 🔹 **Networking Fundamentals**

Difference between TCP and UDP  
Difference between HTTP and HTTPS  
What does ‘S’ stand for in HTTPS  
What is TLS/SSL  
Who issues SSL certificates  
How does the SSL/TLS Handshake work (high-level)

---

### 🔹 **Docker & Containers**

Explain Docker Architecture  
Difference between Containers and Virtual Machines  
How containers use OS resources  
How resource allocation works for containers  
Explain Dockerfile

---

### 🔹 **Kubernetes**

What are Services in Kubernetes  
Types of Kubernetes Services  
What is Ingress and Ingress Controller  
How do you set up an Ingress Controller  
How does traffic flow from domain → Ingress → Service → Pod  
Difference between Load Balancer Service and Ingress

---

### 🔹 **Monitoring & Observability**

What monitoring tools have you used?  
What is Grafana and how do you configure it?  
What is Prometheus  
What are the components of Prometheus  
How did you configure Prometheus



1. Explain how CI/CD works end-to-end in a production environment.
    
2. Difference between Blue-Green and Canary deployments - when do you use each?
    
3. How does Kubernetes schedule a Pod? Walk me through the control-plane process.
    
4. How do you debug a CrashLoopBackOff or pending pod in Kubernetes?
    
5. What happens when a Terraform apply fails halfway?
    
6. How do you handle secrets securely in Kubernetes or Terraform?
    
7. Explain state locking in Terraform - why is it important?
    
8. How would you design logging and monitoring for a microservices architecture?
    
9. How do you reduce AWS costs without compromising performance?
    
10. How do you secure a CI/CD pipeline?
    
11. What is GitOps and how is it different from traditional CI/CD?
    
12. How would you recover from a failed deployment in production?
    
13. Explain the difference between service mesh (Istio/Linkerd) and an ingress controller.
    
14. How do containers communicate inside Kubernetes?
    
15. What’s the difference between ReplicaSet, Deployment and StatefulSet?
    
16. When would you use SQS over Kafka or vice-versa?
    
17. Explain horizontal vs vertical scaling in real infra scenarios.
    
18. Describe how you’d set up observability (logs, metrics, traces).
    
19. What’s the difference between mutable and immutable infrastructure?
    
20. Your service goes down at 2 AM. How do you approach troubleshooting?
    

# ✅ Git / GitLab Version Control

28. In GitLab: You have 10 commits — how do you revert from the 10th commit to the 5th commit?
    
29. You committed recently but need to return to the 5th commit — solution?
    
30. What is Git cherry-pick?
    
31. If changes were merged and you want to cancel/revert merge — which command do you use?
    

---

# ✅ Terraform (IaC)

32. Terraform statefile stored locally, infra applied, and statefile deleted — how do you recover?
    
33. What happens if 50 users run Terraform simultaneously?
    
34. Terraform modules — explain structure and reusability.
    

---

# ✅ Docker / Node.js Runtime

35. Sample Dockerfile for Node.js full code.
    
36. Explain each line in the Dockerfile.
    
37. Why do we use the `--production` flag?
    
38. What are devDependencies in Node?
    
39. If port 3000 is already in use — solution?
    
40. What if port 3000 is not listening — debugging steps?
    
41. Different types of Docker networks.
    
42. How do you login to Docker via CLI and exec command?
    


44. Kubernetes in your project — what exactly do you handle?
    
45. What is a Kubernetes Secret? (repeat question)
    
46. Kubernetes scaling vs autoscaling — explain.
    

---

# ✅ Linux / Disk Management / Cleanup

15. Linux server disk management — commands used.
    
16. How to free space when Linux disk is 100% or 50% full?
    
17. Jenkins directory takes more space — how to clean it?
    

---

# ✅ AWS Services / IAM / Storage

18. Major AWS services used in your project.
    
19. Difference between various AWS storage types.
    
20. Why is EBS called block storage?
    
21. Why do we use EFS?
    
22. What is S3 versioning?
    
23. IAM scenario: One user needs EKS-read, EBS-read, S3-write, CloudWatch-logs-read → how do you assign access?
    
24. Why do we need 4 custom IAM roles?
    

---

# ✅ Jenkins / CI-CD Pipeline

25. Jenkins roles and responsibilities in your project.
    
26. If an application pipeline fails with code exceptions, what is your approach?
    
27. How do you handle blockers in Jenkins?
    

---

# ✅ Kubernetes & Debugging

1. How to debug issues in Kubernetes?
    
2. What is an OOMKilled error in Kubernetes?
    
3. In Kubernetes: what is your role in the project?
    
4. What are Kubernetes Secrets?
    
5. How do you call/use secrets in Kubernetes deployments?
    
6. What is Kubernetes scaling and autoscaling?
    

---

# ✅ Helm / Ansible / Deployment Strategy

7. What is Helm?
    
8. Without Helm managing YAML is difficult — explain issues faced.
    
9. One application deployment using Helm + Ansible — how do you approach it?
    
10. If a Kubernetes cluster already exists, how do you deploy a Java application using Ansible?
    
11. Explain Ansible architecture in your project.
    
12. Draw/describe Ansible architecture (mapping/diagram).
    
13. What is the structure of an Ansible Playbook?
    
14. How do you override values when using Helm charts + Ansible deployment for a Java application?
    
    
2. How are your day-to-day activities as a DevOps Engineer?
    

---

## 🔹 Kubernetes (K8s)

3. What are prerequisites to upgrade a Kubernetes cluster?
    
4. What is Pod Disruption Budget (PDB) in Kubernetes?
    
5. How do we make a Kubernetes cluster highly available?
    

---

## 🔹 Scripting

6. Write a shell script to calculate factorial of a number.
    

---

## 🔹 AWS / Networking

7. Tell me about the VPC structure setup in your project.
    

---

## 🔹 CI/CD & Security

8. How is the CI/CD pipeline set up in your project?
    
9. What security tools are integrated?
    
10. How do you manage them?
    
11. Write a rough pipeline script for a microservices architecture.
    

---

## 🔹 Docker

12. What is a multi-stage Docker build?
    

---

## 🔹 Kubernetes (Advanced)

13. What are manifest files?
    

---

## 🔹 Ansible

14. What is Ansible Vault?
    
15. What are Ansible Roles?
    

---

## 🔹 Monitoring & Troubleshooting

16. What monitoring tools are set up?
    
17. Have you set alerts?
    
18. What are common errors you faced related to pod management?
    

---

## 🔹 Terraform

19. Write a Terraform script for VPC architecture (production-ready).
    
20. How do you unlock a Terraform state lock?
    
21. What are Terraform workspaces and when do you use them?
    
22. Explain Terraform state file and its importance.
    
23. How do you manage remote state?
    
24. Difference between Terraform `taint` and `replace`.
    
25. How do you handle Terraform state file conflicts in a team?
    

---

## 🔹 CI/CD Debugging

26. How do you find errors in pipelines?




**Explain a typical Helm chart folder structure.**

**How to use Helm for multiple environments and manage deployments?**

**How to list Helm releases?**

---

**Monitoring / ELK**

**What is the role of Logstash in the ELK stack?**

**How do you monitor an EKS Cluster using ELK? What parameters/metrics should be tracked?**

**Have you performed any customizations in Kibana dashboards?**

---

**Hope this helps!**

**I’m sharing this to support anyone preparing for AWS / DevOps / Cloud interviews.  
Feel free to share or save for later!**

---

### Terraform

**What does terraform validate do?  
Can it be run before or after terraform plan?**

**When do you use terraform fmt?**

**Why do we store the Terraform state file in a remote backend?**

**Can we edit the state file in S3?  
What happens if it's modified during apply/execution?**

---

### Kubernetes / EKS

**What is a Deployment in Kubernetes and how do you configure it?**

**What are the types of Services in Kubernetes and how do they work?**

**How do you set up an EKS cluster? What prerequisites and components are required?**

**What is the role of the kubelet?**

**Write a simple Pod YAML to run an Nginx container.**

**Explain a typical Helm chart folder structure.**

**How to use Helm for multiple environments and manage deployments?**

**How to list Helm releases?**

---

### AWS & Cloud Concepts

**Difference between RDS and DynamoDB.  
When do we choose MySQL (SQL) vs NoSQL databases?**

**How to migrate an on-prem application to AWS?  
Which AWS services help and what is the approach?**

**What are EC2 2/2 status checks and why do they show as 2/2 after launching?**

**What are stdin and stdout in Bash scripting and why do we use them?**

**Explain Target Groups in AWS and when to use them.**

**What are Listeners and how are they configured?**

**Explain Route 53.  
How to configure Route 53 for two AZs / two websites and enable communication?**

**What are Resolvers in AWS and how are they useful?**

**Difference between Public vs Private Subnets.**

**What is a VPN and why do we use it?**

---

### Terraform

**What does terraform validate do?  
Can it be run before or after terraform plan?**

**When do you use terraform fmt?**

**Why do we store the Terraform state file in a remote backend?**

1. Cloud: Azure,Aws,GCP (hands-on is must in all 3). Certification doesnt matter anymore.
    
2. Scripting: bash,powershell,python
    
3. Repositories: GIT is preferred but other repos also fine.
    
4. Ci/Cd pipeline: Jenkins(preferred), agrod (for kubernetes), gitworkflow
    
5. Containers: Docker ,kubernetes - helm charts, istio mesh
    
6. Monitoring: prometheus, grafana, data dog
    
7. IAC tool: Terraform
    
8. Environment: Able to manage hybrid setup and linux troubleshooting is a must.
    
---

1. Your EC2 CPU usage suddenly spikes to 95%. How would you detect and alert on this using CloudWatch?
    
2. How do you monitor memory utilization, since it’s not a default metric in CloudWatch?
    
3. You want to receive an email when disk space falls below 10%. How do you configure this?
    
4. Your application is slow during peak hours. How will you use CloudWatch to identify the bottleneck?
    
5. How do you create a custom CloudWatch metric for application-level monitoring?
    
6. You need real-time alerts when an RDS connection limit is exceeded. How will you configure it?
    
7. How do you monitor Lambda function execution failures and retries?
    
8. You want to trigger Auto Scaling when CPU usage crosses 70%. How do you do this using CloudWatch?
    
9. Logs from multiple EC2 instances need to be centralized and searchable. How will you achieve this?
    
10. How do you troubleshoot if CloudWatch alarms are not triggering as expected?
    
11. You want to track API latency for your application. How do you monitor this in CloudWatch?
    
12. How do you create a dashboard to visualize EC2, RDS, and Lambda metrics together?
    
13. You need to archive logs after 30 days. How do you configure log retention in CloudWatch?
    
14. How do you capture and monitor failed login attempts on an EC2 instance?
    
15. You want to monitor network traffic spikes that could indicate a DDoS attack. How would you set this up?
    
16. How do you use CloudWatch Logs Insights to analyze large volumes of logs?
    
17. You need to trigger a Lambda function when a specific log pattern appears. How do you configure it?
    
18. Your CloudWatch costs are increasing. How do you optimize and reduce them?
    
19. How do you monitor containerized workloads running on ECS or EKS using CloudWatch?
    
20. You want to detect unusual behavior automatically. How would you use CloudWatch anomaly detection?
 
✅ **1️⃣ DevOps / Jira / General**

1. Explain CI/CD process in your project
    
2. What is the main purpose Jira used in your project?
    

---

---

✅ **2️⃣ AWS CLOUD**

3. Which AWS services are used in your project?
    
4. What is an EC2 instance and what type do you use in your project?
    
5. Difference between EC2 and EBS volumes.
    
6. How does Auto Scaling work and what are its types?
    
7. What is an AWS VPC?
    
8. IAM Roles and IAM Policies — explain.
    
9. S3 storage classes and lifecycle policies.
    
10. How AWS Lambda works and what are the use cases?
    
11. Difference between SNS and SQS.
    
12. AWS monitoring tools — examples.
    

---

---

✅ **3️⃣ Jenkins / CI-CD**

13. Types of jobs in Jenkins.
    
14. Jenkins pipeline — run a job with basic stages.
    
15. Running all stages in parallel — explanation.
    
16. Jenkins pipeline parallel execution — pros & cons.
    
17. What are Jenkins workspace issues faces daily?
    
18. Jenkins workspace usage in daily DevOps tasks.
    

---

---

✅ **4️⃣ Kubernetes (K8s)**

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
 

✅ **1️⃣ LINUX / SHELL / OS**

1. Tell me about yourself (DevOps Engineer)
    
2. x = 10 and export x = 10 difference
    
3. One shell I close and open another — how to add variables permanently
    
4. Meaning of nano ~/.bashrc
    
5. Hard link and soft link difference
    
6. How to identify whether it is a hard link or soft link
    

---

✅ **2️⃣ PYTHON**

7. Python user input — how to take
    
8. A = input, B = input → print(A + B) (example 10 and 5)
    
9. Dynamic typing meaning in Python
    

---

✅ **3️⃣ AWS CLOUD**

10. AWS services used in your project
    
11. EBS volume meaning
    
12. Maximum size of EBS volume
    
13. Can multiple EBS volumes be attached to one EC2 instance?
    
14. Types of Load Balancers
    
15. Types of Auto Scaling
    
16. Difference between horizontal and vertical scaling
    
17. When should we use vertical scaling?
    
18. How to create S3 bucket
    
19. What are methods/operations in S3
    
20. S3 bucket region — how it works / how we use
    

---

✅ **4️⃣ DOCKER**

21. Dockerfile contents
    
22. CMD and ENTRYPOINT difference
    
23. Docker container login commands
    
24. Dockerfile having multiple wrong statements / errors
    

---

✅ **5️⃣ TERRAFORM**

25. Terraform meaning
    
26. Can we use Terraform for Google provider?
    
27. State file vs Remote state
    
28. Want to manage old infra now using Terraform — how?
    
29. Terraform provisioning
    

---

✅ **6️⃣ ANSIBLE**

30. Ansible meaning
    
31. How Ansible works
    
32. Playbook has 5 tasks — if second task fails, will it stop or continue?
    
33. YAML meaning & idempotent meaning
    

---

✅ **7️⃣ JIRA / ITSM**

34. Which tool manages tickets — Jira or ServiceNow?
    
35. Tickets in Jira — how to assign and how DevOps uses it
    


1. What are the different storage bucket classes in GCP?
    
2. What is Cloud Build in GCP?
    
3. What is a VPC in GCP?
    
4. What do you mean by Subnets in GCP?
    
5. What is GCP Monitoring and Logging?
    
6. Explain GCP architecture.
    
7. What are Cloud Build metrics?
    
8. What are GCP Alerts?
    

---

**Kubernetes Questions**

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
    

---

**HTTP Error Codes**

26. What is the difference between 404 and 403 errors?
    
27. What is the difference between 504 and 505 errors?
    

---

1. Explain your experience and understanding of DevOps.
    
2. What command is used to list all listening ports in Linux?
    
3. How do you check which process is using the most CPU or memory?
    
4. Command to generate an SSH key?
    
5. Name some popular Linux distributions.
    
6. How can you access private instances inside a VPC?
    
7. How do you SSH into an EC2 instance using your key?
    
8. Explain Security Groups vs Network ACLs.
    
9. How can you block an IP using only Security Groups?
    
10. What is the default port of Jenkins?
    
11. How do you secure your Jenkins server?
    
12. Explain your CI/CD pipeline and how you optimize it.
    
13. How do you store secret keys in a pipeline securely?
    
14. What are SAST and DAST? Explain both.
    
15. What is a DaemonSet and where is it used?
    
16. What are taints and tolerations in Kubernetes?
    
17. What does an Ingress controller do?
    
18. Explain Common Kubernetes pod errors .
    
19. How would you deploy a three-tier application in Kubernetes?
    
20. What is Terraform?
    
21. What is the purpose of backend.tf?
    
22. How do you reduce the size of a Docker image?
    
23. Difference between Dockerfile COPY and ADD & CMD and ENTRYPOINT.
    
24. Explain any project mentioned in your resume.


🔥 **AWS**

1. What’s the difference between Security Groups and NACLs?
    
2. How do you design a highly available architecture in AWS?
    
3. When would you use S3 vs EFS vs EBS?
    
4. What’s the difference between Auto Scaling and Load Balancing?
    
5. Explain how IAM roles differ from IAM users.
    
6. What are Spot, On-Demand, and Reserved Instances?
    
7. How does AWS VPC networking work?
    

🐳 **Docker**  
8. What’s the difference between an image and a container?  
9. How do you reduce the size of a Docker image?  
10. What is a Docker multi-stage build and why use it?  
11. How do you persist data inside containers?  
12. Explain how Docker networking works.  
13. Why should you avoid “latest” tags in production?

☸️ **Kubernetes**  
14. What’s the difference between a Deployment, StatefulSet, and DaemonSet?  
15. Explain how services (ClusterIP, NodePort, LoadBalancer) differ.  
16. What is the role of etcd?  
17. How does Kubernetes handle pod scheduling?  
18. What is a ConfigMap vs Secret?  
19. What are liveness and readiness probes?  
20. What is the Kubernetes Metrics Server used for?

🧱 **Terraform**  
21. What’s the difference between a module and a resource?  
22. Explain what "terraform state" is and why it matters.  
23. How do you manage secrets in Terraform?  
24. What is the difference between terraform apply and terraform plan?  
25. How do you handle Terraform in a multi-environment setup? (dev / stage / prod)


✅ **Auto Scaling Interview Questions (List Only)**

**Basic Auto Scaling Questions**

1. What is Auto Scaling in AWS?
    
2. What is an Auto Scaling Group (ASG)?
    
3. What is a Launch Template?
    
4. What is the difference between Launch Template and Launch Configuration?
    
5. What is desired capacity in Auto Scaling?
    
6. What is minimum and maximum size?
    
7. What are scaling policies?
    
8. What is dynamic scaling?
    
9. What is scheduled scaling?
    
10. What is predictive scaling?
    

---

**Intermediate Questions**

11. How does Auto Scaling improve high availability?
    
12. What are CloudWatch Alarms used for in scaling?
    
13. How does Auto Scaling replace unhealthy instances?
    
14. What is cooldown period in Auto Scaling?
    
15. What is instance warm-up?
    
16. What are lifecycle hooks?
    
17. What is scaling out vs scaling in?
    
18. What is target tracking scaling?
    
19. What is step scaling?
    
20. What is simple scaling?
    

---

**Advanced Questions**

21. What is mixed instance policy?
    
22. What is instance weighting?
    
23. How to use spot instances in Auto Scaling?
    
24. Difference between Spot, On-Demand, and Reserved in ASG?
    
25. Can Auto Scaling work with Load Balancer?
    
26. What is health check grace period?
    
27. Auto Scaling with multiple Availability Zones?
    
28. Can Auto Scaling distribute instances across AZs automatically?
    
29. Difference between EC2 Status Check and ELB Health Check?
    
30. How ASG handles instance termination?
    
31. What is termination policy?
    
32. What is default termination policy?
    

---

---

**Scenario-Based Questions**

36. EC2 is unhealthy; how will Auto Scaling replace it?
    
37. How to automatically add more EC2 during traffic spike?
    
38. How to scale based on queue length (SQS)?
    
39. How to perform zero-downtime deployments with Auto Scaling?
    
40. Why Auto Scaling is not launching new instances?
    
41. Why Auto Scaling is launching too many instances?
    
42. ASG scale-in is terminating the wrong instance — why?
    
43. App takes long time to boot — how to handle?
    
44. How to protect an instance from termination?
    
45. How to attach ASG to ALB?
    
46. How to attach ASG to NLB?
    
47. How to add custom logic before/after instance launch?
    
48. Scaling based on memory metrics — how?
    
49. CPU is 100% but scaling not happening — what to check?
    
50. How to perform rolling update using Auto Scaling
    

---

**Real-Time Production Questions**

51. How do you troubleshoot ASG when scaling fails?
    
52. ASG creates an instance but immediately terminates — why?
    
53. How to run user-data script in Auto Scaling correctly?
    
54. What happens when an AZ fails in ASG?
    
55. How does ASG ensure equal distribution across AZs?
    

---
