What are the main components ot the ELK stack?  
What is the use of Helm in Kubernetes?  
What is Docker?  
AWS Cloud  
Difference between ALB and NLB?  
What is Route 53 and why do we use it?  
What is a Target Group in AWS?  
Difference between GP2 and GP3 volumes?  
What are T-Series EC2 instances and why are they used?  
What is EFS? How do you connect to it and why is it used?  
What is an Internet Gateway (IGW) and why is it needed?  
How do you restrict access from a specific IP or region?  
Difference between a Security Group and a NACL?  
CI/CD, DevOps & Terraform  
What are the main stages in a CI/CD pipeline?  
What is Terraform and how do you use it?  
How do you recover an EC2 instance if the key pair is lost?  
What is Jenkins? How does it work? What are the key steps in a Jenkins pipeline?  
Linux & Shell Scripting  
Why is it incorrect to introduce yourself with “Myself...” in an interview?  
How do you print the current date and time in a shell script?  
How do you view the contents of a ZIP file without extracting it?  
What does Linux permission 755 mean?  
Which command is used to change file or directory permissions?  
Which command is used to create a new Linux user?  
How do you check all active network ports on a Linux system?  
Linux is a CLI-based OS — what type of shell does it use?  
Where should environment variables be stored?
Networking & Protocols  
What is SMTP? What are its uses and types?  
DNS uses which protocols — TCP, UDP, or HTTPS?  
What are the common HTTPS API methods?
Logging, Monitoring & Kubernetes  
What are the main components of the ELK stack?  
What is the use of Helm in Kubernetes?  
What is Docker?
AWS Cloud  
Difference between ALB and NLB?
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
🔷 2. Terraform apply failed in production. How do you fix it safely?  
🔷 3. Your CI/CD pipeline failed after a code push. How do you handle it?  
🔷 4. Application latency suddenly increased. What checks do you perform?  
🔷 5. EKS pods are not autoscaling even under high traffic. What could be the issue?  
🔷 6. How do you ensure zero-downtime deployments for critical applications?  
🔷 7. CPU usage is continuously high in your cluster. What actions will you take?  
🔷 8. Your Docker image size is too large. How will you reduce it?  
🔷 9. ArgoCD shows “OutOfSync”. What does it mean and how do you resolve it?  
🔷 10. A CloudWatch alarm is triggered in production. What is your first step?  
🔷 11. Blue-green deployment failed to switch traffic. How do you troubleshoot?  
🔷 12. Jenkins pipeline is stuck at one stage. What’s your debugging approach?  
🔷 13. Application pods are running but the service is not reachable. What do you check?
🔷 14. Terraform state is corrupted. How will you recover?  
🔷 15. Kubernetes pods are in CrashLoopBackOff. What is your root-cause approach?  
🔷 **16. Draw the AWS VPC Architecture for a 2-Tier/3-Tier application. (EKS/EC2, ALB, RDS, Subnets, IGW)**  
🔷 17. Draw and explain your E-Commerce project architecture end-to-end. (VPC, subnets, ALB, EC2/EKS, RDS, S3, ECR, CI/CD)
1. List the Git commands you use in your daily work, including the most important ones.
2. What is a Git tag? Why do we use it?    
3. What are Jenkins Shared Libraries? Have you used them in your projects? How do they work?   
4. Describe the pipeline stages you currently use in your project. What are the stages and their flow?   
5. Explain Kubernetes objects or components.   
6. If you have one Kubernetes node running two pods (Pod-A and Pod-B), and you want your application to always run on Pod-B, how would you ensure that?
7. Have you worked with an Ingress Controller? What does it do?
Since both Ingress and Load Balancers seem to serve similar purposes, why do we need both? Can we rely on only one?
8. Describe the toughest situation you faced while working with Kubernetes. How did you identify and resolve the issue?
9. What is the difference between a hypervisor and the Docker daemon? Which do you think is more secure—VMs or containers?
10. What is a Docker image? How do you create and use one?
11. What is Docker Compose? Why do we use it? What is the difference between Docker and Docker Compose?
12. How does Ansible work? What mechanism does it use? Have you written any playbooks?
13. Where do you store server names and IPs in Ansible? How do you reference them? What is the directory structure of Ansible, and where do you store your files?
14. What are your day-to-day SRE activities? You mentioned you are also working as a DevOps engineer on another project — what are your daily tasks there?
15. You mentioned you work on vulnerability remediation with SLAs. If a critical vulnerability SLA is breached, what happens from a system or management perspective?
16. What shell scripts have you developed in your organization, and how do they help your team?
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
1. Explain your Day to Day activities   
2. Do you have hands-on in Linux? If yes, Which Platform?   
3. What is the latest version of Ubuntu?    
4. I have index.html on GitHub, I need to push it into aws. The requirement is one load balancer is required and we provide index.html in GitHub repo and we provide username and token. How to achieve this?   
5. what is dependinces resources for the IP?    
6. What is the command to connect EC2 instance?   
7. How to implement Internet gateway?    
8. How to configure internet gateway to route table?    
9. What is the exact command to log in the instance and what kind of authentication will you use ? Do you need password to provide or something else ?    
10. In which path will you create index.html in Server ?   
11. Explain Most common linux Commands   
12. How to check one running process?    
13. How to list running process?  
14. You need to find one particular process id and how to kill that? Is it possible in single command?   
15. How to check disk usage?    
16. How to find free memory?  
17. How do you archive and compress directory in Linux?   
18. Chmod 755 means?    
19. If I provide chmod 755 means, what exactly will happen?   
20. what is chown ?   
21. How to list all ssh users in Linux?    
22. If one apache server is running, I need to check logs? where do I check? In which directory?    
23. what kind of logs can see in /var/log ?    
24. Purpose of Grep command?  
25. I need to grep keyword:linux. Expect the keyword linux, I need to list out all the lines from the linux.txt file. which flag will you used with grep?    
26. Difference between "cron" and "at" ?   
27. How to schedule activity in Linux and you need to run a script every 5 minutes?    
28. Explain Git pull and Git Fetch    
29. How do you resolve merge conflict?    
30. How to create custom image in Docker ?    
31. Elaborate Docker file.    
32. What is the prerequisites of "docker build" command?    
33. How do copy file from the container to host ?    
34. what if we put "COPY ." ? what will happen in background? what is the source and destination here ?    
35. what is Route 53?   
36. Is it possible to purchase a domain in route 53 ?   
37. What is the configuration file of Prometheus?    
38. Where can I setup the alerting? In Prometheus or Grafana?    
39. I want to configure one alerting disk Usage of one of the server reaches 80%, it should alert sms? where can I do these configuration?    
40. How to generate token in GitHub? Explain    
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
Q1. How do you check CPU & memory usage in Linux?  
🔹 Q2. What’s the difference between kill, pkill, and killall commands?  
🔹 Q3. What’s the difference between a process and a thread?  
🔹 Q4. How do you find which process is using a specific port?  
🔹 Q5. How do you check disk usage and identify large files?  
🔹 Q6. How do you schedule jobs in Linux?  
🔹 Q7. What is the difference between a hard link and a soft link?  
🔹 Q8. How do you monitor logs in real-time in Linux?  
🔹 Q9. What are some ways to secure a Linux server?  
🔹 Q10. How do you manage services in Linux (start/stop/status)?  
🔹 Q11. What’s the difference between /etc/passwd and /etc/shadow?  
🔹 Q12. How do you check which users are currently logged in?  
🔹 Q13. How do you find the top 10 memory-consuming processes?  
🔹 Q14. What is the difference between chmod, chown, and chgrp?  
🔹 Q15. How do you troubleshoot high load on a Linux server?  
🔹 Q16. How do you add a new user and set password policies in Linux?  
🔹 Q17. What’s the difference between SELinux and AppArmor?  
🔹 Q18. How do you check network connectivity and open ports in Linux?  
🔹 Q19. How do you create and extract .tar.gz files?  
🔹 Q20. After patching the server, it is showing a kernel panic error. What could be the possible causes of this issue, and how would you troubleshoot and resolve it?
What is the difference between Bash and Sh, and when should each be used?
🔹 What is the difference between an Application Load Balancer (ALB) and a Network Load Balancer (NLB)? When would you use each?
🔹 What is the difference between Horizontal Pod Autoscaler (HPA) and Vertical Pod Autoscaler (VPA) in Kubernetes?
🔹 Can you describe a real-time issue you have faced in a project and how you resolved it?
🔹 Your Jenkins pipeline takes 45 minutes to complete — how would you reduce the execution time?
🔹 How do you store secrets in a CI/CD pipeline?
Q1. How do you check CPU & memory usage in Linux?  
🔹 Q2. What’s the difference between kill, pkill, and killall commands?  
🔹 Q3. What’s the difference between a process and a thread?  
🔹 Q4. How do you find which process is using a specific port?  
🔹 Q5. How do you check disk usage and identify large files?  
🔹 Q6. How do you schedule jobs in Linux?  
🔹 Q7. What is the difference between a hard link and a soft link?  
🔹 Q8. How do you monitor logs in real-time in Linux?  
🔹 Q9. What are some ways to secure a Linux server?  
🔹 Q10. How do you manage services in Linux (start/stop/status)?  
🔹 Q11. What’s the difference between /etc/passwd and /etc/shadow?  
🔹 Q12. How do you check which users are currently logged in?  
🔹 Q13. How do you find the top 10 memory-consuming processes?  
🔹 Q14. What is the difference between chmod, chown, and chgrp?  
🔹 Q15. How do you troubleshoot high load on a Linux server?  
🔹 Q16. How do you add a new user and set password policies in Linux?  
🔹 Q17. What’s the difference between SELinux and AppArmor?  
🔹 Q18. How do you check network connectivity and open ports in Linux?  
🔹 Q19. How do you create and extract .tar.gz files?  
🔹 Q20. After patching the server, it is showing a kernel panic error. What could be the possible causes of this issue, and how would you troubleshoot and resolve it?
- We have an application hosted on an EC2 instance. How would you ensure high availability of the applications?
- The application is experiencing high latency. How would you troubleshoot it?
- There are two instances hosting applications, instance A (legacy) and instance B (new). You want to route all incoming traffic from instance A to instance B. But users complain they can’t access the new application. What would you check?
- One of the instances is a t2.micro, and you need to upgrade it to a t5.large. How would you perform this, especially if it’s part of an Auto Scaling Group?
- What is the CI/CD process?
- What are all the stages included in a Jenkins pipeline?
- [Scripting Challenge] Write a Jenkins pipeline to create S3 buckets in 3 different regions using Terraform.
- If you’re familiar with GitHub Actions or GitLab, can you write a similar pipeline?
- Can you write deployment or service files for Kubernetes or similar CI/CD setups, or Docker files?
- Write a Terraform configuration file to:  
    Create EC2 instances  
    Create VPCs  
    Create S3 buckets
