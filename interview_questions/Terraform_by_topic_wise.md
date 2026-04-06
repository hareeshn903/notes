
# 🧱 1. Terraform Basics & Core Concepts

1. What is Terraform? What exactly is Terraform and when should you use it?
    
2. What are providers, resources, and data sources?
    
3. What are data sources, and how do you use them in real-world scenarios?
    
4. What is a Terraform backend? What is a Terraform remote backend, and why is it important?
    
5. What is the purpose of backend.tf?
    
6. What is null_resource?
    
7. What is a null_resource?
8. What are Terraform workspaces and when do you use them?
9. What’s terraform init used for?
    
10. What does terraform validate do?
    
11. Can it be run before or after terraform plan?
    
12. When do you use terraform fmt?
    
13. What does terraform refresh do internally?
    
14. What is terraform import used for?
    
15. What happens internally during terraform apply?
    
16. What happens internally during terraform plan?
 
17. Explain terraform refresh vs terraform plan.
    
18. Explain the differences between terraform plan, terraform refresh, and terraform apply. When should each be used?

---

# 📦 2. Terraform State Management

1. What is Terraform state and why is it important? 
	1. why is it so critical in team environments? 
	2. How do you manage Terraform state in a team environment?)
	3. What strategies do you use for managing Terraform state in a team? How do you handle state locking and backups in Azure?

2. Terraform state conflicts - how do you prevent and recover?
    
3. How do you manage Terraform state in CI/CD?
    
4. How do you manage Terraform state file conflicts in a team?
	1. How do you securely manage Terraform state (especially in a team setup)?
	2. How do you store state securely?
	3. How do you secure a Terraform state file?
    
5. How do you store and manage sensitive values in Terraform?
    
6. What are the problems with local state? What is remote backend in Terraform? 
	1. Why do we store the Terraform state file in a remote backend?
    
7. Difference between local and remote state.
    
8. State file vs Remote state
    
9. Can we edit the state file in S3?
    
10. What happens if it's modified during apply/execution?
    
11. What would happen if the state file is deleted?
    
12. How do you recover a lost state file?
	1. How do you recover from a deleted Terraform state file?
	2. Terraform statefile stored locally, infra applied, and statefile deleted — how do you recover?
	3. Your Terraform state got corrupted during a backend migration. How will you recover? Rebuild strategy?
13. What to do when your Terraform state file becomes too large?
    
14. What happens if 50 users run Terraform simultaneously?
    

---

# 🔒 3. State Locking

1. What is state locking? Why do we lock the state file? Explain state locking in Terraform - why is it important?
	1. How do you lock state to avoid conflicts?
    
2. How do you secure and lock the state file when multiple users collaborate via S3 + DynamoDB?
    
3. How do you unlock a Terraform state lock?
    
4. How do you resolve state locking issues or partial apply failures?
    

---

# 🌍 4. Environment Management

1. How do you manage multiple environments (dev, staging, prod) in Terraform?
2. How do you structure (organize) Terraform for multi-environment deployments (dev/stage/prod)?
3. How do you handle environment-specific variables? How do you structure Terraform code for multiple environments? #env
    
4. What are Terraform workspaces? #env
    
5. When should you avoid using workspaces? #env
    
6. When should we use Workspaces instead of separate repositories for environments?
    
7. How did you use Terraform workspaces in your project? Can you explain the folder structure?
    

---

# 🔁 5. Drift, Debugging & Troubleshooting

1. How do you handle drift detection in Terraform?
	1. How do you detect and fix drift in Terraform-managed infrastructure?
2. How do you fix drift when changes are made manually on AWS?
    
3. Terraform deployment suddenly slows to a crawl. No errors, no drift.  
    What’s your step-by-step debug path before you touch code?
    
4. Terraform plan shows unexpected changes - how do you debug?
    
5. How do you debug failures during a terraform apply?
    
6. Terraform apply failed in production. How do you fix it safely?
    
7. Terraform apply fails midway -what happens to resources?

8. What happens when a Terraform apply fails halfway?
    
9. Terraform plan shows destroy + recreate for a critical DB — how to prevent downtime?
    
10. EC2 created through Terraform was deleted by another user — how will you troubleshoot it?
    
11. ➤ How do you fix “resource already exists” errors?
    

---

# 📥 6. Import, Taint & Existing Infra

1. What is terraform import used for?
    
2. How do you import existing resources into Terraform? What is terraform taint?
    
3. What is the difference between terraform import and terraform taint?
    
4. Difference between Terraform taint and replace.
    
5. What does it mean to “taint” a resource, and how do you fix it?
    
6. How do you manage unmanaged AWS resources in Terraform?
    
7. Want to manage old infra now using Terraform — how?
    
8. How do you pass arguments to a VPC while using the terraform import command?
    
9. What are the prerequisites before importing a VPC in Terraform?
    

---

# 🔐 7. Secrets & Security

1. How do you manage secrets in Terraform without hardcoding them?
    
2. How do you manage sensitive data in Terraform?
    
3. How do you store and manage sensitive values in Terraform?
4. How do you handle secrets securely in Kubernetes or Terraform?
    
5. Secrets management - Terraform + AWS Secrets Manager combo.
    
6. How do you integrate Terraform with AWS Secrets Manager?
    
7. How do you manage secret rotation and injection using Vault or AWS Secrets Manager?
    
8. How do you prevent secrets from leaking into logs? How do you mark outputs as sensitive?
    
9. How did you manage and use secrets securely when connecting to AWS/Azure?
    

