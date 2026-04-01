https://github.com/rkm-ravi94/awesome-devops-interview/blob/main/terraform.md

- Terraform deployment suddenly slows to a crawl. No errors, no drift.  
    What’s your step-by-step debug path before you touch code?
- How do you manage unmanaged AWS resources in Terraform?
- How do you pass arguments to a VPC while using the `terraform import` command?
- What are the prerequisites before importing a VPC in Terraform?
- If an S3 bucket was created through Terraform but someone manually added a policy to it, how do you handle this situation using IaC?
- What is the difference between **terraform import** and **terraform taint**?
- How do you manage secrets in Terraform without hardcoding them?
- What’s the difference between **count** and **for_each**? Give a real-world use case.
- How do you handle drift detection in Terraform?
- What is a Terraform remote backend, and why is it important?
- How do you manage multiple environments (dev, staging, prod) in Terraform?
- Difference between **local-exec** and **remote-exec** provisioners.
- How do you safely roll back infrastructure changes after a failed deployment?
- Explain **terraform refresh vs terraform plan**.
- How do you write reusable Terraform modules?
- Terraform state conflicts - how do you prevent and recover?
- Dynamic infra creation + auto-destroy - how would you automate it?
- Secrets management - Terraform + AWS Secrets Manager combo.
- Your Terraform state got corrupted during a backend migration. Rebuild strategy?
- What would happen if the state file is deleted?
- Write a Terraform configuration file to:  
    Create EC2 instances  
    Create VPCs  
    Create S3 buckets
- Terraform script to provision an EC2 instance with a custom security group and user data script.
- do you have experience to creating modules in Terraform? What is use of modules?
- In Terraform You create 10 EC2 instances through Terraform, You deleted 2 EC2 instances manually in aws console what will happen next time when you apply Terraform apply command?
- If you deployed 12 EC2 instances and 2 were deleted manually, what happens when you run terraform apply again?
- Do you store your Terraform state file locally or remotely? Why?
- How do you update your Terraform state file to match current AWS resources? Which command will you use?
- Can we do it with Terraform workspaces?
- What does terraform init do?
2. Terraform apply failed in production. How do you fix it safely?  
🔷 14. Terraform state is corrupted. How will you recover?

1. How do you design a **multi-account AWS setup** with shared modules and centralized state management?
2. What’s your strategy to **manage provider version drift** across multiple repos and teams?
3. How do you handle **cross-region dependencies** (like S3 replication or RDS read replicas) in Terraform?
4. How do you implement **zero-downtime deployments** using Terraform?
5. How would you **refactor a monolithic Terraform repo** into modular stacks for scalability?
6. How do you **secure and lock the state file** when multiple users collaborate via S3 + DynamoDB?
7. How do you enforce **compliance and governance** using Sentinel or OPA with Terraform Cloud?
8. What’s your approach to **migrating from Terraform OSS to Terraform Cloud** with minimal disruption?
9. How do you integrate Terraform into **CI/CD pipelines** for environment promotions (dev → prod)?
10. How do you manage **secret rotation and injection** using Vault or AWS Secrets Manager?
11. How do you perform **infra changes without downtime** - especially for autoscaling or load balancers?
12. How do you **test Terraform code** for logic, drift, and policy compliance?
13. How do you design a **multi-cloud Terraform setup** (AWS + Azure + GCP) with shared modules?
14. How do you ensure **idempotency** and prevent unwanted re-creations during apply?
15. How do you design **blue-green or canary infrastructure rollouts** using Terraform and pipelines?

(repeated block preserved exactly as provided)

