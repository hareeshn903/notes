
# 🔐 IAM

- 1.What is the difference between IAM User, IAM Role, and IAM Policy?
    
- 2.What is a Permission Boundary?
    
- 3.If role policy allows RDS but permission boundary denies RDS, can you access RDS?
    
- 4. How does cross-account role work?
        
- 5Scenario: EC2 in Account A needs to access S3 bucket in Account B – how do you do it?
    
- 7. How do you manage permissions on EC2?
        
- 23. IAM scenario: One user needs EKS-read, EBS-read, S3-write, CloudWatch-logs-read → how do you assign access?
        
- 24. Why do we need 4 custom IAM roles?
        
- 8. IAM Roles and IAM Policies — explain.
        
- 5. Explain how IAM roles differ from IAM users.
        
- How do IAM roles and policies differ from security groups in AWS?

# 🗄️ Databases / RDS

- You have RDS and tomorrow, I being your client, will tell you that you need to make the configuration in such a way so that only one user can access the RDS at a time. How will you configure that? #RDS
    
- what is RDS? #RDS
    
- How do you manage RDS backups and automated failover?

- **Difference between RDS and DynamoDB.**
    
- **When do we choose MySQL (SQL) vs NoSQL databases?**
    
- **10** How do you manage RDS backups and automated failover?
    

---

# 🟦 EC2

- You want to create an EC2, and while creating the instance, you are getting an error like IP address exceeded. How will you troubleshoot and fix it? #EC2
    
- How do you launch and configure an EC2 instance with user data?
    
- Difference between Public EC2 and Private EC2
    
- Public EC2 vs Private EC2
 1️⃣ What are EC2, Lambda, and EKS?
    
- Public EC2 vs Private EC2
    
- . Your EC2 instance is not reachable via SSH; what steps will you take to troubleshoot it?
    
- 2. You launched an EC2 instance without internet access in a private subnet — how do you allow it to download updates securely?
        
- 3. How do you ensure zero downtime during an EC2 instance replacement?
        
- 5. How do you handle user data updates on already running EC2 instances?
        
- 6. How do you move an EC2 instance from one VPC to another with minimal downtime?
        
- 8. How do you ensure high availability across regions for your EC2-based application?
        
- 9. What steps would you take if your EC2 instance keeps stopping due to health check failures?
        
- 10. How do you reduce EC2 cost without affecting performance in a production workload?
        
- **1** How do you launch and configure an EC2 instance with user data?
    
- 4. What is an EC2 instance and what type do you use in your project?
        
- What’s the difference between Security Groups and NACLs?
    
    

### 🔹 EC2 Troubleshooting & Scenarios

- Your EC2 instance becomes unreachable via SSH during peak traffic. How do you troubleshoot without restarting it?
    
- An application on EC2 is running slow, but CPU and memory look normal. What do you check next?
    
- You deployed an update on EC2 and the health checks behind ALB started failing. How do you debug it?
    
- Your EC2 instance is stuck in a boot loop with a kernel panic error. How do you recover it?
    
- A microservice hosted on EC2 is dropping 20% of connections randomly. How do you identify the root cause?
    
- Your t3.micro instance is suddenly very slow even though CPU % is low. What is happening and how to fix it?
    
- After deploying a new AMI, all instances fail the user-data script. How do you troubleshoot the user-data execution?
    
- Your EC2 root EBS volume is 100% full and the instance is not responding. What steps will you take?
    
- Your production EC2 instance is accidentally terminated. How do you recover as much data as possible?
    
- You need to migrate EC2-based workloads to another region with zero downtime. How do you plan the migration?
    
- A security audit reports exposure via IMDSv1. What changes do you perform immediately?
    
- Your EC2 instance is under DDoS attack. What steps do you take from AWS side and OS side?
    
- Two EC2 instances in the same subnet cannot communicate. What are possible causes?
    
- EC2 instances behind an ALB take too long to deregister during deployments. How do you optimize?
    
