- Write a simple Terraform script to provision a virtual machine on AWS.
- What AWS services are you proficient in
- How would you access data in an S3 bucket from Account A when your application is running on an EC2 instance in Account B?
- How do you provide access to an S3 bucket, and what permissions need to be set on the bucket side?
- How can Instance 2, with a static IP, communicate with Instance 1, which is in a private subnet and mapped to a multi-AZ load balancer?
- For an EC2 instance in a private subnet, how can it verify and download required packages from the internet without using a NAT gateway or bastion host? Are there any other AWS services that can facilitate this?
- What is the typical latency for a load balancer, and if you encounter high latency, what monitoring steps would you take?
- If your application is hosted in S3 and users are in different geographic locations, how can you reduce latency?
- Which services can be integrated with a CDN (Content Delivery Network)?
- What is a Static IP and a Public IP?
- What is the difference between a Security Group and a Network ACL (NACL)?
- What are policies in AWS, and what are the types of policies?
- How do you create S3 Cross-Region Replication (CRR)?
- If there are two S3 buckets Bucket A (source) and Bucket B (destination) and a file in Bucket A is accidentally deleted, what happens in Bucket B?
- Explain what happens in this case.
- Difference Between Classic Load Balancer and Application Load Balancer on AWS?
- Auto Scaling: What Are the Configuration Options and Parameters?
- What is User Data in EC2?
- How do you upload/download to S3 bucket privately from EC2?
- How do you dynamically retrieve VPC details from AWS to create an EC2 instance using IaC, can you write the code?
- How do you secure RDS in AWS?
- How to recover an EC2 instance if the key pair is lost?
- VPC Peering vs Transit Gateway?
- How to troubleshoot an EC2 server?
- Can you tell me in how many ways we can connect to a private instance inside a VPC?
- How would you establish cross-account communication between S3 buckets?
- What are the different scaling policies that can be implemented with an Auto Scaling Group?
- We have an application hosted on an EC2 instance. How would you ensure high availability of the applications?
- The application is experiencing high latency. How would you troubleshoot it?
- There are two instances hosting applications, instance A (legacy) and instance B (new). You want to route all incoming traffic from instance A to instance B. But users complain they can’t access the new application. What would you check?
- One of the instances is a t2.micro, and you need to upgrade it to a t5.large. How would you perform this, especially if it’s part of an Auto Scaling Group?
- What would you do if an EC2 instance is running above 80% threshold usage?
- What is AWS Global Accelerator?
- What’s the difference between CUP and CIP?
- EC2 instance is unreachable, and it’s not a security group issue. What’s your next step?
- An S3 bucket was made public by mistake. How do you secure and audit it?
- RDS migration with minimal downtime — how would you approach it?
- Design a highly available backend on AWS — what services and architecture would you use?
- What is an IAM user? What is Route 53? How are they different?
- If I want to provide full access to an instance (for multiple resources like Route 53 and S3), what is the best way to do this? Should I use the root account?
- You created an EC2 instance and provided full access. What precautions would you take in this scenario?
- Explain the process of creating a VPC.
- What is the CIDR range (min and max) for creating an EC2 instance?
- How many IP addresses are available in the CIDR range 10.0.0.0/16 and 10.0.0.0/24?
- What is VPC peering?
- What is a VPC endpoint?
- What is the difference between an Application Load Balancer (ALB) and a Network Load Balancer (NLB)? When would you use each?
- What is a Cold Start in AWS Lambda?
Difference between ALB and NLB?  
What is Route 53 and why do we use it?  
What is a Target Group in AWS?  
Difference between GP2 and GP3 volumes?  
What are T-Series EC2 instances and why are they used?  
What is EFS? How do you connect to it and why is it used?  
What is an Internet Gateway (IGW) and why is it needed?  
How do you restrict access from a specific IP or region?  
Difference between a Security Group and a NACL?  
Difference between ALB and NLB?  
🔹 What is the difference between an Application Load Balancer (ALB) and a Network Load Balancer (NLB)? When would you use each?  
🔷 16. Draw the AWS VPC Architecture for a 2-Tier/3-Tier application. (EKS/EC2, ALB, RDS, Subnets, IGW)  
🔷 17. Draw and explain your E-Commerce project architecture end-to-end. (VPC, subnets, ALB, EC2/EKS, RDS, S3, ECR, CI/CD)  
35. what is Route 53?  
36. Is it possible to purchase a domain in route 53 ?  
7. How to implement Internet gateway?  
8. How to configure internet gateway to route table?
• Which cloud provider do you use on a daily basis in your current organization?  
• What AWS services have you used till now?  
• Explain the different types of Load Balancers you have worked on.  
• What are rules in a Load Balancer and where do you define them?  
• How many types of S3 storage classes are there?  
• What is the difference between S3 Standard and Glacier?
How will you auto-scale an application during traffic spikes?  
• Difference between ALB, NLB, and CLB — when to use which?  
• How will you secure an S3 bucket for both public and private access?  
• Your EC2 instance becomes unreachable — how will you troubleshoot?  
• Explain Blue-Green deployment using AWS services.
- Your EC2 Auto Scaling Group is scaling out even though CPU utilization is only 30%. How will you identify and fix the cause?
- Your production RDS (PostgreSQL) is experiencing intermittent connection timeouts. How would you troubleshoot from the application side, RDS side, and network side?
- A serverless API occasionally responds slowly. Metrics show high cold start time. How do you reduce latency without overspending?
- Your ECS service failed to deploy during a rolling update. Some containers got stuck in “Provisioning”. What’s your troubleshooting approach?
- You deployed CloudFront in front of an ALB but users are seeing SSL certificate mismatch errors. How do you resolve this?
- EKS cluster nodes don’t scale automatically when pods are pending. What configurations or dependencies would you check?
- You’re deploying an application using Terraform on AWS. During deployment, a new version of an S3 bucket policy needs to be applied. However, the Terraform apply fails with the following error:  
    "Error: Error putting S3 policy: MalformedPolicy: Policy has invalid resource"  
    How would you troubleshoot and resolve this issue?
