https://github.com/rkm-ravi94/awesome-devops-interview/blob/main/terraform.md

1. Terraform deployment suddenly slows to a crawl. No errors, no drift.  
    1. What’s your step-by-step debug path before you touch code?
2. How do you manage unmanaged AWS resources in Terraform?
3. How do you pass arguments to a VPC while using the `terraform import` command?
4. What are the prerequisites before importing a VPC in Terraform?
5. If an S3 bucket was created through Terraform but someone manually added a policy to it, how do you handle this situation using IaC?
6. What is the difference between **terraform import** and **terraform taint**?
7. How do you manage secrets in Terraform without hardcoding them? ( How do you handle secrets securely in Kubernetes or Terraform?)
8. What’s the difference between **count** and **for_each**? Give a real-world use case.
9. How do you handle drift detection in Terraform?
10. What is a Terraform remote backend, and why is it important?
11. How do you manage multiple environments (dev, staging, prod) in Terraform?
12. Difference between **local-exec** and **remote-exec** provisioners.
13. How do you safely roll back infrastructure changes after a failed deployment?
14. Explain **terraform refresh vs terraform plan**.
15. How do you write reusable Terraform modules?
16. Terraform state conflicts - how do you prevent and recover?
17. Dynamic infra creation + auto-destroy - how would you automate it?
18. Secrets management - Terraform + AWS Secrets Manager combo.
19. Your Terraform state got corrupted during a backend migration. How will you recover? Rebuild strategy?
20. What would happen if the state file is deleted?
21. Write a Terraform configuration file to:  
    1. Create EC2 instances  
    2. Create VPCs  
    3. Create S3 buckets