- How do you design a **multi-account AWS setup** with shared modules and centralized state management?
- What’s your strategy to **manage provider version drift** across multiple repos and teams?
- How do you handle **cross-region dependencies** (like S3 replication or RDS read replicas) in Terraform?
- How do you implement **zero-downtime deployments** using Terraform?
- How would you **refactor a monolithic Terraform repo** into modular stacks for scalability?
- How do you **secure and lock the state file** when multiple users collaborate via S3 + DynamoDB?
- How do you enforce **compliance and governance** using Sentinel or OPA with Terraform Cloud?
- What’s your approach to **migrating from Terraform OSS to Terraform Cloud** with minimal disruption?
- How do you integrate Terraform into **CI/CD pipelines** for environment promotions (dev → prod)?
- How do you manage **secret rotation and injection** using Vault or AWS Secrets Manager?
- How do you perform **infra changes without downtime** - especially for autoscaling or load balancers?
- How do you **test Terraform code** for logic, drift, and policy compliance?
- How do you design a **multi-cloud Terraform setup** (AWS + Azure + GCP) with shared modules?
- How do you ensure **idempotency** and prevent unwanted re-creations during apply?
- How do you design **blue-green or canary infrastructure rollouts** using Terraform and pipelines?

(repeated again exactly)

- How do you design a **multi-account AWS setup** with shared modules and centralized state management?
- What’s your strategy to **manage provider version drift** across multiple repos and teams?
- How do you handle **cross-region dependencies** (like S3 replication or RDS read replicas) in Terraform?
- How do you implement **zero-downtime deployments** using Terraform?
- How would you **refactor a monolithic Terraform repo** into modular stacks for scalability?
- How do you **secure and lock the state file** when multiple users collaborate via S3 + DynamoDB?
- How do you enforce **compliance and governance** using Sentinel or OPA with Terraform Cloud?
- What’s your approach to **migrating from Terraform OSS to Terraform Cloud** with minimal disruption?
- How do you integrate Terraform into **CI/CD pipelines** for environment promotions (dev → prod)?
- How do you manage **secret rotation and injection** using Vault or AWS Secrets Manager?
- How do you perform **infra changes without downtime** - especially for autoscaling or load balancers?
- How do you **test Terraform code** for logic, drift, and policy compliance?
- How do you design a **multi-cloud Terraform setup** (AWS + Azure + GCP) with shared modules?
- How do you ensure **idempotency** and prevent unwanted re-creations during apply?
- How do you design **blue-green or canary infrastructure rollouts** using Terraform and pipelines?
How do you manage sensitive data in Terraform?  
How do you securely manage Terraform state (especially in a team setup)?  
How do you detect and handle Terraform drift in production?  
How do you enforce cost control using Terraform?  
How do you test Terraform code before pushing to production?  
What are the best practices you follow in your current project?
- How do you manage Terraform provider versioning?
- How would you provision infra across 10 AWS regions simultaneously?
- What to do when your Terraform state file becomes too large?
- Terraform plan shows destroy + recreate for a critical DB — how to prevent downtime?
- How do you use Terraform to create cloud resources?
- How do you configure an Ansible agent?
- How do you create IAM roles in Terraform? (modules/templates?)
How do you manage Terraform state in a team environment?  
• What happens internally during terraform apply?  
• Explain Terraform modules with a practical scenario.  
• How do you prevent accidental deletion of resources?  
• How do you fix drift when changes are made manually on AWS?
• What happens during terraform plan?  
• Why do we lock the state file?  
• What is a data source in Terraform?
• How do you recover from a deleted Terraform state file?  
• How do you create 50 EC2 instances with different configurations using dynamic blocks?  
• Live Coding Task: Write Terraform code to create a VPC with all its components and provision an RDS database within that VPC.
How do you use Terraform in Jenkins pipelines? 
How do you manage Terraform state in CI/CD?
How do you ensure safe Terraform apply in production? 
How do you implement approval before Terraform apply?
Securing Terraform state files  
Remote backend configuration  
What is null_resource?
How do you secure a Terraform state file?
- Deploying EC2 using existing VPC + SG (explained the blocks, not full code)
- Terraform Lifecycle blocks
AWS + Terraform:
What parameters do you consider while creating an EC2 using Terraform?
How do you create EC2 in a specific VPC and subnet? How do you attach Security Groups to EC2?
How do you attach an IAM role to EC2?
How do you run scripts during EC2 creation?
How do you provision EBS volumes using Terraform? How do you change EBS volume type (gp3 → io1)? Will data be lost when modifying EBS type?
Security & Secrets:
How do you handle secrets in Terraform?
How do you integrate Terraform with AWS Secrets Manager?
How do you prevent secrets from leaking into logs? How do you mark outputs as sensitive?
Troubleshooting & Debugging :
Terraform plan shows unexpected changes - how do you debug?
Terraform apply fails midway -what happens to
resources?
How do you import existing resources into Terraform? What is terraform taint?
What is terraform refresh?
- What happens when a Terraform apply fails halfway?
- How do you handle secrets securely in Kubernetes or Terraform?
- Explain state locking in Terraform - why is it important?
- What happens when a Terraform apply fails halfway?
- How do you handle secrets securely in Kubernetes or Terraform?
- Explain state locking in Terraform - why is it important?