- Your application hosted on EC2 instances behind an ALB is not reachable, but health checks on ALB show healthy targets. What would you check next?
- In above same case the Target group instances are unhealthy and your environment gets down? How will you troubleshoot it?
- How S3 cross region replication actually works in real time
- Explain commonly used services (EC2, S3, IAM, CloudWatch, VPC, Route53, RDS, Lambda).
- How do you launch and connect to an EC2 instance?
- What is the difference between Security Groups and NACLs?
- How do you automate provisioning using Terraform?
- How to create S3 lifecycle rules and bucket policies?
- How do you manage IAM users, roles, and policies?
- What are VPC, Subnets, and Internet Gateways?
- Difference between public and private subnets.
- How do you enable CloudWatch alarms for CPU, memory, and disk?
- What is Auto Scaling and Load Balancer?
- How do you implement high availability and disaster recovery?
- How do you back up and restore EBS volumes or databases?
- Command to connect to EC2 instance?
- How to implement an Internet Gateway?
- How to configure Internet Gateway in route table?
- How do you log in to EC2? What authentication is used (password or key)?
- Where will you place `index.html` on server?
How would you design and deploy a three-tier application architecture on AWS using native services?  
Which AWS services would you use to host the frontend, and how would you ensure global low-latency delivery?  
What compute options are available for the backend tier, and how would you choose between EC2, ECS, EKS, Lambda, and Elastic Beanstalk?  
How would you expose backend APIs securely to the frontend?  
What database and caching services would you use for the data tier, and why?  
How would you design the VPC, subnets, and security groups to isolate and secure each tier?  
What tools would you use for monitoring, logging, and distributed tracing across the application?  
How would you implement CI/CD for this architecture using AWS-native services?  
What Infrastructure as Code (IaC) tools would you use to automate and manage deployments?  
How would you ensure security, compliance, and protection against common web threats?
• Your EC2 instance is unreachable. How do you diagnose the issue?  
• How do you implement Auto Scaling with proper health checks?  
• What is the difference between ALB and NLB, and when should you use which?  
• What are the steps to set up S3 cross-region replication?  
• How do you troubleshoot high latency in API Gateway?  
• How do you reduce RDS costs without incurring downtime?  
• What happens if the Terraform state file stored in S3 is deleted?  
• How do you secure your VPC workloads at scale?
• Difference between IAM User, Group, Role?  
• What is Auto Scaling?  
• What is an S3 bucket versioning?  
• How does a Load Balancer work?
16.What is the difference between an ALB and NLB?  
17.What is Route 53 and why do we use it?  
18.What is a Target Group in AWS?  
19.What is the difference between GP2 and GP3 volumes?  
20.What are T-Series EC2 instances and why are they used?  
21.What is EFS? How do you connect to it and why is it used?  
22.What is an Internet Gateway (IGW) and why do we use it?  
23.How can we restrict access from a specific location (IP/region)?  
24.What is the difference between a Security Group and a NACL?
- AWS Shield vs Shield Advanced
- Basics of RDS
- Script to fetch S3 files older than 2 years and <30 MB - in python (Interestingly I was allowed to use AI here, but still couldn’t finish this under pressure 😅 and it threw me off in the first 10 minutes itself)
- EC2 instance reporting slow app despite low CPU usage
- Recovering a lost .pem key using SSM
- Connecting S3 access between two VPCs
- Debugging slow DNS resolution in a Kubernetes cluster
How do you resize (scale up or down) an EC2 instance?  
How do you configure load balancing for EC2 instances?  
What is hibernation in EC2 and when should you use it?  
How do you ensure high availability for EC2-hosted applications?  
What are EC2 instance retirement notices and how do you handle them?  
How can you optimize EC2 cost in production environments?  
How does AWS Systems Manager help in managing EC2 instances?  
What’s the difference between EC2 Spot Fleet and EC2 Auto Scaling Group?  
How can you ensure data persistence and backup for EC2 instances?
1 What happens when you stop vs terminate an EC2 instance?  
2 How do you connect to an EC2 instance securely using SSH?  
3 What is the use of EC2 user data and metadata?  
4 How do you attach and detach EBS volumes to running instances?  
5 What is an Elastic IP address and when should you use it?  
6 What are key pairs in EC2 and how are they managed?  
7 How can you monitor EC2 performance metrics using CloudWatch?  
8 What are the benefits of using EC2 launch templates over launch configurations?  
9 How do you automate EC2 provisioning with Terraform or CloudFormation?  
10 How do you troubleshoot EC2 instances that are unreachable via SSH?  
11 What is the difference between public and private EC2 instances in a VPC?
➤ An S3 bucket or object is accidentally deleted — how do you restore it?  
➤ EC2 instance suddenly becomes unreachable — how do you troubleshoot it?  
➤ API Gateway returns 500/504 errors — how do you troubleshoot and identify whether the issue is with Lambda, integration, or configuration?
- What would be the onboarding steps for a new application on EKS?
- You have one EC2 instance and one database — how would you migrate this setup to Amazon EKS?
- There are two projects, ABC and XYZ. I want to set the threshold value of code quality check for 70% for ABC and 80% for XYZ. Can I do that?
- How can you convert a public VPC into a private VPC?
- If your new to the team and want to suggest some changes to the CICD pipeline that they have, What you would suggest ?
- What is the timeframe to resolve the Critical, High, Medium & Low vulnerabilities?
- How do you manage Container Registry and Image Lifecycle?
- How do you handle a multi-environment deployment (Dev, QA, Prod)?
- How do you ensure proactive alerting in production and notify the right people when issues occur?
- Do you have experience building full end-user products on AWS?
- Write a Lambda function in Python to read data from an S3 bucket and print all file names.
- What does -Dsonar.projectKey=sample-app mean?