---

# ⚙️ 8. Modules & Reusability

1. How do you write reusable Terraform modules?
    
2. Explain Terraform modules with a practical scenario.
    
3. Terraform modules — explain structure and reusability.
    
4. What are modules and how do you create reusable ones?
    
5. What’s the difference between a module and a resource?
    
6. Can you write a Terraform module for creating a VPC?
    
7. How do you design reusable Terraform modules for microservices?
    
8. How do you modularize Terraform for large-scale projects? Give examples.
    
9. How do you refactor a monolithic Terraform repo into modular stacks for scalability?
    
10. How do you design Terraform modules that support rapid environment cloning for new projects?
    
11. do you have experience to creating modules in Terraform? What is use of modules?
    

---

# 🔄 9. Provisioning & Resources

1. How do you use Terraform to create cloud resources?
    
2. Terraform provisioning
    
3. Write a Terraform configuration file to:  
    Create EC2 instances  
    Create VPCs  
    Create S3 buckets
    
4. Terraform script to provision an EC2 instance with a custom security group and user data script.
    
5. Write a Terraform script for VPC architecture (production-ready).
    
6. Live Coding Task: Write Terraform code to create a VPC with all its components and provision an RDS database within that VPC.
    
7. How do you create IAM roles in Terraform? (modules/templates?)
    
8. How do you provision EBS volumes using Terraform?
    
9. Deploying EC2 using existing VPC + SG (explained the blocks, not full code)
    

---

# ⚡ 10. Advanced Terraform Concepts

1. What’s the difference between count and for_each?
    
2. Difference between count and for_each.
    
3. Show a use-case for for_each vs count in a real Terraform deployment. When should dynamic blocks be preferred?
    
4. How do you create 50 EC2 instances with different configurations using dynamic blocks?
    
5. How do you use conditional expressions?
    
6. Terraform Lifecycle blocks
    
7. What is lifecycle block?
    
8. What is create_before_destroy?
    
9. What is prevent_destroy?
    
10. How do you prevent accidental deletion of resources?
    
11. How do you prevent resource deletion in Terraform?
    
12. How do you modify only tags without recreating the resource?
    
13. Why does Terraform plan show resource replacement?
    
14. What is the purpose of lifecycle rules like create_before_destroy?
    

---

# ☁️ 11. Cloud & Multi-Cloud Design

1. AWS + Terraform:
    
2. How do you design a multi-account AWS setup with shared modules and centralized state management?
    
3. How do you design a multi-cloud Terraform setup (AWS + Azure + GCP) with shared modules?
    
4. How would you provision infra across 10 AWS regions simultaneously?
    
5. Can we use Terraform for Google provider?
    

---

# 🚀 12. CI/CD & Automation

1. How do you integrate Terraform into CI/CD pipelines for environment promotions (dev → prod)?
    
2. How do you use Terraform in Jenkins pipelines?
    
3. How do you use Terraform in Jenkins pipelines?
    
4. How do you manage Terraform state in CI/CD?
    
5. How do you ensure safe Terraform apply in production?
    
6. How do you implement approval before Terraform apply?
    
7. How do you validate Terraform plans automatically before approvals?
    

---

# 🧠 13. Advanced Architecture & Strategy

1. What’s your strategy to manage provider version drift across multiple repos and teams?
    
2. How do you manage Terraform provider versioning?
    
3. How do you manage provider version drift across multiple repos and teams?
    
4. How do you handle cross-region dependencies (like S3 replication or RDS read replicas) in Terraform?
    
5. How do you implement zero-downtime deployments using Terraform?
    
6. How do you perform infra changes without downtime - especially for autoscaling or load balancers?
    
7. How do you design blue-green or canary infrastructure rollouts using Terraform and pipelines?
    
8. How do you ensure idempotency and prevent unwanted re-creations during apply?
    
9. How do you enforce compliance and governance using Sentinel or OPA with Terraform Cloud?
    
10. What’s your approach to migrating from Terraform OSS to Terraform Cloud with minimal disruption?
    
11. What’s your strategy for handling breaking changes in IaC without impacting production?
    
12. How do you manage shared infrastructure components (VPCs, IAM, logging) across teams?
    
13. How do you enforce cost control using Terraform?
    
14. What are the best practices you follow in your current project?
    

---

# 🔗 14. Terraform + Other Tools

1. How do you configure an Ansible agent?
    
2. How have you used Terraform and Ansible? Give a real example.
    

---

# 🧾 15. Misc / Repeated / Meta

(kept verbatim intentionally as required)

1. How does T
    
2. Cloud: Azure,Aws,GCP (hands-on is must in all 3). Certification doesnt matter anymore.
    
3. Scripting: bash,powershell,python
    
4. Repositories: GIT is preferred but other repos also fine.
    
5. Ci/Cd pipeline: Jenkins(preferred), agrod (for kubernetes), gitworkflow
    
6. Containers: Docker ,kubernetes - helm charts, istio mesh
    
7. Monitoring: prometheus, grafana, data dog
    
8. IAC tool: Terraform
    
9. Environment: Able to manage hybrid setup and linux troubleshooting is a must.
    

---

✅ Done exactly as requested:

- **All questions preserved (verbatim)**
    
- **No removals**
    
- **Duplicates intentionally retained**
    
- **Organized by Terraform topics**
    

---

If you want next step, I can:  
👉 Convert this into **interview-ready answers (short + long)**  
👉 Or create a **90-day Terraform mastery roadmap from these questions**