- What is GitOps and its advantages?
- You are trying to push files to a Git repository using git push, but it’s throwing an error. What would you do, and what’s the difference between git fetch and git pull?
- How would you resolve repo issues involving cached files?
- What is the difference between Git Squash and Git Stash?
- How do you upgrade a Kubernetes cluster? What’s the correct upgrade order?
- How many master nodes would you choose if you have to design a self-hosted Kubernetes cluster?
- Why is it recommended to have 3 master nodes?
- Have you ever performed cost optimization? How did you approach it?
- How do you troubleshoot application anomalies and provide RCA?
- What would you do if an EC2 instance is running above 80% threshold usage?
- What is AWS Global Accelerator?
- What’s the difference between CUP and CIP?
- What is SAST and DAST?
- /var partition is 90% full. What’s your immediate action?
- You’re locked out via SSH with no root access. How do you recover?
- Add 50GB to /opt using LVM without any downtime. What are the steps?
- Jenkins is failing to push a Docker image to the registry. How do you troubleshoot?
- Ansible playbook times out on one host out of twenty. What do you check?
- EC2 instance is unreachable, and it’s not a security group issue. What’s your next step?
- An S3 bucket was made public by mistake. How do you secure and audit it?
- RDS migration with minimal downtime — how would you approach it?
- CI/CD pipeline needs rollback capability. How would you implement it?
- Write a shell script that checks if a service is running, restarts it if not, and logs the event.
- Terraform script to provision an EC2 instance with a custom security group and user data script.
- Design a highly available backend on AWS — what services and architecture would you use?
- what is your roles and responsibilities?
- what is git cherrypic? What is the use
- what is git hard reset and soft reset
- in jenkins how can get back configurations if we lost
- in Your they creates multiple pipeline how triggered  
    6.what is difference between VM and docker?  
    7.imagine your docker container is running all of sudden it is not respond, how do you troubleshoot  
    8.what is default network in docker?
