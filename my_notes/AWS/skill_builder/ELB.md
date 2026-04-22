Introduction to Elastic Load Balancing (ELB)


## 

**Lesson objectives**

By the end of this lesson, you will be able to do the following:

- Identify the core functionality of ELB.
    
- Identify the technical concepts required to use ELB.
    
- Identify the key features and functions of ELB.
    
- Identify the practical application of ELB.
    

## 

ELB **introduction**

Elastic Load Balancing (ELB) automatically manages incoming traffic to your applications in the cloud. It serves as a single front door that receives all incoming requests and distributes them across multiple servers. This distribution helps maintain application availability and responsiveness during high user traffic or server issues.

A key ELB feature is its automatic adjustment to changing conditions. When your application gets more traffic, ELB handles the growth without manual work. When traffic drops, ELB scales down automatically. AWS handles all ELB infrastructure maintenance, software updates, and scaling operations. You can focus on your application while the underlying technology runs smoothly.

![[Pasted image 20260418054108.png]]

Elastic Load Balancing

ELB integrates with other AWS tools to boost application reliability and performance. It detects problem servers and redirects traffic to healthy ones for continuous application access. From simple websites to complex applications, ELB delivers consistent performance and simplifies infrastructure management.



To learn more about using ELB, choose **ELB**. [ELB](https://aws.amazon.com/elasticloadbalancing/)

## 

ELB **core functionality**

ELB distributes traffic within AWS. It routes application requests across multiple targets. These targets include Amazon EC2 instances, containers, and IP addresses. ELB improves overall application availability.

The following core functions demonstrate how ELB powers application reliability.

## 

Traffic distribution

ELB receives user requests and distributes them across registered targets using by configured algorithms. Users connect to a single endpoint while ELB routes connections to optimal targets.

ELB considers target load, connection count, and health status when distributing traffic. This dynamic distribution maintains performance during varying traffic patterns by balancing load and optimizing resource use across your infrastructure. ELB works across multiple AWS Availability Zones within a Region to protect your application if one zone experiences problems.

## 

Health monitoring

ELB checks target health through customizable probes of your application endpoints. These checks confirm that targets respond properly before receiving live traffic.

When targets fail checks, ELB routes new requests to healthy targets only. Traffic resumes to recovered targets after they pass health checks. This monitoring reduces downtime by automatically routing around problems.

## 

Automatic scaling

ELB adjusts capacity as traffic changes without manual work. When application traffic grows, ELB expands to handle increased demand. The load balancer scales independently from your backend systems. 

The system adds capacity during high traffic and reduces it during quiet periods. This adjustment matches resources to demand while maintaining performance. During traffic spikes, scaling prevents slowdowns and keeps your application responsive.


## 

ELB **technical concepts**

You need to understand several key technical concepts to work with ELB. These concepts support how ELB works in AWS to distribute traffic across your application resources. The following technical concepts demonstrate how ELB powers application reliability.

## 

Load balancer types

ELB offers different types of load balancers: Application Load Balancer for web traffic, Network Load Balancer for TCP/UDP traffic, and Gateway Load Balancer for network appliances. Each type serves specific application needs.

## 

Listeners

Listeners are processes that check for connection requests using a configured protocol and port. Each load balancer needs at least one listener to accept traffic. Listeners direct connection requests from clients to your targets.

## 

Target groups

Target groups are logical groupings of targets like EC2 instances, IP addresses, or AWS Lambda functions. Target groups receive load balancer traffic and help you manage multiple targets together. ELB can distribute traffic across multiple Availability Zones within your target groups.

## 

Health checks

ELB monitors registered targets to check whether they can receive traffic. Your clients connect only to targets that pass these checks.

## 

Automatic scaling

ELB automatically adjusts its capacity to handle varying traffic loads. As your application traffic increases or decreases, ELB scales to maintain performance.

## 

Sticky sessions

Sticky sessions, also called session affinity, is a feature that connects users to the same target throughout their application session. This helps stateful applications work correctly.

## 

Connection draining

This feature completes in-progress requests when instances leave service or become unhealthy, to keep active sessions running.

## 

Security and routing

ELB includes advanced routing algorithms and security policies to control traffic flow and SSL/TLS settings.


## 

ELB **key features and capabilities**

ELB offers several key features and capabilities that distribute incoming application traffic across multiple targets in AWS. ELB provides different types of load balancers: Application Load Balancer for HTTP/HTTPS traffic, Network Load Balancer for TCP/UDP workloads, and Gateway Load Balancer for network appliances.

ELB provides powerful features that manage workload distribution and maintain application availability across various resources. The key features include the following.


## 

Multi-zone architecture

ELB works across multiple Availability Zones within an AWS Region. When you use cross-zone load balancing, your traffic flows evenly to all registered targets in active Availability Zones. The Multi-AZ design maintains connections across multiple data centers.

## 

Health monitoring

ELB watches your registered targets' health using customizable check protocols. You can adjust health checks with specific intervals, thresholds, and success criteria. When targets fail checks, ELB redirects connections to healthy targets.

## 

Security integration

ELB handles TLS/SSL encryption tasks for your application servers. You can implement current security protocols and cipher suites for compliance requirements. ELB integrates with AWS WAF and includes SYN flood protection.


ELB offers comprehensive capabilities to help you manage and distribute application traffic effectively. The essential capabilities include the following.

## 

Traffic management

ELB offers different ways to balance traffic, including round-robin, least connections, and weighted methods. You can match traffic patterns to your application needs. Application Load Balancer routes requests based on path, host, HTTP headers, and query parameters.

## 

Automatic scaling

ELB automatically adjusts capacity based on traffic changes without manual intervention. It expands during high traffic periods and reduces capacity during quiet times, to ensure consistent performance. This scaling happens independently from your backend systems to prevent slowdowns and maintain responsiveness during traffic spikes.

## 

Performance monitoring

ELB connects with Amazon CloudWatch to track request counts, latency, error rates, and health status. You can monitor performance data for both load balancers and targets. CloudWatch integration provides access to real-time and historical metrics.


## 

ELB **practical business applications**

ELB offers clear benefits that impact how businesses manage their application traffic and operations. Here are key practical applications.

- #### High-traffic ecommerce
    
    Ecommerce platforms face major traffic spikes during sales events and holidays. ELB spreads customer requests across multiple servers to maintain consistent performance during busy periods.
    
    During events like Black Friday or Cyber Monday, ELB scales up to handle increased shopper volume. This keeps ecommerce sites responsive when traffic surges occur.
    
- #### Healthcare data processing
    
    Healthcare organizations process large volumes of sensitive patient data that requires continuous availability. ELB directs traffic through secure, Health Insurance Portability and Accountability Act (HIPAA)-compliant encryption channels while balancing workloads.
    
    When multiple hospital departments upload medical images simultaneously, ELB distributes the processing load effectively. Health checks actively identify and route traffic away from any failing nodes.
    
- #### Global content delivery
    
    Media companies deliver streaming content to users across different geographic locations. ELB works across AWS Regions to route users to their nearest content servers and balance Regional workloads.
    
    During major streaming events like sports broadcasts or show premieres, ELB manages millions of concurrent connections. Cross-zone balancing ensures consistent performance across different locations.
    
- #### Financial transaction processing
    
    Financial institutions require systems that handle transaction processing securely and efficiently. ELB distributes payment processing workloads while implementing SSL/TLS encryption for Payment Card Industry Data Security Standard (PCI DSS) compliance.
    
    During high-volume periods like tax season, ELB manages increased transaction loads. The service maintains consistent processing speed while upholding security requirements.
    
- #### SaaS application delivery
    
    Software as a service (SaaS) providers must serve multiple clients while keeping their data separate. ELB routes traffic to keep client data isolated while serving thousands of users efficiently.
    
    When clients run intensive operations like month-end reports, ELB keeps performance steady for all users. Smart traffic distribution helps providers meet their service agreements as they grow.
    
- #### Microservices and containerized applications
    
    Companies using microservices architecture benefit from the ability of ELB to route traffic to containerized workloads. This supports flexible, scalable application designs using services like Amazon Elastic Container Service (Amazon ECS) or Amazon Elastic Kubernetes Service (Amazon EKS).
    
    When rolling out new features, ELB enables zero-downtime releases through blue/green deployments. It can gradually shift traffic between different versions, for safe and controlled rollouts.

## 

**Check your knowledge**

The following section will check your understanding of ELB.

What is a core function of Elastic Load Balancing (ELB)?

ELB provides SSL/TLS certificate management and automatically renews security certificates through integration with AWS Certificate Manager to maintain secure connections across all targets.

Correctly unselected

ELB creates custom Amazon CloudWatch dashboards and alerts to monitor performance trends and notify administrators of potential system issues.

Correctly unselected

ELB monitors target health through customizable probes of application endpoints and automatically routes traffic away from failing targets to maintain continuous service availability.

Correctly selected

ELB implements weighted DNS routing protocols to direct users to the closest available content servers for improved latency.

Correctly unselected

SUBMIT

  

Correct

A core function of ELB is health monitoring, which involves checking target health and routing traffic to maintain service availability.

Which of these is a key technical concept of Elastic Load Balancing (ELB)?

Cross-zone distribution enables traffic flow across multiple geographic regions for global content delivery.

Correctly unselected

Listeners are processes that check for connection requests using configured protocols and ports

Correctly selected

Encryption protocols establish secure connections between load balancers and backend instances.

Correctly unselected

Virtual private gateways create connections between on-premises networks and load balanced resources.

Correctly unselected

SUBMIT

  

Correct

Listeners are a fundamental technical concept of ELB. They check for and handle initial connection requests, which is essential for the load balancing process

What is a key feature of Elastic Load Balancing (ELB)?

Multi-zone architecture enables ELB to work across multiple Availability Zones within an AWS Region.

Correctly selected

Real-time code deployment enables ELB to automatically update application code across all registered targets without service interruption.

Correctly unselected

Database replication management enables ELB to maintain synchronized copies of data across multiple database instances.

Correctly unselected

Automated backup scheduling provides ELB with the ability to create and manage regular backups of all registered targets.

Correctly unselected

SUBMIT

  

Correct

Multi-zone architecture is a key feature of ELB. It ensures continuous operation across multiple Availability Zones with 99.99 percent or higher uptime.

What is a practical business application of Elastic Load Balancing (ELB)?

Ecommerce platforms use ELB to handle major traffic spikes during sales events and maintain site performance.

Correctly selected

Manufacturing companies use ELB to coordinate production line automation by distributing machine control signals across multiple industrial systems.

Correctly unselected

Research institutions use ELB to manage distributed computing clusters for processing complex scientific calculations across laboratory networks.

Correctly unselected

Government agencies use ELB to synchronize emergency response systems by coordinating communication between multiple dispatch centers.

Correctly unselected

SUBMIT

  

Correct

Ecommerce platforms represent a practical business application of ELB by managing high traffic periods while maintaining performance during peak sales events.

---

Technical Overview for ELB

## 

**Lesson objectives**

By the end of this lesson, you will be able to do the following:

- Identify the elements of the ELB service architecture.
    
- Identify the key service integrations for ELB.
    

## 

**ELB architecture**

ELB distributes incoming application traffic across multiple targets in the AWS Cloud. This architecture demonstrates how ELB works within a virtual private cloud (VPC) to create a highly available and scalable infrastructure across multiple Availability Zones.

To learn more about the ELB architecture and features, choose each of the numbered markers.

![[Pasted image 20260418055227.png]]

## Clients (users)

External users connect to your application through the load balancer endpoint. The load balancer serves as the single entry point, hiding the complexity of your backend infrastructure.

## AWS Cloud

The cloud environment where your ELB infrastructure is deployed provides the foundation for scalable and reliable application delivery.

## VPC

The VPC provides the networking foundation with security controls and network isolation. The VPC spans multiple Availability Zones for high availability.

## Availability Zones

Independent data center locations provide redundancy and fault tolerance. Running resources across multiple zones ensures that your application remains available even if one zone fails.

## Load balancer

The load balancer nodes work together to receive and distribute incoming traffic. Listeners actively check for connection requests on configured ports and protocols. The load balancer routes requests to target groups while security groups control access at the instance level.

## Target group

Target groups are collections of instances that receive traffic from the load balancer. Instances are registered as targets and can be scaled based on demand.

## Instance distribution

EC2 instances are deployed across multiple Availability Zones for high availability. The load balancer continuously monitors instance health and automatically adjusts traffic distribution based on demand and instance status.

## Subnets and security

Subnets are network segments within each Availability Zone that contain your resources. Security groups act as virtual firewalls to control inbound and outbound traffic to your instances. Network access control lists (network ACLs) provide an additional layer of security at the subnet level. Together, these security controls help organize and protect your resources.

---

## 

**ELB integrations**

ELB works with many AWS services to create a complete cloud infrastructure. These connections expand basic load balancing capabilities with advanced application delivery, security, scaling, and monitoring features. Learn how these service connections help you build strong, secure, and scalable systems.

## 

Amazon EC2

Amazon Elastic Compute Cloud (Amazon EC2) hosts the application instances that receive distributed traffic through ELB. ELB spreads incoming traffic across EC2 instances in different Availability Zones for high availability.

EC2 instances connect to ELB as targets directly or through Auto Scaling groups. ELB checks instance health to route traffic only to healthy instances to keep overloaded servers from receiving requests.

## 

AWS Auto Scaling

AWS Auto Scaling with ELB adjusts capacity dynamically to maintain performance during traffic changes. AWS Auto Scaling adds new instances to the load balancer when launched and removes them when terminated.

This combination maintains availability by adding EC2 instances during traffic spikes. When traffic drops, AWS Auto Scaling removes extra instances while keeping traffic balanced across remaining ones.

## 

Amazon VPC

Amazon Virtual Private Cloud (Amazon VPC) provides the network foundation for ELB. Through Amazon VPC, you can set up internet-facing load balancers for public traffic or internal load balancers for VPC-only access.

Amazon VPC adds security through security groups and network ACLs to control load balancer traffic. You can place load balancers in public or private subnets and use VPC endpoints for secure AWS service communication.

## 

ACM

AWS Certificate Manager (ACM) works with ELB to manage SSL/TLS certificates centrally. ACM handles certificate deployment and renewal automatically for your load balancers.

You can use ACM certificates with Application Load Balancer or Network Load Balancer for HTTPS connections. The certificates deploy straight to your load balancer, securing client communications automatically.

## 

CloudWatch

Amazon CloudWatch monitors your ELB resources by collecting and displaying metrics. ELB sends data to CloudWatch about each load balancer and target group, including request counts and health statistics.

Track load balancer performance through CloudWatch dashboards and receive alerts when metrics pass your defined limits. CloudWatch logs show traffic patterns to help you improve your infrastructure.

## 

AWS WAF and Shield Standard

AWS WAF works with Application Load Balancers to defend web applications. This security layer filters HTTP(S) requests before they reach your servers. All Application Load Balancers include AWS Shield Standard for basic distributed denial of service (DDoS) protection at no additional cost.

Connect AWS WAF rules to your Application Load Balancer to block attacks like SQL injection, control IP access, and create custom security rules. Combined with Shield Standard, this protects your applications from common web threats and DDoS attacks without changing your backend systems.

## 

Route 53

Amazon Route 53 handles DNS and traffic routing for load-balanced applications. Route 53 alias records direct domain traffic to load balancers without extra DNS costs.

Route 53 offers weighted, latency-based, and location-based routing to send users to the best load balancer. It redirects traffic from unhealthy load balancers automatically to keep your applications running.

### 

**Integration considerations**

When implementing ELB, consider these key integration factors to ensure optimal system performance.

APPLICATION AND NETWORK DESIGN
	Plan your architecture carefully with appropriate load balancer types and network configuration. Ensure proper VPC setup, subnet placement, and IP address allocation for scaling needs. 
	Now that you have reviewed application and network design, move on to the next tab to learn about security implementation.

SECURITY IMPLEMENTATION
	Configure SSL/TLS certificates through ACM, set up security groups and network ACLs, and integrate AWS WAF for protection. Ensure that your setup meets compliance requirements.
	Now that you have reviewed security implementation, move on to the next tab to learn about scaling strategy.


SCALING STRATEGY

Implement Auto Scaling groups with appropriate health checks and scaling policies. Consider capacity requirements and cost implications while maintaining performance during traffic fluctuations.

Now that you have reviewed scaling strategy, move on to the next tab to learn about monitoring and operations.

MONITORING AND OPERATIONS
Set up CloudWatch metrics, alarms, and logs for comprehensive visibility. Create operational dashboards and automated notifications to track and maintain system health.

Now that you have reviewed monitoring and operations, move on to the remaining content.


## 

**Check your knowledge**

The following section will check your understanding of ELB.

What is an element of Elastic Load Balancing (ELB) service architecture?

A message queuing framework that processes asynchronous workloads in sequence

Correctly unselected

A content generation pipeline that creates dynamic web assets based on user requests

Correctly unselected

A database clustering system that automatically replicates data between multiple storage nodes

Correctly unselected

A front-end traffic distribution system that spreads incoming requests across Amazon EC2 instances in different Availability Zones

Correctly selected

SUBMIT

  

Correct

A front-end traffic distribution system is a key element of the ELB service architecture. This component spreads incoming requests across EC2 instances in different Availability Zones, which is fundamental to load balancing functionality.

Which service integrates with Elastic Load Balancing (ELB)?

AWS Certificate Manager (ACM) for managing SSL/TLS certificates and security protocols

Correctly selected

Amazon Elastic Transcoder for converting media files between different formats and resolutions

Correctly unselected

AWS Glue for managing extract, transform, and load (ETL) workflows and data transformations

Correctly unselected

AWS Systems Manager for automated patch management and configuration

Correctly unselected

SUBMIT

  

Correct

ACM is a key service integration for ELB. It manages SSL/TLS certificates and provides secure connections for load balanced applications.


ELB Demonstrations

## 

**Lesson objectives**

By the end of this lesson, you will recognize how to use the AWS Management Console to perform the basic functions of ELB.

### 

**This lesson contains the following demonstrations:**

- Creating Your First Application Load Balancer
    
- Configuring Health Checks and Exploring Instance Failover
    
- Viewing Load Balancer Metrics
    
- Deleting Resources
    

### 

**Prerequisites:** 

To complete the demos and follow along, the following prerequisites are required:

- You have an AWS account.
    
- Download the provided AWS CloudFormation template (elb-demo-setup.yaml).
    

**Before starting, perform the following procedure:**

1. Open the CloudFormation console.
    
2. Create a new stack by using the provided template.
    
3. Wait 10–15 minutes for the stack to finish.
    

**Important:** Do not begin the demonstrations until the CloudFormation stack status shows _CREATE_COMPLETE_.

**Note:** This template sets up your initial environment, including a VPC, subnets, security groups, and EC2 instances. You will create additional resources like the Application Load Balancer during the demonstrations.

To download the file attachment, choose anywhere inside the following box.

## 

Creating Your First Application Load Balancer

In this demonstration, you will learn how to set up an Application Load Balancer through the AWS Management Console.

Learn to configure a basic load balancer that distributes web traffic across multiple EC2 instances in different Availability Zones.
Video

Welcome to this demonstration. Here, you will learn how to create a target group and an Application Load Balancer in Amazon Elastic Compute Cloud (Amazon EC2).

From the AWS Management Console, enter **EC2** in the search box. Then choose **EC2**.

On the Amazon EC2 console, scroll down to the **Load Balancing** section and choose **Target Groups**.

On the **Target groups** page, choose **Create target group**.

On the **Specify group details** page, under **Choose a target type**, choose **Instances**. This setting determines what type of resources will receive traffic from your load balancer.

Scroll down. In the **Target group name** field, enter **demo-target-group**. In the **VPC** section, choose **Demo-VPC** from the dropdown menu.

Scroll down and choose **Next** to proceed to registering targets.

On the **Register targets** page, select the checkboxes next to the two instances that you want to register with the target group. Then choose **Include as pending below**.

Scroll down. Your instances have been added to the **Review targets** section. To complete the process, choose **Create target group**.

A success message appears, confirming that you have successfully created the target group for the load balancer. This target group will direct traffic to your registered instances.

In the navigation pane, under **Load Balancing**, choose **Load Balancers** to begin creating your load balancer.

On the **Load balancers** page, choose **Create load balancer** to start the creation process.

On the **Load balancer types** page, under **Application Load Balancer**, choose **Create**. Application Load Balancers operate at the application layer and are ideal for HTTP and HTTPS traffic.

On the **Create Application Load Balancer** page, in the **Load balancer name** field, enter **demo-ALB**.

Scroll down to the **Network mapping** section. Choose **Demo-VPC** from the VPC dropdown menu. This defines where your load balancer will operate.

Select the checkboxes for your Availability Zones. Then for each Availability Zone, choose the **Demo-Public-Subnet** from the **Subnet** dropdown menu. Using multiple Availability Zones improves fault tolerance.

Scroll down to the **Security groups** section. Choose the **X** to remove the default security group that might have restrictive settings.

From the **Security groups** dropdown menu, choose the **Demo ALB Security Group**. In the **Listeners and routing** section, from the **Default action** dropdown menu, choose the **demo-target-group** that you created earlier.

Scroll to the end of the page and choose **Create load balancer** to initiate the creation process.

A success banner shows that your load balancer is successfully created. In the **Details** panel, the status shows as _Provisioning_. To refresh the status, use the refresh button.

When the status updates to _Active_, your load balancer is ready to receive traffic. This might take several minutes.

To test your load balancer, copy the DNS name of the load balancer.

Open a new browser window. Paste the load balancer's DNS name into the address field and press Enter. You will receive a Hello response from one of the EC2 instances in the target group.

Refresh your browser, and you will see the load balancer alternating traffic between the two instances in your target group. This demonstrates the load balancing functionality.

Thank you for your participation.

## 

Configuring Health Checks and Exploring Instance Failover

In this demonstration, you will learn how to configure health checks for your Application Load Balancer targets through the AWS Management Console.

Learn how to customize health check settings and explore instance failover behavior for effective traffic routing to healthy instances.

In this demonstration, you will learn how to configure health checks for an Application Load Balancer and explore an instance failover scenario.

From the AWS Management Console, enter **EC2** in the search box. Then choose **EC2** to access the Amazon EC2 service.

In the navigation pane, scroll to **Load Balancing** and choose **Target Groups** to manage your load balancer targets.

On the **Target groups** page, choose the checkbox next to your target group, and then choose the **Health checks** tab. Then, choose **Edit** to modify the health check configuration.

On the **Edit health check settings** page, in the **Health check path** field, enter **/index.html** to specify the destination path for health check requests.

In the **Healthy threshold** field, enter **2**, to define how many consecutive successful checks are required to mark a target as healthy. For the **Interval** field, enter **15** seconds to set the time between health checks.

Scroll down and choose **Save changes** to apply your health check configuration.

From **Target groups**, choose the **Targets** tab. Notice that both instances show a _Healthy_ status, indicating that they are passing the configured health checks.

From the navigation pane, under **Load Balancing**, choose **Load Balancers** to view your load balancer details.

Select the checkbox next to your load balancer. Then, in the **Details** tab, under **DNS name**, copy the load balancer's DNS name to access your application.

Open a new browser window. Paste the load balancer's DNS name into the address field and press Enter. You will receive a Hello response from one of the EC2 instances in the load balancer's target group.

Refresh your browser to see the load balancer alternating traffic between the two instances in your target group. This demonstrates the load distribution functionality.

From the navigation pane, choose **Instances** to view your EC2 instances.

Select the checkbox next to **Demo-Server-1** and choose **Connect** to establish a connection to this instance.

Choose the **Session Manager** tab. Then choose **Connect** to open a secure terminal session with your EC2 instance.

A new browser tab will open with a session to the EC2 instance. To simulate an unhealthy target, enter the following command to stop the web server service: **sudo systemctl stop httpd**. Note: Copyable command available following this demo.

From the navigation pane, choose **Target Groups** to monitor the health status changes.

Choose the **Targets** tab. Notice that the **Health status** for Demo-Server-1 shows _Unhealthy_ and the **Health status details** show that the health checks failed.

In your browser window, refresh the load balancer DNS page. Notice that the load balancer now directs traffic only to the healthy instance in your target group.

From your EC2 session browser tab, enter the following command to restart the web server: **sudo systemctl start httpd**. Note: Copyable command available following this demo.

On the **Target Groups** page, observe that the **Health status** for Demo-Server-1 has returned to _Healthy_ after passing the required health checks.

Refresh the load balancer DNS page. Notice that traffic now routes to both healthy instances in your target group.

Validate that both instances show when you refresh the page, to confirm that traffic is being distributed across all healthy targets.

Thank you for your participation.

sudo systemctl stop httpd

sudo systemctl start httpd

---

## 

Viewing Load Balancer Metrics

In this demonstration, you will learn how to view load balancer metrics in Amazon CloudWatch and create metric alarms using the AWS Management Console.

You will learn how to monitor your load balancer's performance, explore operational metrics, and set up automated notifications when specific thresholds are exceeded.

In this demonstration, you will learn how to view load balancer metrics within Amazon CloudWatch and create a load balancer metric alarm.

From the AWS Management Console, enter **EC2** in the search box, and then choose **EC2**.

In the navigation pane, scroll to **Load Balancing** and choose **Load Balancers**.

On the **Load balancers** page, choose the link for **demo-ALB**.

On the **demo-ALB** details page, scroll down and choose the **Monitoring** tab.

On the **Monitoring** tab, view the default metrics of the load balancer, such as **Target Response Time** and **Requests**.

From the time selector, adjust the time range for your metrics view.

To set a custom time range, choose **Custom** from the time selector. Enter **30** minutes, then choose **Apply**.

In the **Requests** metric widget, choose the **Widget actions** button and choose **Explore related**.

The **Operational troubleshooting** console opens, displaying a topology map of your load balancing infrastructure.

Scroll down the **Operational troubleshooting** pane to review additional metrics related to the request metric that you selected earlier.

For the **TargetResponseTime: Average** metric, choose the more actions button and choose **View in Metrics**.

A new browser tab opens, showing the metric in the Amazon CloudWatch console.

From the **Actions** menu, choose the create alarm icon.

In the Conditions section, enter _0.001_ as the threshold value. Choose **Next**.

On the **Configure actions** page, choose **In alarm**, then choose **Create new topic**.

For the topic name, enter **Demo_CloudWatch_Alarms_Topic**. Enter an email address to receive notifications. Choose **Create topic**.

Scroll to the end of the page and choose **Next**.

On the **Add name and description** page, for **Alarm name**, enter **Demo_Avg_Target_Response_Time_Threshold**. Then choose **Next**.

On the **Preview and create** page, review your settings, scroll down, and choose **Create alarm**.

You have created a new alarm to send an email notification through Amazon Simple Notification Service (Amazon SNS) when the average target response time threshold is exceeded for your load balancer. Note: After creating the alarm, you might receive a subscription confirmation email. Confirm the subscription to ensure that you receive alarm notifications. The alarm will not send notifications until the endpoint is confirmed.

Thank you for your participation.

---

## 

Deleting Resources

In this demonstration, you will learn how to remove the resources that you created during this lesson.

In this demonstration, you will learn how to clean up the infrastructure provisioned during the previous demos.

From the AWS Management Console, enter **CloudWatch** in the search box, and choose **CloudWatch**.

From the navigation pane, choose **All alarms**.

Select the checkbox next to the demo alarm. From the **Actions** menu, choose **Delete**.

At the delete confirmation prompt, choose **Delete**.

Your CloudWatch load balancer alarm has been successfully deleted.

From the AWS Management Console, enter SNS in the search box, and choose **Simple Notification Service**.

From the navigation pane, choose **Topics**.

Select the demo topic. Then choose **Delete**.

In the delete topic prompt, enter **delete me** in the confirmation field, and choose **Delete**.

The demo topic has been successfully deleted.

From the AWS Management Console, enter **EC2** in the search box, and choose **EC2**.

From the navigation pane, scroll down and choose **Load Balancers**.

Select the checkbox for the **demo-ALB** load balancer. From the **Actions** menu, choose **Delete load balancer**.

In the delete load balancer prompt, enter **confirm** in the confirmation field, and choose **Delete.**

The demo load balancer has been successfully deleted.

From the navigation pane, choose **Target Groups**.

Select the checkbox for the **demo-target-group**. From the **Actions** menu, choose **Delete**.

At the delete target group prompt, choose **Yes, delete**.

The demo target group has been successfully deleted.

From the AWS Management Console, enter **CloudFormation** in the search box, and then choose **CloudFormation**.

Select the **ELB-Demo** stack. Then choose **Delete**.

At the delete stack prompt, choose **Delete**.

The stack status will change to _DELETE_IN_PROGRESS_. Choose the refresh button periodically to update the status.

After a few minutes, the stack containing the starting infrastructure will be deleted.

Thank you for your participation.