+++++++++++++++++++++++++++++++++++++++++++++++++++
https://github.com/Devinterview-io/aws-interview-questions

You have RDS and tomorrow, I being your client, will tell you that you need to make the configuration in such a way so that only one user can access the RDS at a time. How will you configure that? #RDS
what is RDS? #RDS 
You want to create an EC2, and while creating the instance, you are getting an error like IP address exceeded. How will you troubleshoot and fix it? #EC2
Do you have experience building full end-user products on AWS? #aws_scenario
S3 architecture discussion  
I also asked about project type, team structure, and tooling ecosystem. After this round, my profile was forwarded for the client discussion.
🔹 DNS & Networking  
Route 53 working  #Route53
How do u use Route53 in the application #Route53 
End-to-end DNS resolution flow  #DNS
User request lifecycle
U have an autoscaling group which has 5 ec2 instances in which an app is running, next day u want to run another application in it. How can u do it? #aws_scenario 
Have u worked with API gateway endpoints in aws? What is it? #apigateway
Did u hosted any static application using S3 #s3
What is Elastic Beanstalk and AWS lambda
Write a Lambda function in Python to read data from an S3 bucket and print all file names. #lambda
How do u add logs in AWS?
Tell me about EKS?
How do you launch and configure an EC2 instance with user data?
How do you configure security groups vs NACLs in a VPC?
Explain how to design a VPC with public and private subnets.
What is the use of a NAT Gateway vs Internet Gateway? How do you attach and mount EBS volumes to EC2? How do you configure Auto Scaling for EC2 instances? What is the difference between ALB & NLB sing CloudWatch?
How do you set up CloudWatch log groups for an application?
How do you manage RDS backups and automated failover?
How do you configure Route 53 for domain hosting and failover routing?
What is the difference between Elastic IPs and Public IPs?
1. How do you reduce AWS costs without compromising performance?
1. When would you use SQS over Kafka or vice-versa?
1. How do you design a scalable and fault-tolerant architecture in AWS?
2. Explain the difference between ECS, EKS, and Lambda — when would you choose each?
3. How can you use Route 53 for high availability and failover architecture?
4. How do you implement CI/CD pipelines using tools like CodePipeline or Jenkins on AWS?
5. Describe your approach to troubleshooting deployment failures in an AWS-based CI/CD pipeline.
6. What are some strategies for cost optimization in AWS environments?
7. How do you handle secret management securely across your DevOps workflow?
8. What's the role of S3 lifecycle policies and versioning in data management?
9. How do you secure an S3 bucket that needs to be publicly accessible for static websites?
10. Explain how you would set up centralized logging and monitoring across multiple accounts.
✅ How do you implement service-level indicators (SLIs) for internal APIs?  
✅ How do you correlate deployment events with performance regressions?  
✅ What's your approach to reducing alert noise while maintaining fast incident detection?  
✅ How do you instrument distributed tracing in a microservices architecture?  
✅ How do you implement service-level indicators (SLIs) for internal APIs?  
✅ How do you correlate deployment events with performance regressions?
What is S3  
--> What is EC2
--> Practical task: creating an S3 bucket and uploading an object  
--> Problem statement: a website hosted on S3 that can be accessible only for 60 seconds and then becomes unavailable
- If you need to provision 100 EC2 instances and install an application on them, how would you accomplish that using your CI/CD pipeline?
- If you have an existing complex infrastructure and want to introduce Terraform, how would you bring Terraform in line with the current setup?
- What is sed, and why is the -E (or -G, based on system) option used?
- How would you configure Argo CD to manage multiple environments?
- Are Docker image layers read-only or read-write, and how does that work?
- Can a VPC CIDR block go beyond /16? Why or why not?
- What metrics do you typically monitor in a CI/CD system, and how do you alert on failures?
- How does Argo CD enforce GitOps principles during deployments?
- What happens when manual changes are made directly in Kubernetes for resources managed by Argo CD?
Suppose you are working with 30 AWS accounts, how are you managing those 30 accounts ?
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
Give me one or two examples of what a load balancer does apart from distributing traffic. ?  
Difference between Public EC2 and Private EC2  
What is a NAT Gateway, where does it reside, and how is it used?  
Difference between NAT Gateway and Bastion Host
- Have you worked with AWS Lambda functions? How did you use them in your projects?
- How many organizations are using AWS Lambda instead of EC2, and in which scenarios would you prefer Lambda over EC2
Explain your VPC design across AZs and NAT/IGW routing.
23. How do you troubleshoot sudden spikes in 5xx errors in production?
24. How do you implement centralized logging using CloudWatch / ELK / OpenSearch?
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
AWS Traffic Flow / Scaling
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
6.What are S3 Events?
7.What does SNS do?
8.Can 1 SNS topic send messages to 2 SQS queues based on message type? (SNS → SQS message filters)
9.SQS / Lambda
10. Write a Lambda function to fetch messages from SQS.
11. If you print the event in an SQS-triggered Lambda, what will you see?
12. Networking / VPC
13. What is a VPC Endpoint?
14. Does DynamoDB support both interface and gateway endpoints?
1️⃣ What are EC2, Lambda, and EKS?  
2️⃣ How do you create AWS infrastructure?  
3️⃣ How do you monitor your application on AWS?  
4️⃣ How do you apply changes via AWS CI/CD?  
5️⃣ Explain team structure, handling critical issues, and client interaction in an AWS context.  
6️⃣ How do you manage storage on AWS (S3, EBS, EFS)?  
7️⃣ How do you manage permissions on EC2?  
8️⃣ What is a Target Group / Backend in AWS Load Balancing?
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
. Your EC2 instance is not reachable via SSH; what steps will you take to troubleshoot it?
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
18. Major AWS services used in your project.
19. Difference between various AWS storage types.
20. Why is EBS called block storage?
21. Why do we use EFS?
22. What is S3 versioning?
23. IAM scenario: One user needs EKS-read, EBS-read, S3-write, CloudWatch-logs-read → how do you assign access?
7. Tell me about the VPC structure setup in your project.
24. Why do we need 4 custom IAM roles?
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
10. AWS services used in your project
11. EBS volume meaning
Maximum size of EBS volume
13. Can multiple EBS volumes be attached to one EC2 instance?
14. Types of Load Balancers
15. Types of Auto Scaling
16. Difference between horizontal and vertical scaling
17. When should we use vertical scaling?
18. How to create S3 bucket
19. What are methods/operations in S3
20. S3 bucket region — how it works / how we use
1. What’s the difference between Security Groups and NACLs?
2. How do you design a highly available architecture in AWS?
3. When would you use S3 vs EFS vs EBS?
4. What’s the difference between Auto Scaling and Load Balancing?
5. Explain how IAM roles differ from IAM users.
6. What are Spot, On-Demand, and Reserved Instances?
7. How does AWS VPC networking work?
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
51. How do you troubleshoot ASG when scaling fails?
52. ASG creates an instance but immediately terminates — why?
53. How to run user-data script in Auto Scaling correctly?
54. What happens when an AZ fails in ASG?
55. How does ASG ensure equal distribution across AZs?
- How can you access private instances inside a VPC?
- How do you SSH into an EC2 instance using your key?
- Explain Security Groups vs Network ACLs.
- How can you block an IP using only Security Groups?
 What are the differences between EC2, ECS, EKS, and Lambda? In which scenario would you choose one over the other?