- Explain docker network?
- Explain Kubernetes architecture ?
- Imagine in your company Kubernetes cluster running? for this one of node is unresponsive what kind of steps you take?
- do you have experience to creating modules in Terraform? What is use of modules?
- In Terraform You create 10 EC2 instances through Terraform, You deleted 2 EC2 instances manually in aws console what will happen next time when you apply Terraform apply command?
- Explain Kubernetes services?
1. Self-Introduction
2. What is VPC peering?
3. Explain the roles of the Kubernetes master node and worker node.
4. When creating an EC2 instance, can multiple security groups be applied? If so, how do they work together?
5. Describe how to write a Jenkins CI/CD pipeline using Notepad.
6. Explain commonly used Git commands.
7. How do you add Kubernetes into a CI/CD pipeline?
8. How many load balancers are used in your project?
9. Which load balancer did you use in your project?
10. What is a VPC endpoint?
11. How do you maintain high availability for your applications?
12. How do you check disk space on a server?
13. How do you check which folders or directories are consuming the most space?
14. If I want to create a file on a server that has space available but receive an error when creating a directory or file, what could be the reason?
15. What is the command to create a tar file?
16. How do you check the size of a zip file? What is the command to do so?
17. Explain the file system hierarchy in Linux.
18. When you create a user on a system, where is the user's password stored?Which files are updated when creating a user?
19. What is kubectl?
20. What does "demonstrate" mean in a technical context?
21. What is a deployment YAML file? Explain horizontal and vertical pod scaling.
22. What is readiness in Kubernetes?
23. What are the key components of Kubernetes?
24. What is a shell script, and how do you use it?
25. Which tools and technologies are you currently using?
26. What is an IAM user? What is Route 53? How are they different?
7. If I want to provide full access to an instance (for multiple resources like Route 53 and S3), what is the best way to do this? Should I use the root account?
28. You created an EC2 instance and provided full access. What precautions would you take in this scenario?
29. Explain the process of creating a VPC.
30. What is the CIDR range (min and max) for creating an EC2 instance?
31. How to install Tomcat on a server.
32. What are the deployment strategies in Kubernetes, and which one have you worked with?
33. How many IP addresses are available in the CIDR range 10.0.0.0/16 and 10.0.0.0/24?
34. What is a ReplicaSet?
- Describe your daily activities in your current role.
- Have you worked with Jenkins CI/CD pipelines?
- How many tools have you used in your role as a DevOps engineer?
- How many tools have you worked with for CI/CD?
- Have you worked with Ansible configuration management tools?
- What is containerization? Explain.
- Have you worked with Kubernetes?
- What are the different ways to provide security in your applications?
1️⃣ You mentioned you’ve worked with Argo CD — how do you use it?
2️⃣ There’s a scenario where someone wants to deploy infrastructure on AWS via Terraform. Which tool will you use and why?
3️⃣ How do you maintain Argo CD and use it to deploy on Kubernetes?
4️⃣ How do you manage rollbacks of an application in Argo CD?
5️⃣ In Kubernetes, how many master and worker nodes you had configure?
6️⃣ Would you use an entirely different AWS account, a separate cluster, or just a namespace to differentiate Dev and Prod?
7️⃣ If you have 1 master node and 1 worker node running an application, how would you upgrade Kubernetes on both?
8️⃣ Do you store your Terraform state file locally or remotely? Why?
9️⃣ If you deployed 12 EC2 instances and 2 were deleted manually, what happens when you run terraform apply again?
🔟 How do you update your Terraform state file to match current AWS resources? Which command will you use?
1️⃣1️⃣ How would you deploy to multiple AWS accounts like Dev, UAT, and Prod?
1️⃣2️⃣ Can we do it with Terraform workspaces?
1️⃣3️⃣ What does terraform init do?
1️⃣4️⃣ If an EC2 instance has an IAM role to access S3 but gets “Permission Denied,” how do you troubleshoot?
1️⃣5️⃣ You use ALB for EKS external traffic — how do you manage traffic inside EKS to different paths?
1️⃣6️⃣ For cost optimization, how do AWS Savings Plans work?
1️⃣7️⃣ You use rolling updates for deployments, but what if you want to use a Blue-Green approach with Argo CD inside Kubernetes?
1️⃣ What is the difference between Agile and DevOps methodology?  
2️⃣ What are the stages in the DevOps lifecycle?  
3️⃣ What is the difference between Continuous Integration (CI) and Continuous Delivery/Deployment (CD)?  
4️⃣ What are Docker volumes, and how are they used?  
5️⃣ Explain the architecture of Docker.  
6️⃣ What is Configuration Management, and have you used Ansible or Puppet?  
7️⃣ Tell me about yourself and your experience.  
8️⃣ What is Git, and how do you revert back changes that have been pushed?  
9️⃣ What is Git Bash?  
🔟 Do you know Python scripting?  
1️⃣1️⃣ What is a challenge you faced recently in your project, and how did you resolve it?  
1️⃣2️⃣ What is scaling, and explain horizontal vs vertical scaling.  
1️⃣3️⃣ What is Terraform, and how do you use it in your environment?  
1️⃣4️⃣ Explain the types of Kubernetes services.  
1️⃣5️⃣ How do you troubleshoot ImagePullBackOff and CrashLoopBackOff errors in Kubernetes?  
1️⃣6️⃣ How do you design security in your project for CI/CD pipelines?
🔹 What is the difference between Bash and Sh, and when should each be used?
🔹 What is the difference between an Application Load Balancer (ALB) and a Network Load Balancer (NLB)? When would you use each?
🔹 What is the difference between Horizontal Pod Autoscaler (HPA) and Vertical Pod Autoscaler (VPA) in Kubernetes?
🔹 Can you describe a real-time issue you have faced in a project and how you resolved it?
🔹 Your Jenkins pipeline takes 45 minutes to complete — how would you reduce the execution time?
🔹 How do you store secrets in a CI/CD pipeline?
🔹 Your Docker image size is 10 GB — how can you reduce the image size?
🔹 If you want to learn a new tool or technology, how would you approach it?
🔹 You have hosted an application on a Linux server — how would you migrate it to a serverless architecture?
🔹 What is the difference between a SaaS application and an Enterprise application?
🔹 What is a Cold Start in AWS Lambda?
🔹 If you get a chance, what questions would you ask the interviewer about the company or project?
🔹 Why do you want to switch to this company, and how can we trust you won’t leave soon?
- What is the difference between Agile and DevOps methodology?
- What are the stages in the DevOps lifecycle?
- What is the difference between Continuous Integration (CI) and Continuous Delivery/Deployment (CD)?
- What are Docker volumes, and how are they used?
- Explain the architecture of Docker.
- What is Configuration Management, and have you used Ansible or Puppet?
- Tell me about yourself and your experience.
- What is Git, and how do you revert back changes that have been pushed?
- What is Git Bash?
- Do you know Python scripting?
- What is a challenge you faced recently in your project, and how did you resolve it?
- What is scaling, and explain horizontal vs vertical scaling.
- What is Terraform, and how do you use it in your environment?
- Explain the types of Kubernetes services.
- How do you troubleshoot ImagePullBackOff and CrashLoopBackOff errors in Kubernetes?
- How do you design security in your project for CI/CD pipelines?
- You’re managing multi-tenant Jenkins on AWS + Azure.  
    How do you isolate client pipelines securely while sharing infrastructure resources efficiently?