22. Terraform script to provision an EC2 instance with a custom security group and user data script.
23. do you have experience to creating modules in Terraform? What is use of modules?
24. In Terraform You create 10 EC2 instances through Terraform, You deleted 2 EC2 instances manually in aws console what will happen next time when you apply Terraform apply command?
25. Do you store your Terraform state file locally or remotely? Why?
26. How do you update your Terraform state file to match current AWS resources? Which command will you use?
27. Can we do it with Terraform workspaces?
28. What does terraform init do?
29. Terraform apply failed in production. How do you fix it safely?  
30. How do you design a **multi-account AWS setup** with shared modules and centralized state management?
31. What’s your strategy to **manage provider version drift** across multiple repos and teams?
32. How do you handle **cross-region dependencies** (like S3 replication or RDS read replicas) in Terraform?
33. How do you implement **zero-downtime deployments** using Terraform?
34. How would you **refactor a monolithic Terraform repo** into modular stacks for scalability?
35. How do you **secure and lock the state file** when multiple users collaborate via S3 + DynamoDB?
36. How do you enforce **compliance and governance** using Sentinel or OPA with Terraform Cloud?
37. What’s your approach to **migrating from Terraform OSS to Terraform Cloud** with minimal disruption?
38. How do you integrate Terraform into **CI/CD pipelines** for environment promotions (dev → prod)?
39. How do you manage **secret rotation and injection** using Vault or AWS Secrets Manager?
40. How do you perform **infra changes without downtime** - especially for autoscaling or load balancers?
41. How do you **test Terraform code** for logic, drift, and policy compliance?
42. How do you design a **multi-cloud Terraform setup** (AWS + Azure + GCP) with shared modules?
43. How do you ensure **idempotency** and prevent unwanted re-creations during apply?
44. How do you design **blue-green or canary infrastructure rollouts** using Terraform and pipelines?
45. How do you manage sensitive data in Terraform?  
46. How do you securely manage Terraform state (especially in a team setup)?  
47. How do you detect and handle Terraform drift in production?  
48. How do you enforce cost control using Terraform?  
49. How do you test Terraform code before pushing to production?  
50. What are the best practices you follow in your current project?
51. How do you manage Terraform provider versioning?
52. How would you provision infra across 10 AWS regions simultaneously?
53. What to do when your Terraform state file becomes too large?
54. Terraform plan shows destroy + recreate for a critical DB — how to prevent downtime?
55. How do you use Terraform to create cloud resources?
56. How do you configure an Ansible agent?
57. How do you create IAM roles in Terraform? (modules/templates?)
58. How do you manage Terraform state in a team environment?  
59. • What happens internally during terraform apply?  
60. • Explain Terraform modules with a practical scenario.  
61. • How do you prevent accidental deletion of resources?  
62. • How do you fix drift when changes are made manually on AWS?
63. • What happens during terraform plan?  
64. • Why do we lock the state file?  Explain state locking in Terraform - why is it important?
65. • What is a data source in Terraform?
66. • How do you recover from a deleted Terraform state file?  
67. • How do you create 50 EC2 instances with different configurations using dynamic blocks?
68. • Live Coding Task: Write Terraform code to create a VPC with all its components and provision an RDS database within that VPC.
69. How do you use Terraform in Jenkins pipelines? 
70. How do you manage Terraform state in CI/CD?
71. How do you ensure safe Terraform apply in production? 
72. How do you implement approval before Terraform apply?
73. Securing Terraform state files  
74. Remote backend configuration  
75. What is null_resource?
76. How do you secure a Terraform state file?
77. Deploying EC2 using existing VPC + SG (explained the blocks, not full code)
78. Terraform Lifecycle blocks
79. AWS + Terraform:
80. What parameters do you consider while creating an EC2 using Terraform?
81. How do you create EC2 in a specific VPC and subnet? How do you attach Security Groups to EC2?
82. How do you attach an IAM role to EC2?
83. How do you run scripts during EC2 creation?
84. How do you provision EBS volumes using Terraform? How do you change EBS volume type (gp3 → io1)? Will data be lost when modifying EBS type?
85. Security & Secrets:
86. How do you integrate Terraform with AWS Secrets Manager?
87. How do you prevent secrets from leaking into logs? How do you mark outputs as sensitive?
88. Troubleshooting & Debugging :
89. Terraform plan shows unexpected changes - how do you debug?
90. Terraform apply fails midway -what happens to
91. resources?
92. How do you import existing resources into Terraform? What is terraform taint?
93. What is terraform refresh?
94. How do you handle secrets securely in Kubernetes or Terraform?
95. What happens when a Terraform apply fails halfway?
96. Explain state locking in Terraform - why is it important?
97. State Management:
98. What are the problems with local state? What is remote backend in Terraform? #state
99. How do you store state securely? #state 
100. What happens if the state file is deleted accidentally? #state
101. How do you recover a lost state file? #state
102. What is state locking? #state
103. How does T
104. Environment Management:
105. How do you manage multiple environments (Dev, QA, Prod) in Terraform? #env
106. What are Terraform workspaces? #env 
107. When should you avoid using workspaces? #env 
108. How do you handle environment-specific variables? How do you structure Terraform  code for multiple environments? #env 
109. Advanced Resource Control:
110. How do you prevent resource deletion in Terraform? What is lifecycle block?
111. What is create_before_destroy?
112. What is prevent_destroy?
113. How do you modify only tags without recreating the resource?
114. Why does Terraform plan show resource replacement?
115. ✅ How do you design Terraform modules that support rapid environment cloning for new projects?  
116. ✅ What's your strategy for handling breaking changes in IaC without impacting production?  
117. ✅ How do you manage shared infrastructure components (VPCs, IAM, logging) across teams?  
118. ✅ How do you validate Terraform plans automatically before approvals?
119. How did you use Terraform workspaces in your project? Can you explain the folder structure?
120. Can you write a Terraform module for creating a VPC?
121. How do you structure Terraform for multi-environment deployments (dev/stage/prod)?
122. What happens internally during terraform plan & apply?
123. How do you resolve state locking issues or partial apply failures?
124. How do you detect and fix drift in Terraform-managed infrastructure?
125. How do you design reusable Terraform modules for microservices?
126. What strategies do you use for managing Terraform state in a team? How do you handle state locking and backups in Azure?
127. Explain the differences between terraform plan, terraform refresh, and terraform apply. When should each be used?
128. How do you modularize Terraform for large-scale projects? Give examples.
129. How do you detect and resolve drift in Terraform-managed resources?
130. Explain how to set up remote Terraform backends in Azure (Blob Storage) and enable state locking with Azure CosmosDB or similar.
131. Show a use-case for for_each vs count in a real Terraform deployment. When should dynamic blocks be preferred?
132. Explain the purpose and real-world use of lifecycle blocks (prevent_destroy, create_before_destroy) in Terraform.
133. What is a Terraform workspace?
134. What is a Terraform backend?
135. What is a null_resource?
136. What are the types of provisioners? (local-exec, remote-exec, file)
137. 1 What is Terraform state, and why is it so critical in team environments?  
138. 2 What is the difference between terraform plan and terraform apply?  
139. 3 How do you store and manage sensitive values in Terraform?  
140. 4 How does Terraform handle resource dependencies automatically?  
141. 5 When should we use Workspaces instead of separate repositories for environments?  
142. 6 What are data sources, and how do you use them in real-world scenarios?  
143. 7 Explain count vs for_each — when do you prefer each one?  
144. 8 How do you design a reusable Terraform module?  
145. 9 What does terraform refresh do internally?  
146. 10 How do you import existing cloud resources into Terraform state?  
147. 11 What is the purpose of lifecycle rules like create_before_destroy?  
148. 12 What does it mean to “taint” a resource, and how do you fix it?  
149. 13 How do you organize Terraform code for dev/staging/prod environments?  
150. 15 How do you debug failures during a terraform apply?
151. Terraform statefile stored locally, infra applied, and statefile deleted — how do you recover?
152. What happens if 50 users run Terraform simultaneously?
153. Terraform modules — explain structure and reusability.
154. Write a Terraform script for VPC architecture (production-ready).
155. How do you unlock a Terraform state lock?
156. What are Terraform workspaces and when do you use them?
157. Explain Terraform state file and its importance.
158. How do you manage remote state?
159. Difference between Terraform `taint` and `replace`.
160. How do you handle Terraform state file conflicts in a team?
161. **What does terraform validate do?  
162. Can it be run before or after terraform plan?**
163. **When do you use terraform fmt?**
164. **Why do we store the Terraform state file in a remote backend?**
165. **Can we edit the state file in S3?  
166. What happens if it's modified during apply/execution?**
167. **What does terraform validate do?  
168. Can it be run before or after terraform plan?**
169. **When do you use terraform fmt?**
170. **Why do we store the Terraform state file in a remote backend?**
171. Cloud: Azure,Aws,GCP (hands-on is must in all 3). Certification doesnt matter anymore.
172. Scripting: bash,powershell,python
173. Repositories: GIT is preferred but other repos also fine.
174. Ci/Cd pipeline: Jenkins(preferred), agrod (for kubernetes), gitworkflow
175. Containers: Docker ,kubernetes - helm charts, istio mesh
176. Monitoring: prometheus, grafana, data dog
177. IAC tool: Terraform
178. Environment: Able to manage hybrid setup and linux troubleshooting is a must.
  179. Terraform meaning
