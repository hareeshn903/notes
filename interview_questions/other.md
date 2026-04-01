- what is your roles and responsibilities?
- Self-Introduction
- Tell me about yourself and your experience.
- Describe your daily activities in your current role.
- How many tools have you used in your role as a DevOps engineer?
- Which tools and technologies are you currently using?
- Do you know Python scripting?
- What is a challenge you faced recently in your project, and how did you resolve it?
- If you want to learn a new tool or technology, how would you approach it?
- What does "demonstrate" mean in a technical context?
- If you get a chance, what questions would you ask the interviewer about the company or project?
- Why do you want to switch to this company, and how can we trust you won’t leave soon?
- How would you design logging and monitoring for a microservices architecture?
- Explain horizontal vs vertical scaling in real infra scenarios.
- Describe how you’d set up observability (logs, metrics, traces).
- What's the difference between mutable and immutable infrastructure?
- Your service goes down at 2 AM. How do you approach troubleshooting?
- How would you design logging and monitoring for a microservices architecture?
- Explain horizontal vs vertical scaling in real infra scenarios.
- Describe how you’d set up observability (logs, metrics, traces).
- What's the difference between mutable and immutable infrastructure?
- Your service goes down at 2 AM. How do you approach troubleshooting?
> AWS fundamentals discussion  
--> Discussion on why I chose DevOps as a career  
--> Assigned a task to complete and asked to prepare for the second round within 24 hours  
--> Showed the completed task  
--> Shared the task URL and explained the overall approach and implementation
Non-technical, real-life scenario questions  
--> If the founder calls while the production server is down, what should be handled first and why  
--> How to handle a situation where a developer does not fix issues even after feedback  
--> What to do if neither the developer nor the founder is aligned and the issue remains unresolved
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
2. How do you define and use Artifact ID in GitLab CI/CD?
3. How do you configure Maven in GitLab to build code?
4. How do you implement Blue-Green Deployment using GCP Cloud Deploy or GitLab CI/CD?
5. What is the role of IAM Service Accounts in GCP CI/CD pipelines?
6. What is the difference between Cloud Build triggers and GitLab CI pipelines?
7. Explain the concept of Infrastructure as Code (IaC) using Terraform in GCP.
8. Describe a GitLab CI/CD workflow.

Pipeline runs build → test → scan → deploy using runners, caching, variables, and templates.

16. What GitLab CI/CD challenges have you solved?

Resolved slow pipelines and runner congestion using dedicated runners, parallel jobs, caching, and optimized stages.

17. How do you manage branching and conflict resolution in Git?

Use GitFlow/trunk-based, frequent rebasing, clean conflict handling, and mandatory CI checks before merging.

- Ansible playbook times out on one host out of twenty. What do you check?
- Have you worked with Ansible configuration management tools?
- What is Configuration Management, and have you used Ansible or Puppet?
- During an overnight release, an Ansible playbook wipes a shared NFS mount.  
    How do you triage, contain, and recover without triggering client downtime?
- Design a multi-tenant EKS cluster with isolation across dev, QA, and prod, with no noisy neighbors.
- What’s your approach to managing 10+ Kustomize overlays without drift or duplication?
- Explain how you’d secure cross-region S3 replication and validate data integrity at scale.
- Describe a hybrid cloud routing architecture between GCP and AWS. Where do you enforce boundaries?
- How do you design infrastructure that empowers devs without giving them footguns?
- What’s your Linux-level checklist before approving any custom AMI to production?
- You’ve been asked to move from centralized logging to a service-mesh-based observability model. Your tradeoffs?
- Describe how you simulate production-level chaos in staging for Kubernetes.
- How do you handle pushback from leadership when your SLOs threaten velocity?
























Project Goal
Migrate a high-traffic monolithic application to microservices on EKS to improve uptime, reduce cost, and enable faster deployments.
My Role as a DevOps Engineer
I was responsible for end-to-end DevOps ownership:
- Designing the EKS cluster architecture across multiple AZs
- Breaking monolith into containerized microservices
- Building CI/CD pipelines using Jenkins + ArgoCD
- Implementing observability: Prometheus, Grafana, ELK
- Securing workloads using RBAC, NetworkPolicies, Vault

Infrastructure Scale
- 50+ node EKS cluster
- 100+


1. Migrating Stateful Workloads (PostgreSQL) With Minimal Downtime
- Issue: Data consistency during migration
- Solution: Used logical replication + Velero backups to ensure a safe cutover

2. High Inter-Service Network Latency
- Issue: Microservices communicating across nodes introduced latency
- Solution: Implemented Istio service mesh for traffic shaping, retries, and circuit-breaking

3. Auto-Scaling Failures During Traffic Spikes
- Issue: HPA reacting too slowly
- Solution: Introduced custom metrics via Prometheus + KEDA for event-driven scaling

Outcome
- Achieved 99.95% uptime
- Deployment frequency increased 3x (weekly = multiple times per day)
- 20% cost reduction via proper resource tuning + Spot instances

Why This Project Works in Interviews
It shows:
- Real production-level Kubernetes experience
- Ability to handle scale and failures
- Understanding of observability + security
- Ownership from architecture — automation — optimization




Ansible
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