- Terraform deployment suddenly slows to a crawl. No errors, no drift.  
    What’s your step-by-step debug path before you touch code?
- One app’s pods restart daily at 2 AM — no crash loops, no OOMs.  
    Where do you start: CronJobs, readiness probes, HPA events, or the node scheduler?
- You’re asked to integrate vulnerability scanning across Jenkins, GitHub Actions, and Azure DevOps.  
    What’s your architecture for consistent reporting and minimal false positives?
- During an overnight release, an Ansible playbook wipes a shared NFS mount.  
    How do you triage, contain, and recover without triggering client downtime?
- Your Kubernetes cluster’s etcd snapshot restore works, but pods don’t reconcile properly afterward.  
    What’s your recovery approach?
- Jenkins builds fail randomly with “workspace busy.”  
    Walk through your RCA chain from file locking to agent containerization.
- A new Vault policy update breaks CI secrets rotation mid-deploy.  
    How do you roll back safely without re-exposing credentials?
- You’ve been asked to set up a highly available Kubernetes cluster for a production environment. How would you approach it?
- How do you synchronize or set the correct system time on a Linux server?
- What is the use of `top` and `htop` commands in Linux? When would you use each?
- What is the difference between `head` and `tail` commands? Write the syntax for each.
- How can you connect to and interact with a Kubernetes cluster without using `kubectl`?  
    Or, if `kubectl` is not available, how can you access the cluster or get information from the API?