State Management:
What are the problems with local state? What is remote backend in Terraform? #state
How do you store state securely? #state 
What happens if the state file is deleted accidentally? #state
How do you recover a lost state file? #state
What is state locking? #state
How does Terraform handle concurrent runs? #state

Environment Management:
How do you manage multiple environments (Dev, QA, Prod) in Terraform? #env
What are Terraform workspaces? #env 
When should you avoid using workspaces? #env 
How do you handle environment-specific variables? How do you structure Terraform  code for multiple environments? #env 

Advanced Resource Control:
How do you prevent resource deletion in Terraform? What is lifecycle block?
What is create_before_destroy?
What is prevent_destroy?
How do you modify only tags without recreating the resource?
Why does Terraform plan show resource replacement?
✅ How do you design Terraform modules that support rapid environment cloning for new projects?  
✅ What's your strategy for handling breaking changes in IaC without impacting production?  
✅ How do you manage shared infrastructure components (VPCs, IAM, logging) across teams?  
✅ How do you validate Terraform plans automatically before approvals?
3. How did you use Terraform workspaces in your project? Can you explain the folder structure?
4. Can you write a Terraform module for creating a VPC?

9. How do you structure Terraform for multi-environment deployments (dev/stage/prod)?
10. What happens internally during terraform plan & apply?
11. How do you resolve state locking issues or partial apply failures?
12. How do you detect and fix drift in Terraform-managed infrastructure?
13. How do you design reusable Terraform modules for microservices?
- What strategies do you use for managing Terraform state in a team? How do you handle state locking and backups in Azure?
- Explain the differences between terraform plan, terraform refresh, and terraform apply. When should each be used?
- How do you modularize Terraform for large-scale projects? Give examples.
- How do you detect and resolve drift in Terraform-managed resources?
- Explain how to set up remote Terraform backends in Azure (Blob Storage) and enable state locking with Azure CosmosDB or similar.
- Show a use-case for for_each vs count in a real Terraform deployment. When should dynamic blocks be preferred?
- Explain the purpose and real-world use of lifecycle blocks (prevent_destroy, create_before_destroy) in Terraform.
- What is a Terraform workspace?
- What is a Terraform backend?
- What is a null_resource?
- What are the types of provisioners? (local-exec, remote-exec, file)
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
32. Terraform statefile stored locally, infra applied, and statefile deleted — how do you recover?
    
33. What happens if 50 users run Terraform simultaneously?
    
34. Terraform modules — explain structure and reusability.
19. Write a Terraform script for VPC architecture (production-ready).
    
20. How do you unlock a Terraform state lock?
    
21. What are Terraform workspaces and when do you use them?
    
22. Explain Terraform state file and its importance.
    
23. How do you manage remote state?
    