- Your instance is failing to attach an EBS volume after restart. What can cause this and how do you fix it?
    
- You increase EC2 instance size but application still performs poorly. What else can be the reason?
    
- You need to rotate application secrets stored on EC2. What is the best automated approach?
    
- A single EC2 instance receives unpredictable traffic spikes. How do you redesign it for stability?
    
- EC2 patching is taking too long on a fleet of 200 servers. How do you automate OS patching?
    
- Your instance cannot reach the internet even though it's in a public subnet. What are all possible misconfigurations?
    
- A new EC2 instance takes too long to bootstrap. How do you optimize AMI and user-data processing?
    
- EC2 Nginx server shows “upstream timeout” errors randomly. What AWS-level issues may cause it?
    
- An instance’s network throughput is capped but CPU is low. Why and how do you fix it?
    
- A production team is facing high EBS IO latency on EC2. How do you diagnose and solve it?
    
- You need to enable detailed auditing of who accessed which EC2 instance. What’s the best way?
    

---

# 🪣 S3 / Storage

- S3 architecture discussion
    
- Did u hosted any static application using S3 #s3
    
- What is S3
    
- --> Practical task: creating an S3 bucket and uploading an object
    
- --> Problem statement: a website hosted on S3 that can be accessible only for 60 seconds and then becomes unavailable
    
- What's the role of S3 lifecycle policies and versioning in data management?
    
- How do you secure an S3 bucket that needs to be publicly accessible for static websites?

- 6.What are S3 Events?
    
- 11. Your S3 bucket uploads are failing with Access Denied — what would you check first?
        
- 12. How do you host a static website securely on Amazon S3?
        
- 13. How do you enforce encryption for all objects uploaded to an S3 bucket?
        
- 15. How do you migrate on-premises data to S3 with minimal downtime?
        
- 16. What is your strategy for data lifecycle management and cost optimization in S3?
        
- 17. You accidentally deleted data from an S3 bucket — how do you recover it?
        
- 9. S3 storage classes and lifecycle policies.
        
- 18. How to create S3 bucket
        
- 19. What are methods/operations in S3
        
- 20. S3 bucket region — how it works / how we use
        
- 22. What is S3 versioning?
        
- 3. When would you use S3 vs EFS vs EBS?
        
- What is the difference between S3 Standard, S3 Intelligent-Tiering, and S3 Glacier?
    
- How would you secure sensitive data stored in AWS S3?
    


---

# 🟦 Route53 / DNS

- Route 53 working #Route53
    
- How do u use Route53 in the application #Route53
    
- End-to-end DNS resolution flow #DNS
    
- How do you configure Route 53 for domain hosting and failover routing?
    
- How can you use Route 53 for high availability and failover architecture?

- **Explain Route 53.**
    
- **How to configure Route 53 for two AZs / two websites and enable communication?**
    
- **What are Resolvers in AWS and how are they useful?**
    
- 11. How do you configure Route 53 for domain hosting and failover routing?
    

---

# 🟦 Networking / VPC

- How do you configure security groups vs NACLs in a VPC?
    
- Explain how to design a VPC with public and private subnets.
    
- What is the use of a NAT Gateway vs Internet Gateway?
    
- What is the difference between Elastic IPs and Public IPs?
    
- Explain the difference between Transit Gateway and VPC Peering. When would you choose each?
    
- How do you integrate on-premises data centers with AWS (Hybrid Cloud setup)?
    
- What is a NAT Gateway, where does it reside, and how is it used?
    
- Difference between NAT Gateway and Bastion Host
    
- What is an Internet Gateway?
    
- How does routing work for NAT Gateway?
    
- How to access S3 from a private subnet without using public internet
    
- Types of Load Balancers in AWS
    
- What is a VPC
    
- How to connect multiple VPCs together
    
- Alternatives to VPC Peering
    
- What is CIDR in AWS
    
- How to calculate IP addresses from CIDR
    
- How many IPs are reserved/blocked by AWS
    
