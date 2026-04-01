https://github.com/bregman-arie/devops-exercises

- How do you manage different environments (dev, staging, prod) in CI/CD?
- Can you describe the CI/CD workflow in your project?
- How do you handle the continuous delivery (CD) aspect in your projects?
- CI/CD pipeline design - explain your multi-env setup (Dev/Stage/Prod).
- What steps do you take to secure a CI/CD pipeline?
- Explain the CI/CD workflow you follow and the kind of pipeline you use. How do you define and invoke pipelines in Jenkins?
- Describe your typical deployment flow and CI/CD workflow. What stages do you define in your Jenkins pipeline, and how do you ensure full quality checks during deployment?
- What are the stages in the DevOps lifecycle?
- What is the difference between Continuous Integration (CI) and Continuous Delivery/Deployment (CD)?
- What is the CI/CD process?
- CI/CD pipeline needs rollback capability. How would you implement it?
- How do you store secrets in a CI/CD pipeline?
- Explain a complete CI/CD pipeline and its stages.
- Write a CI/CD pipeline for a Node.js application and explain each stage.
- Have you worked with Jenkins CI/CD pipelines?
- How many tools have you worked with for CI/CD?
- How do you design security in your project for CI/CD pipelines?
- Describe how to write a Jenkins CI/CD pipeline using Notepad.
- How do you add Kubernetes into a CI/CD pipeline?

- in Your they creates multiple pipeline how triggered

- You’re asked to integrate vulnerability scanning across Jenkins, GitHub Actions, and Azure DevOps.  
    What’s your architecture for consistent reporting and minimal false positives?
- A new Vault policy update breaks CI secrets rotation mid-deploy.  
    How do you roll back safely without re-exposing credentials?
Stages in my pipeline  / Pipeline stages  / What are the different stages in your pipeline

Continuous Feedback  
Continuous Delivery concept
Tools used  
How do you manage secrets in DevOps projects?


Continuous Delivery implementation  
Rollback strategies in case of deployment failure

🔹 CI/CD Troubleshooting  
Handling failed pipeline stages  
Debugging approach and team collaboration  
This round focused more on practical exposure and problem-solving ability rather than just definitions.
Why do we use Trivy and owasp? What are the vulnerabilities u saw while scanning with owasp?
1) Can you walk me through your previous Project architecture and roles & responsibilities?
2) Can you walk me through your Cl process?
3) can you walk me through the Deployment process? 5) How do you Integrate ArgoCD for the deployment? 
- Explain how CI/CD works end-to-end in a production environment.
- Difference between Blue-Green and Canary deployments - when do you use each?
- How do you secure a CI/CD pipeline?
- What is GitOps and how is it different from traditional CI/CD?
- How would you recover from a failed deployment in production?
- How do you secure a CI/CD pipeline?
- What is GitOps and how is it different from traditional CI/CD?
- How would you recover from a failed deployment in production?
How would you design a single CI/CD framework that supports multiple programming languages and deployment targets?  
✅ How do you implement environment-specific configuration management without duplicating pipeline code?  
✅ What's your approach to building self-service pipelines for developer teams?  
✅ How do you prevent configuration drift across environments in pipeline-driven deployments?
1 Explain Build vs Release
2 Difference between Continuous Delivery vs Continuous Deployment
3 Types of pipelines
4 Declarative vs Scripted (Classic) pipeline
5 Jenkins pipeline — step-by-step explanation
6 Types of variables in Jenkins pipeline
7 Types of parameters in Jenkins
8 Predefined / built-in variables in Jenkins

1. Explain your CI/CD pipeline architecture end-to-end. How do you ensure zero-downtime deployments?
2. How do you design multi-branch workflows for microservices in CI/CD?
3. Blue-Green vs Rolling vs Canary - when to choose what and why?
4. How do you secure CI/CD pipelines from credential leaks & supply-chain attacks?
5. How do you troubleshoot and reduce flaky pipeline failures?
**1** What is SCM, IaC, playbook, and a Docker image?  
**2** Explain Git and GitHub in simple terms.  
**3** How does GitLab CI/CD work?  
**4** What are the stages you have built in Jenkins pipelines?
1. How is the CI/CD pipeline set up in your project?
    
2. What security tools are integrated?
    
3.  How do you manage them?
    
4.  Write a rough pipeline script for a microservices architecture.
  How do you find errors in pipelines?  
  1.  Which tool manages tickets — Jira or ServiceNow?
    