24. Difference between Terraform `taint` and `replace`.
    
25. How do you handle Terraform state file conflicts in a team?
**What does terraform validate do?  
Can it be run before or after terraform plan?**

**When do you use terraform fmt?**

**Why do we store the Terraform state file in a remote backend?**

**Can we edit the state file in S3?  
What happens if it's modified during apply/execution?**
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
  25. Terraform meaning
    
26. Can we use Terraform for Google provider?
    
27. State file vs Remote state
    
28. Want to manage old infra now using Terraform — how?
    
29. Terraform provisioning
21. What’s the difference between a module and a resource?  
22. Explain what "terraform state" is and why it matters.  
23. How do you manage secrets in Terraform?  
24. What is the difference between terraform apply and terraform plan?  
25. How do you handle Terraform in a multi-environment setup? (dev / stage / prod)
  
What is the purpose of backend.tf?
EC2 created through Terraform was deleted by another user — how will you troubleshoot it?  
➤ What if your Terraform state file gets corrupted or deleted?  
➤ How do you fix “resource already exists” errors?
- What are providers, resources, and data sources?
- What is Terraform state and why is it important?
- Difference between local and remote state.
- How do you lock state to avoid conflicts?
- Difference between terraform plan, apply, and destroy.
- What’s terraform init used for?
- How do you use variables and outputs?
- What are modules and how do you create reusable ones?
- How do you manage secrets in Terraform?
- How do you handle drift detection?
- What is terraform import used for?
- How do you manage multiple environments (dev, stage, prod)?
- How do you use workspaces in Terraform?
- Difference between count and for_each.
- How do you use conditional expressions?
- How have you used Terraform and Ansible? Give a real example.
- How did you reuse Terraform code for different environments?
- How did you manage and use secrets securely when connecting to AWS/Azure?






















#terraform_practical 
Write Terraform backend configuration to:
Store state in an S3 bucket
Use DynamoDB for state locking
Write Terraform code to:
Use different state files for dev and prod
Write Terraform code to:
Run a shell script during EC2 creation using remote-exec
Write Terraform code to:
Copy a file to EC2 using file provisioner
Write Terraform code to:
Prevent accidental deletion of an EC2 instance
Write Terraform code to:
Replace resource without downtime
Write Terraform code to:
Create an EBS volume
Attach it to an EC2 instance
Write Terraform code to:
Modify EBS volume type without data loss
Create an EC2 module
Reuse it for dev, qa, and prod without duplication
Write Terraform backend configuration to:
Store state in an S3 bucket
Use DynamoDB for state locking
Write Terraform code to:
Use different state files for dev and prod
Write Terraform code to:
Run a shell script during EC2 creation using remote-exec
Write Terraform code to:
Copy a file to EC2 using file provisioner
Write Terraform code to:
Prevent accidental deletion of an EC2 instance
Write Terraform code to:
Replace resource without downtime
Write Terraform code to:

Show folder structure for:
Root module
Child EC2 module
- You’re trying to apply changes, but Terraform says “State is locked by another process.” How do you unlock safely without corrupting state?
- A Terraform apply partially succeeded — some resources were created, others failed. How do you recover and ensure consistency?
- You need to deploy resources into multiple AWS accounts using a single Terraform workspace. How will you design that set up securely?
- Different teams are using different versions of the same internal Terraform module, causing drift. How do you enforce consistent versions?
- And even before that how do you upgrade your Terraform version through Jenkins pipeline ( I mean Infra pipeline)? any versions you take and share?
- You need to move your Terraform state from local to an S3 backend with DynamoDB locking but without recreating resources. How will you perform this migration safely?
- You want to ensure that production resources can never be destroyed accidentally, even if someone runs terraform destroy. How do you enforce this?
- Your Terraform apply suddenly starts failing with “API rate limit exceeded” errors while creating AWS resources. How do you handle and prevent such issues in large-scale deployments?