- Which IP addresses are blocked by AWS
    
- Can a VPC CIDR block go beyond /16? Why or why not?
    
- Two EC2 instances in the same subnet cannot communicate. What are possible causes?
    
- Your instance cannot reach the internet even though it's in a public subnet. What are all possible misconfigurations?
 12. Networking / VPC
        
- 13. What is a VPC Endpoint?
        
- 14. Does DynamoDB support both interface and gateway endpoints?
        
- What is a NAT Gateway? Where does it reside?
    
- NAT Gateway vs Bastion Host
    
- How routing works for NAT Gateway
    
- What is an Internet Gateway
    
- Accessing S3 from private subnet without internet
    
- What is a VPC
    
- Connecting multiple VPCs
    
- Alternatives to VPC Peering
    
- What is CIDR and how to calculate IPs
    
- Reserved IPs by AWS & blocked IP ranges
    
- **2** How do you configure security groups vs NACLs in a VPC?
    
- **3** Explain how to design a VPC with public and private subnets.
    
- **4** What is the use of a NAT Gateway vs Internet Gateway?
    
- **11** What is the difference between Elastic IPs and Public IPs?
    
- Difference between Public EC2 and Private EC2
    
- What is a NAT Gateway, where does it reside, and how is it used?
    
- Difference between NAT Gateway and Bastion Host
    
- How does routing work for NAT Gateway?
    
- What is an Internet Gateway?
    
- How to access S3 from a private subnet without using public internet
    
- Types of Load Balancers in AWS
    
- What is a VPC
    
- How to connect multiple VPCs together
    
- Alternatives to VPC Peering
    
- What is CIDR in AWS
    
- How to calculate IP addresses from CIDR
    
- How many IPs are reserved/blocked by AWS
    
- Which IP addresses are blocked by AWS
    
- 7. Tell me about the VPC structure setup in your project.
        
- **Difference between Public vs Private Subnets.**
    
- **What is a VPN and why do we use it?**
    
- 7. What is an AWS VPC?
        
- 7. How does AWS VPC networking work?
        
- - How can you access private instances inside a VPC?
        
- - Explain Security Groups vs Network ACLs.
        
- - How can you block an IP using only Security Groups?
        
- What are VPC Peering and Transit Gateway? When would you use them?
    

### 🔹 Duplicate block (kept once, merged above)

- AWS Networking & VPC
    
- Public EC2 vs Private EC2
    
- What is a NAT Gateway? Where does it reside?
    
- NAT Gateway vs Bastion Host
    
- How routing works for NAT Gateway
    
- What is an Internet Gateway
    
- Accessing S3 from private subnet without internet
    
- Types of Load Balancers
    
- What is a VPC
    
- Connecting multiple VPCs
    
- Alternatives to VPC Peering
    
- What is CIDR and how to calculate IPs
    
- Reserved IPs by AWS & blocked IP ranges
    

---

# 🟦 Compute / Containers / Serverless

- Tell me about EKS?
    
- Explain the difference between ECS, EKS, and Lambda — when would you choose each?
    
- What is Elastic Beanstalk and AWS lambda
    
- Have u worked with API gateway endpoints in aws? What is it? #apigateway
    

### 🔹 Lambda

- Write a Lambda function in Python to read data from an S3 bucket and print all file names. #lambda
    
- Have you worked with AWS Lambda functions? How did you use them in your projects?
    
- How many organizations are using AWS Lambda instead of EC2, and in which scenarios would you prefer Lambda over EC2
    

---

# 🟦 Storage (EBS) / EFS
- 14. Your application requires shared storage between multiple EC2 instances — what AWS storage service would you use and why?
        
- 18. How do you troubleshoot slow EBS volume performance on an EC2 instance?
        
- 19. Your EFS mount targets are not accessible from EC2 instances — what do you check?
        
- 20. How do you automate snapshot creation and deletion for EBS volumes?
        
- **5** How do you attach and mount EBS volumes to EC2?
    