- How do you set up high availability and fault tolerance in AWS for a web application?
- Explain the difference between scaling vertically and horizontally in AWS.
- How would you implement a disaster recovery plan in AWS?
- Can you walk through setting up an Auto Scaling Group (ASG) with load balancers?
- How do IAM roles and policies differ from security groups in AWS?
- What is the difference between S3 Standard, S3 Intelligent-Tiering, and S3 Glacier?
- How would you secure sensitive data stored in AWS S3?
- What are VPC Peering and Transit Gateway? When would you use them?
- Explain how you would set up monitoring and alerting using CloudWatch for a production application.





































1. What is the difference between an EC2 instance stop and terminate?

Stop: Shuts down the instance but retains the EBS volumes and configuration. You can restart later.

Terminate: Deletes the instance and associated resources (unless EBS volumes are set to persist).

2. How do you design a highly available architecture in AWS? Use Auto Scaling Groups for EC2.

Deploy across multiple Availability Zones (AZs).

Use Elastic Load Balancer (ELB) to distribute traffic.

Store data in RDS Multi-AZ or Aurora Global Databases for redundancy.

3. What steps would you take if an EC2 instance is not reachable? Check Security Groups and Network ACLs.

Verify Route Tables and Internet Gateway attachment.

Inspect System Logs via EC2 console.