180. Can we use Terraform for Google provider?
181. State file vs Remote state
182. Want to manage old infra now using Terraform — how?
183. Terraform provisioning
184. What’s the difference between a module and a resource?  
185. Explain what "terraform state" is and why it matters.  
186. What is the difference between terraform apply and terraform plan?  
187. How do you handle Terraform in a multi-environment setup? (dev / stage / prod)
188. What is the purpose of backend.tf?
189. EC2 created through Terraform was deleted by another user — how will you troubleshoot it?  
190. ➤ What if your Terraform state file gets corrupted or deleted?  
191. ➤ How do you fix “resource already exists” errors?
192. What are providers, resources, and data sources?
193. What is Terraform state and why is it important?
194. Difference between local and remote state.
195. How do you lock state to avoid conflicts?
196. Difference between terraform plan, apply, and destroy.
197. What’s terraform init used for?
198. How do you use variables and outputs?
199. What are modules and how do you create reusable ones?
200. How do you handle drift detection?
201. What is terraform import used for?
202. How do you manage multiple environments (dev, stage, prod)?
203. How do you use workspaces in Terraform?
204. Difference between count and for_each.
205. How do you use conditional expressions?
206. How have you used Terraform and Ansible? Give a real example.
207. How did you reuse Terraform code for different environments?
208. How did you manage and use secrets securely when connecting to AWS/Azure?







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