- What methods can be used to set up a Kubernetes cluster (e.g., kubeadm, kOps, managed services)? Which one would you choose and why?
- Explain a complete CI/CD pipeline and its stages.
- Write a CI/CD pipeline for a Node.js application and explain each stage.
- How would you set up Node.js on a Linux system for a new project?
- What is the purpose of `tail` and `head` in log monitoring? Provide basic syntax examples.
- A production server in your fleet is showing the wrong time. How would you synchronize the system clock with an NTP server?
- You are troubleshooting a large log file and need to view the top and bottom portions quickly. What is the use of `head` and `tail` commands, and how would you write the syntax for each?
- What is the difference between Scripted and Declarative Jenkins pipelines, and when would you use each?
- What is a Jenkinsfile and how is it used in a CI/CD pipeline?
- Can you write a Jenkinsfile that includes Build, Environment setup, Testing, and Deployment stages, and explain each stage?
- Write a Dockerfile using Ubuntu as the base image, and install Python. Explain each instruction used.
- What is the difference between CMD and ENTRYPOINT in Docker? Provide examples of when to use each.
- Explain the difference between ADD and COPY in a Dockerfile.
- What is the Docker command to build an image from a Dockerfile? Also, explain the flags commonly used.
- How do you set up Jenkins from scratch on a fresh server?
- What are the different ways to trigger a Jenkins pipeline automatically?
- Have you ever encountered the "detached HEAD" state in Git? What causes it, and how do you resolve it?
- If you need to give a specific team member access to a GitHub repository, how would you do that?
- How do you grant write permissions to a contributor in a GitHub repository?
- How do you find the OS version on a Linux system using the command line?
- How do you search for a specific file inside subfolders in Linux?
- What is the difference between Public and Private repositories in GitHub? When would you use each?
- How do you set up a GitHub Webhook to trigger Jenkins jobs?
- Explain how Git squash works. When would you use it, and what command do you run?
- Describe the Git merge process. How do you resolve merge conflicts?
- How do you install Jenkins plugins? What are the most commonly used plugins in a CI/CD setup?
- What is the difference between Docker and Kubernetes? How do they complement each other in production?
- How would you load balance 3–4 servers running services? Which type of load balancing is preferred and why?
- In Nginx, how do you persist a client connected to a specific server?
- With sticky session & IP hash enabled — what happens if a server goes down?
- How does header management work in Nginx?
- Some APIs are unsecured behind an API Gateway — how would you secure them?
- How does ArgoCD work in a CI/CD pipeline, and why is it used?
- As a DevOps engineer, how do you detect and measure security vulnerabilities for a company?
- How do you manage different environments (dev, staging, prod) in CI/CD?
- What is a Pod in Kubernetes? Create a `pod.yaml` for a single-container pod running Nginx.
- What is a Deployment in Kubernetes? Write a `deployment.yaml` for deploying 3 replicas of an Nginx container.
- What is a Service in Kubernetes, and what are the types of Services?
- When would you use each type of Kubernetes Service (ClusterIP, NodePort, LoadBalancer, ExternalName)?
- Write a simple Terraform script to provision a virtual machine on AWS.
- Explain `port`, `targetPort`, and `nodePort` in a Kubernetes service.
- How would you expose a Kubernetes application externally?
- What is Helm, and what are its components (Chart, Repository, Release)?
- What is the difference between `EXPOSE` in a Dockerfile and `docker run -p`?
- How do you run Nginx on a Linux server using Docker?
- Explain HTTP, HTTPS, TCP, and UDP with examples.
- What is a Dockerfile? Write a basic Dockerfile for a Node.js application.
- What is a base image in Docker? Which base image would you use for Python or Node.js?
- How do you check for open ports on a Linux system?
- What are the benefits of using a firewall?
- What is the use of Ingress and Ingress Controller in Kubernetes?
- Explain the Kubernetes controllers: Deployment, StatefulSet, ReplicaSet, and DaemonSet.
- What is the difference between Deployment and ReplicaSet?
- What are Kubernetes Probes (Liveness, Readiness, Startup)?
- What is the difference between Stateful and Stateless applications? Give examples.
- What are Namespaces in Kubernetes?
- What is Port Forwarding in Kubernetes
- What are your daily responsibilities as a DevOps engineer?
- Have you worked with monitoring and logging tools like Prometheus, Grafana, or ELK Stack?
- Can you describe the CI/CD workflow in your project?
- How do you handle the continuous delivery (CD) aspect in your projects?
- What methods do you use to check for code vulnerabilities?
- What AWS services are you proficient in
- How would you access data in an S3 bucket from Account A when your application is running on an EC2 instance in Account B?
- How do containerisation technologies like Docker and Kubernetes simplify application deployment and management?
- How do you provide access to an S3 bucket, and what permissions need to be set on the bucket side?
- How can Instance 2, with a static IP, communicate with Instance 1, which is in a private subnet and mapped to a multi-AZ load balancer?
- For an EC2 instance in a private subnet, how can it verify and download required packages from the internet without using a NAT gateway or bastion host? Are there any other AWS services that can facilitate this?
- What is the typical latency for a load balancer, and if you encounter high latency, what monitoring steps would you take?
- If your application is hosted in S3 and users are in different geographic locations, how can you reduce latency?
- Can you share an example of a complex automation script you've written?
- How do you approach troubleshooting and debugging automation scripts?
- Which services can be integrated with a CDN (Content Delivery Network)?
- How do you dynamically retrieve VPC details from AWS to create an EC2 instance using IaC, can you write the code?
- How do you manage unmanaged AWS resources in Terraform?
- How do you pass arguments to a VPC while using the `terraform import` command?
- What are the prerequisites before importing a VPC in Terraform?
- If an S3 bucket was created through Terraform but someone manually added a policy to it, how do you handle this situation using IaC?
- Have you upgraded any Kubernetes clusters?
- How do you deploy an application in a Kubernetes cluster?
- How do you communicate with a Jenkins server and a Kubernetes cluster?
- Do you only update Docker images in Kubernetes, or do you also update replicas, storage levels, and CPU allocation?
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
- What is a Static IP and a Public IP?
- What is the difference between a Security Group and a Network ACL (NACL)?
- What are policies in AWS, and what are the types of policies?
- How do you create S3 Cross-Region Replication (CRR)?
- If there are two S3 buckets Bucket A (source) and Bucket B (destination) and a file in Bucket A is accidentally deleted, what happens in Bucket B?
- Explain what happens in this case.
- What is Virtualization?
- What is Containerization?
- What is a Dockerfile?
- Could you please write a Dockerfile?
- What is a Docker network?
- What is the default Docker network?
- How do you create a Docker network?
- How do you create a Docker container?
- How do you run a Dockerfile? Please give the commands.
- What is a Deployment in Kubernetes?
- How would you explain a Kubernetes Pod in a way that a 5 year old children can understand?
- What are the types of Deployments in Kubernetes?
- What is a StatefulSet in Kubernetes?
- What is a DaemonSet, and how is it used?
- What is a Service in Kubernetes?
- What is a LoadBalancer and an Ingress Controller in Kubernetes?
- What is the difference between a LoadBalancer and an Ingress Controller?
- Can you create a Pod without a Deployment?
- Can you write a Terraform script? Please write a Terraform script for EC2 and S3.
- Briefly explain the Terraform script you wrote.
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
- Difference Between Classic Load Balancer and Application Load Balancer on AWS?
- Auto Scaling: What Are the Configuration Options and Parameters?
- What is User Data in EC2?
- How do you upload/download to S3 bucket privately from EC2?
- CI/CD pipeline design - explain your multi-env setup (Dev/Stage/Prod).
- Jenkins pipeline failing randomly - how would you debug it?
- Integrating SonarQube + Trivy + Slack in Jenkins - real-time quality flow.
- Docker image too large - how do you optimize it for production?
- K8s rolling updates via YAML - zero downtime approach.
- Terraform state conflicts - how do you prevent and recover?
- Dynamic infra creation + auto-destroy - how would you automate it?
- Secrets management - Terraform + AWS Secrets Manager combo.
- Centralized monitoring for multi-cluster K8s - your toolchain?
- Git branching & release strategy - how do you handle parallel changes?
• Design a multi-tenant EKS cluster with isolation across dev, QA, and prod, with no noisy neighbors.  
• What’s your approach to managing 10+ Kustomize overlays without drift or duplication?  
• Explain how you’d secure cross-region S3 replication and validate data integrity at scale.  
• What happens when systemd hits a failing unit in a containerized node? How would you auto-recover?  
• Walk through your strategy to detect & mitigate pod-to-pod lateral movement inside a cluster.  
• How do you perform zero-downtime upgrades for a stateful workload using Helm 3?  
• Describe a hybrid cloud routing architecture between GCP and AWS. Where do you enforce boundaries?  
• Your Terraform state got corrupted during a backend migration. Rebuild strategy?  
• Bash One-liner: Find all running containers using more than 500MB RSS memory on a node.
• A new AWS ALB config caused TLS handshakes to fail intermittently. Walk through your full RCA path.  
• Kubernetes nodes are healthy. But kubectl logs is blank for critical pods. What’s happening?  
• You deployed a sidecar logging agent. Suddenly, CPU throttling spikes. Diagnose and rollback.  
• Autoscaling isn’t kicking in despite the CPU crossing the threshold. What’s broken — metrics, HPA, or API server?  
• Prod users reporting 504s, but ELB health checks are green. Explain your isolation + triage process.  
• Systemd journal logs vanish on reboot across some AMIs. What do you check in the image build and boot sequence?  
• A production pod was OOMKilled, but you can’t find logs. Walk through a forensic-level debug.  
• Kernel panic on a GKE node mid-deploy. How do you identify if it’s infra, base image, or app-level?
How do you design infrastructure that empowers devs without giving them footguns?  
• What’s your Linux-level checklist before approving any custom AMI to production?  
• You’ve been asked to move from centralized logging to a service-mesh-based observability model. Your tradeoffs?  
• Describe how you simulate production-level chaos in staging for Kubernetes.  
• How do you handle pushback from leadership when your SLOs threaten velocity?
- Explain the EKS architecture.
- How would you establish cross-account communication between S3 buckets?
- What is the difference between NACL and Security Groups?
- What are the different scaling policies that can be implemented with an Auto Scaling Group?
- What is the difference between a DaemonSet and other Kubernetes controllers (e.g., Deployment, StatefulSet)?
- Multiple environments are running on EKS. How would you ensure that staging pods shut down on Saturday and allow developers to manually restart them?
- List the commands to scale pods in Kubernetes.
- What is a CrashLoopBackOff error in Kubernetes?
- You created pods, but kubectl get pods doesn’t show them. What could be the issue?
- How do you connect two servers using Ansible?
- Write a Terraform script to provision an EC2 instance, an S3 bucket with DynamoDB state locking, and a Security Group allowing ports 80 and 443.
- How do you secure RDS in AWS?
- What steps do you take to secure a CI/CD pipeline?
- How do you monitor logs in an EKS cluster?
- What are some ways to secure Kubernetes secrets?
- Explain the CI/CD workflow you follow and the kind of pipeline you use. How do you define and invoke pipelines in Jenkins?
- What are shared libraries in Jenkins, and how are they written and defined?
- What kind of applications do you deploy using Jenkins pipelines, and what deployment tools do you use?
- If the Jenkins pipeline runs but the build doesn’t happen, what possible issues could be causing it?
- What is the purpose of a webhook, and how is it used in a CI/CD pipeline?
- How do you create and manage Kubernetes clusters (using tools like Terraform), and what are the master and worker nodes?
- What are common Kubernetes errors you’ve faced (like CrashLoopBackOff, ImagePullError), and how did you resolve them?
- What is the command to access a pod and how can you define or create a Kubernetes class or object?
- Explain the folder structure of a basic Helm chart. What commands do you use to deploy with Helm?
- What are the stages in a Docker image build? Why do we use ENTRYPOINT and CMD instructions?
- How do you manage and connect services like DBs, EC2, EKS, or ECS? Include the command to connect to ECS.
- Which container registry do you use for storing Docker images?
1. What branching strategy do you follow, and how do you handle merges to avoid breaking the release branch? If a bug appears in production, what’s your approach to resolving it?
2. Describe your typical deployment flow and CI/CD workflow. What stages do you define in your Jenkins pipeline, and how do you ensure full quality checks during deployment?
3. How do you use Jenkins shared libraries? Explain their typical structure and how they are integrated into your Jenkinsfiles.
4. Are you aware of security scanning tools? How do you scan Docker images—both during build and at the registry level? Are you using any extensions or tools for image scanning?
5. How do you pass environment variables during Docker build commands? What services do you use for storing Docker images?
6. How do you establish a connection with databases in your deployments or infrastructure setup?
7. How do you handle authentication for EKS clusters and store secrets securely in your environment?
8. How do you create AWS Lambda functions and manage the artifacts for deployment? What options do you use to push artifacts to Lambda?
9. What is email signing and Helm chart signing? Which tools do you use to sign Helm charts?
- Tell me about yourself
- What were your day-to-day activities?
- What is the difference between Security Group and NACL?
- How to recover an EC2 instance if the key pair is lost?
- VPC Peering vs Transit Gateway?
- How to troubleshoot an EC2 server?
- Can you tell me in how many ways we can connect to a private instance inside a VPC?
- What is Kubernetes architecture?
- Deployment vs StatefulSet?
- Explain your project infrastructure?
- Write a Terraform script to create an EC2 instance?
- What would happen if the state file is deleted?
- How can you set up VPC, subnet, and route table for a gaming application and leaderboard having a database as well with minimum latency?
- What would be the High Availability and DR strategies for it?
- How would you manage billing for Cloud when there is high traffic load?
- What is Kubernetes Architecture?
- Difference between Pod, Node, and Cluster?
- Horizontal Pod Autoscaler vs Vertical Pod Autoscaler?
- If Developers say there is a latency issue, how would you reduce the latency to Kubernetes pods?
- If a node goes down, what would happen to the pod? What would be your action for it?
- What are ConfigMaps and Secrets?