Use AWS Systems Manager Session Manager if SSH is blocked.

4. How do you secure sensitive data in S3?Enable Server-Side Encryption (SSE-S3, SSE-KMS).

Use Bucket Policies and IAM roles for fine-grained access.

Enable S3 Block Public Access.

Turn on Object Lock for immutability.

5. Explain the difference between horizontal and vertical scaling in AWS.

Horizontal scaling: Adding more instances (e.g., Auto Scaling).

Vertical scaling: Increasing resources (CPU/RAM) of a single instance.

6. How do you monitor AWS resources in real time?

CloudWatch Metrics & Alarms for performance.

CloudTrail for API activity.

AWS Config for compliance.

X-Ray for application tracing.

7. What is the difference between Security Groups and NACLs?

Security Groups: Stateful, applied at instance level.

NACLs: Stateless, applied at subnet level.

8. How do you handle disaster recovery in AWS?

Use Cross-Region Replication (CRR) for S3.

RDS Read Replicas in another region.

Backup & Restore strategy with AWS Backup.

Pilot Light / Warm Standby / Multi-Site DR patterns depending on cost vs. recovery time.

9. How do you reduce AWS costs in real-time projects?

Use Reserved Instances or Savings Plans.

Enable Auto Scaling to avoid idle resources.

Use Spot Instances for non-critical workloads.

Monitor with Cost Explorer and Budgets.

10. Scenario: Your application is experiencing latency. How do you troubleshoot?

Check CloudWatch metrics for CPU, memory, and network.

Use VPC Flow Logs to analyze traffic.

Verify Load Balancer health checks.

Optimize database queries or switch to Aurora Serverless.



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