- 19. Difference between various AWS storage types.
        
- 20. Why is EBS called block storage?
        
- 21. Why do we use EFS?
        
- 5. Difference between EC2 and EBS volumes.
        
- 11. EBS volume meaning
        
- Maximum size of EBS volume
    
- 13. Can multiple EBS volumes be attached to one EC2 instance?
- How do you attach and mount EBS volumes to EC2?
    

---

# 🟦 Auto Scaling / Load Balancing
• 1) What Is elb in aws?  
• 2) How AWS Elastic Load Balancing Works?  
• 3) List few Pros/cons of using AWS Elastic Load Balancer?  
• 4) What is the difference between auto-scaling and ELB?  
• 5) List type of techniques that are used by load balancers?  
• 6) What do you mean by a target group in AWS Load Balancing?  
• 7) What is the difference between a load balancer and Amazon's Route 53?  
• 8) Can we use multiple Aws elastic load balancers for single EC2 Instance?  
• 9) Why AWS Elastic Load Balancers have more than 1 IP addresses?  
• 10) Can you explain NLB in AWS?  
• 11) How to create an alert for AWS load balancer 'outofservice'?  
• 12) Why does ELB have 60 seconds of non-configurable request timeout?  
• 13) How do we create a VPC load balancer in AWS?  
• 14) What is VPC load balancer?
- 16. Difference between horizontal and vertical scaling
        
- 17. When should we use vertical scaling?
        
- 4. What’s the difference between Auto Scaling and Load Balancing?
- How do you configure Auto Scaling for EC2 instances?
    
- Give me one or two examples of what a load balancer does apart from distributing traffic. ?
 8️⃣ What is a Target Group / Backend in AWS Load Balancing?
    
- Types of Load Balancers
    
- 7. What is the difference between ALB & NLB sing CloudWatch?
        
- **Explain Target Groups in AWS and when to use them.**
    
- **What are Listeners and how are they configured?**
4. Your Auto Scaling group is not launching new instances even when CPU utilization is high — what could be the reason?
- 6. How does Auto Scaling work and what are its types?
- What is a Load Balancer?
- Why do we use a Load Balancer?
- What are the different types of Load Balancers in AWS?
- What is the difference between ALB, NLB, and CLB?
- What is a Target Group?
- What is a Listener in Load Balancer?
- What are Health Checks in Load Balancer?
- Difference between active and passive health checks?
- How does load balancer improve high availability?
- What is Sticky Session?
- When do you use Application Load Balancer (ALB)?
- When do you use Network Load Balancer (NLB)?
- When do you use Gateway Load Balancer (GWLB)?
- Can ALB handle WebSockets?
- Can ALB load-balance to IP addresses?
- What protocols are supported by ALB?
- What protocols are supported by NLB?
- Difference between L7 vs L4 Load Balancer?
- ALB vs API Gateway difference?
- Does ALB support HTTPS termination?
- What is SSL/TLS offloading?
- What are Rules in ALB?
- What is Path-based routing?
- What is Host-based routing?
- How connection draining works? (Deregistration delay)
- What is Cross-Zone Load Balancing?
- Which ELB supports static IP?
- Do ALB/NLB support IPv6?
- What is Proxy Protocol?
- How to enable Logging for ELB? (Access logs)
- 1. What is Auto Scaling in AWS?
        
- 2. What is an Auto Scaling Group (ASG)?
        
- 3. What is a Launch Template?
        
- 4. What is the difference between Launch Template and Launch Configuration?
        
- 5. What is desired capacity in Auto Scaling?
        
- 6. What is minimum and maximum size?
        
- 7. What are scaling policies?
        
- 8. What is dynamic scaling?
        
- 9. What is scheduled scaling?
        
- 10. What is predictive scaling?
        
- 11. How does Auto Scaling improve high availability?
        
- 12. What are CloudWatch Alarms used for in scaling?
        
- 13. How does Auto Scaling replace unhealthy instances?
        