1.  Tickets in Jira — how to assign and how DevOps uses it
2. If you need to provision 100 EC2 instances and install an application on them, how would you accomplish that using your CI/CD pipeline?
3. If you have an existing complex infrastructure and want to introduce Terraform, how would you bring Terraform in line with the current setup?
4. What is sed, and why is the -E (or -G, based on system) option used?
5. How would you configure Argo CD to manage multiple environments?
6. Are Docker image layers read-only or read-write, and how does that work?
7. Can a VPC CIDR block go beyond /16? Why or why not?
8. What metrics do you typically monitor in a CI/CD system, and how do you alert on failures?
9. How does Argo CD enforce GitOps principles during deployments?
10. What happens when manual changes are made directly in Kubernetes for resources managed by Argo CD?
11. Suppose you are working with 30 AWS accounts, how are you managing those 30 accounts ?
12. Give me one or two examples of what a load balancer does apart from distributing traffic.?

---

# **DevOps / CI-CD / Architecture / SRE**

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
- What are the key differences between Continuous Integration, Continuous Delivery, and Continuous Deployment?
- How do you ensure zero-downtime deployment in a microservices environment?
- Can you explain how Infrastructure as Code (IaC) improves reliability in DevOps practices?
- What are some best practices you follow while writing CI/CD pipelines?
- How would you handle secrets management in a DevOps setup?
- In case of a failed deployment, how would you design a rollback strategy?
- What’s the difference between Blue-Green and Canary deployment strategies, and when would you choose one over the other?
- How do you monitor and log microservices effectively in production?
- Explain the importance of container orchestration and why Kubernetes is widely used.
- How would you optimize a slow CI/CD pipeline in a large-scale project?
• What are Jenkins agents?  
• How do you trigger a pipeline on every Git push?  
• What is an artifact repository (Nexus / Artifactory)?
5. Describe your experience with Jenkins, GitLab CI, or Azure DevOps pipelines.  
6. How do you implement automated testing in CI/CD pipelines?  
7. Explain how you would handle pipeline failures in production deployments.  
8. What are some strategies to optimize build and deployment times for large projects?
9. Compare Terraform and AWS CloudFormation for infrastructure automation.  
10. How do you manage secrets and sensitive data in cloud environments?  
11. Explain your approach to container orchestration with Kubernetes or ECS.  
12. What is “immutable infrastructure,” and how have you applied it in your projects?
Can you explain a full CI/CD pipeline with best security practices?
What are Quality Gates?
25.What are the main stages in a CI/CD pipeline?  
26.What is Terraform and how do you use it?  
27.How do you recover an EC2 instance if the key pair is lost?  
28.What is Jenkins? How does it work? What are the main steps in a Jenkins pipeline?
CI/CD, DevOps & Terraform  
What are the main stages in a CI/CD pipeline?  
What is Terraform and how do you use it?  
How do you recover an EC2 instance if the key pair is lost?  
What is Jenkins? How does it work? What are the key steps in a Jenkins pipeline?  
🔷 3. Your CI/CD pipeline failed after a code push. How do you handle it?  
🔷 12. Jenkins pipeline is stuck at one stage. What’s your debugging approach?

1. List the Git commands you use in your daily work, including the most important ones.
2. What is a Git tag? Why do we use it?
3. What are Jenkins Shared Libraries? Have you used them in your projects? How do they work?
4. Describe the pipeline stages you currently use in your project. What are the stages and their flow?
5. How does Ansible work? What mechanism does it use? Have you written any playbooks?
6. Where do you store server names and IPs in Ansible? How do you reference them? What is the directory structure of Ansible, and where do you store your files?
7. What are your day-to-day SRE activities? You mentioned you are also working as a DevOps engineer on another project — what are your daily tasks there?
8. You mentioned you work on vulnerability remediation with SLAs. If a critical vulnerability SLA is breached, what happens from a system or management perspective?
9. Explain Git pull and Git Fetch
10. How do you resolve merge conflict?  
    🔷 3. Your CI/CD pipeline failed after a code push. How do you handle it?  
    🔹 Your Jenkins pipeline takes 45 minutes to complete — how would you reduce the execution time?  
    🔹 How do you store secrets in a CI/CD pipeline?
11. How to generate token in GitHub? Explain  
    🔹 Can you describe a real-time issue you have faced in a project and how you resolved it?
	- What is GitOps and its advantages?
- You mentioned you’ve worked with Argo CD — how do you use it?
- How do you maintain Argo CD and use it to deploy on Kubernetes?
- How do you manage rollbacks of an application in Argo CD?
- You use rolling updates for deployments, but what if you want to use a Blue-Green approach with Argo CD inside Kubernetes?