- 14. What is cooldown period in Auto Scaling?
        
- 15. What is instance warm-up?
        
- 16. What are lifecycle hooks?
        
- 17. What is scaling out vs scaling in?
        
- 18. What is target tracking scaling?
        
- 19. What is step scaling?
        
- 20. What is simple scaling?
        
- 21. What is mixed instance policy?
        
- 22. What is instance weighting?
        
- 23. How to use spot instances in Auto Scaling?
        
- 24. Difference between Spot, On-Demand, and Reserved in ASG?
        
- 25. Can Auto Scaling work with Load Balancer?
        
- 26. What is health check grace period?
        
- 27. Auto Scaling with multiple Availability Zones?
        
- 28. Can Auto Scaling distribute instances across AZs automatically?
        
- 29. Difference between EC2 Status Check and ELB Health Check?
        
- 30. How ASG handles instance termination?
        
- 31. What is termination policy?
        
- 32. What is default termination policy?
        
- 36. EC2 is unhealthy; how will Auto Scaling replace it?
        
- 37. How to automatically add more EC2 during traffic spike?
        
- 38. How to scale based on queue length (SQS)?
        
- 39. How to perform zero-downtime deployments with Auto Scaling?
        
- 40. Why Auto Scaling is not launching new instances?
        
- 41. Why Auto Scaling is launching too many instances?
        
- 42. ASG scale-in is terminating the wrong instance — why?
        
- 43. App takes long time to boot — how to handle?
        
- 44. How to protect an instance from termination?
        
- 45. How to attach ASG to ALB?
        
- 46. How to attach ASG to NLB?
        
- 47. How to add custom logic before/after instance launch?
        
- 48. Scaling based on memory metrics — how?
        
- 49. CPU is 100% but scaling not happening — what to check?
        
- 50. How to perform rolling update using Auto Scaling
        
- 51. How do you troubleshoot ASG when scaling fails?
        
- 52. ASG creates an instance but immediately terminates — why?
        
- 53. How to run user-data script in Auto Scaling correctly?
        
- 54. What happens when an AZ fails in ASG?
        
- 55. How does ASG ensure equal distribution across AZs?

---

# 🟦 CloudWatch / Monitoring / Logging

- How do u add logs in AWS?
    
- How do you set up CloudWatch log groups for an application?
    
- Explain how you would set up centralized logging and monitoring across multiple accounts.
    
- Describe how you would implement centralized logging and alerting for all AWS accounts.
    
- How do you implement centralized logging using CloudWatch / ELK / OpenSearch?
    

---

# 🟦 CI/CD / DevOps

- How do you implement CI/CD pipelines using tools like CodePipeline or Jenkins on AWS?
    
- Describe your approach to troubleshooting deployment failures in an AWS-based CI/CD pipeline.
    
- If you need to provision 100 EC2 instances and install an application on them, how would you accomplish that using your CI/CD pipeline?
    
- What metrics do you typically monitor in a CI/CD system, and how do you alert on failures?
    

---

# 🟦 Terraform / Infrastructure as Code

- If you have an existing complex infrastructure and want to introduce Terraform, how would you bring Terraform in line with the current setup?
    

---

# 🟦 GitOps / ArgoCD / Kubernetes

- How would you configure Argo CD to manage multiple environments?
    
- How does Argo CD enforce GitOps principles during deployments?
    
- What happens when manual changes are made directly in Kubernetes for resources managed by Argo CD?
    

---

# 🟦 Security / IAM / Secrets

- How do you handle secret management securely across your DevOps workflow?
    
- What's your approach to securing workloads using AWS KMS and IAM policies?
    

---

# 🟦 Cost Optimization

- 1. How do you reduce AWS costs without compromising performance?
        
- 6. What are some strategies for cost optimization in AWS environments?
        

---

# 🟦 Messaging / Streaming

- 1. When would you use SQS over Kafka or vice-versa?
   - 7.What does SNS do?
    
- 8.Can 1 SNS topic send messages to 2 SQS queues based on message type? (SNS → SQS message filters)
    
- 9.SQS / Lambda
    
- 10. Write a Lambda function to fetch messages from SQS.
        
- 11. If you print the event in an SQS-triggered Lambda, what will you see?
        
- 10. How AWS Lambda works and what are the use cases?
        
- 11. Difference between SNS and SQS.     

---

# 🟦 Architecture / System Design

- Do you have experience building full end-user products on AWS? #aws_scenario
    
- User request lifecycle
    
- U have an autoscaling group which has 5 ec2 instances in which an app is running, next day u want to run another application in it. How can u do it? #aws_scenario
    
- How do you design a scalable and fault-tolerant architecture in AWS?
    
- How do you ensure high availability across multiple AWS regions?
    
- What steps would you take to minimize downtime during rolling deployments on ECS or EKS?
    
- How do you design disaster recovery using services like S3 Cross-Region Replication and Route 53 failover?
    
- Suppose you are working with 30 AWS accounts, how are you managing those 30 accounts ?
    
- 1. How would you design a multi-account AWS setup for an enterprise environment?
        
- How would you monitor cost, usage, and performance metrics across a large AWS environment?
    

---

# 🟦 Observability / SRE

- ✅ How do you implement service-level indicators (SLIs) for internal APIs?
    
- ✅ How do you correlate deployment events with performance regressions?
    
- ✅ What's your approach to reducing alert noise while maintaining fast incident detection?
    
- ✅ How do you instrument distributed tracing in a microservices architecture?


# 📊 Monitoring / CloudWatch

- 3️⃣ How do you monitor your application on AWS?
    
- 9. How do you set up CloudWatch log groups for an application?
        
- 12. AWS monitoring tools — examples.
        
- Explain how you would set up monitoring and alerting using CloudWatch for a production application.
    

---

# 🟦 Linux / Misc

- What is sed, and why is the -E (or -G, based on system) option used?
    
- Are Docker image layers read-only or read-write, and how does that work?
    

---

# 🟦 General / Experience

- I also asked about project type, team structure, and tooling ecosystem. After this round, my profile was forwarded for the client discussion.
    

---

# 🟦 Auto Scaling Setup Steps (Practical Flow)

- Launch EC2 servers in multiple Availability Zones  
    → Avoid AZ failure and ensure uptime
    
- Create a Target Group  
    → Register EC2 instances
    
- Attach Target Group to Load Balancer  
    → Routes traffic only to healthy instances
    
- Create an AMI from configured server  
    → Used for identical instances during scaling
    
- Create a Launch Template  
    → Define AMI, instance type, security groups, user-data
    
- Attach Launch Template to Auto Scaling Group  
    → Configure:
    
- Min instances
    
- Max instances
    
- Desired capacity
    
- Scaling policies
    

# 🛠️ General AWS / Architecture / Projects

- 2️⃣ How do you create AWS infrastructure?
    
- 4️⃣ How do you apply changes via AWS CI/CD?
    
- 5️⃣ Explain team structure, handling critical issues, and client interaction in an AWS context.
    
- 6️⃣ How do you manage storage on AWS (S3, EBS, EFS)?
    
- 18. Major AWS services used in your project.
        
- 3. Which AWS services are used in your project?
        
- 10. AWS services used in your project
        
- What are the differences between EC2, ECS, EKS, and Lambda? In which scenario would you choose one over the other?
    
- - How do you set up high availability and fault tolerance in AWS for a web application?
        
- - How would you implement a disaster recovery plan in AWS?
        
- - Can you walk through setting up an Auto Scaling Group (ASG) with load balancers?

# 🚀 Migration / DevOps / Misc

- **How to migrate an on-prem application to AWS?**
    
- **Which AWS services help and what is the approach?**
    
- **What are EC2 2/2 status checks and why do they show as 2/2 after launching?**
    
- **What are stdin and stdout in Bash scripting and why do we use them?**
