
Lesson 2 of 11

# 

Course Overview

Amazon Web Services (AWS) storage provides you with the services you need to build the storage solution that’s right for your organization. Object storage services are one of the three primary types of storage in the AWS storage portfolio. You will discover the depth and breadth of object storage service options available for you to choose from to meet your organization’s requirements. 

The AWS object storage services consist of Amazon Simple Storage Service (Amazon S3).  Amazon S3 uses Amazon S3 storage classes for you to define your storage tiers based on your access patterns and needs. You can select from many Amazon S3 features and capabilities and apply them to your organization’s needs. 

Before choosing an AWS storage solution, AWS recommends that you first assess what storage characteristics are appropriate for your applications and business. After familiarizing yourself with AWS storage, you can then compare your requirements to the available AWS storage services and select the solution that meets your needs.

In this course, you are introduced to Amazon S3, Amazon S3 and Amazon S3 Glacier storage classes, and storage class tiering automation options.

![](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/tnc-icon-set4-dark_digital-courses.svg)

After completing this course, you should be able to do the following:

- Describe Amazon S3 object storage services.
- Discuss available Amazon S3 storage classes.
- Differentiate Amazon S3 Glacier storage classes.
- Describe storage class data tiering options.
- Discuss data protection options for Amazon S3 data.

---
Lesson 3 of 11

# 

Object Storage on AWS

In this lesson, you will learn about the following:

- What object storage is
- What object storage service is available on AWS

**Object storage overview**

_Object storage_ is built on top of block storage. Object storage is created using an operating system that formats and manages the reading and writing of data to the block storage devices. The name object storage comes from the primary use of storing the data within a binary object. Unlike file storage, object storage does not differentiate between types of data. The type of data or the file type becomes part of the data's metadata.

An object is made up of a larger set of blocks organized by using a predetermined size. Smaller files or data are stored at a binary level within the object. Larger data files are stored by spreading the data across multiple objects.

Object storage is recognized for its inherent high availability of the file objects. Object storage is designed to support millions of file objects in a single bucket. Some systems support file versioning, file tracking, and file retention capabilities.

![[Pasted image 20260422124820.png]]


### 

**AWS object storage** 

Applications developed in the cloud often take advantage of object storage's vast scalability and metadata characteristics. Object storage solutions are ideal for building modern applications from the beginning that require scale and flexibility. The solution is also ideal for importing existing data stores for analytics, backup, or archive.

Amazon S3 is object storage in the AWS Cloud. Amazon S3 is offered with different storage classes or storage tiers to match your price, access, and availability requirements. Amazon S3 Glacier storage classes, for example, are used for archival storage and provide near-line, offline, and deep archival storage at a lower cost per gigabyte over non-archival storage classes.

AWS uses Amazon S3 as cost-effective storage to store snapshots and backups of data stored in other core storage services, such as Amazon Elastic Block Store (Amazon EBS) and Amazon Elastic File System (Amazon EFS).

Lesson 4 of 11

# 

Introduction to Amazon S3

**Lesson objectives**

In this lesson, you will learn about the following:

- The basics of the Amazon service
- High-level Amazon S3 features
- The benefits of Amazon S3  
      
      
    

****Amazon S3 overview****

Amazon S3 is storage for the internet. It is designed to make web-scale or cloud-native computing easier. Amazon S3 integrates with the widest range of other AWS services so that you can create robust workloads for your organization. 

Amazon S3 has a simple web service interface that you can use to store and retrieve any amount of data from anywhere on the web. Amazon S3 uses standards-based REST APIs designed to work with any internet-development toolkit. 

Amazon S3 has various features that you can use to organize and manage your data in ways that support specific use cases, enable cost efficiencies, enforce security, and meet compliance requirements. Data is stored as objects within resources called _buckets._ A single object can be up to 5 terabytes in size. You can access objects through S3 Access Points or directly through the bucket hostname.

Amazon S3 has a flat, non-hierarchical structure. All objects are stored in S3 buckets and can be organized with shared names called _prefixes_. At first inspection, prefixes resemble a directory structure. However, all objects are stored in the same bucket. The prefixes allow you to group objects using the prefixes as a common name in the path. 

Amazon S3 provides industry-leading performance for cloud object storage. Amazon S3 supports parallel requests. This means that you can scale your performance by the factor of your compute cluster, without customizing your application. Performance scales per prefix, so you can use as many prefixes as you need in parallel to achieve the required throughput. You can have a virtually unlimited number of prefixes. Amazon S3 performance supports at least 3,500 requests per second to add data and 5,500 requests per second to retrieve data per prefix. You can add prefixes to increase performance significantly.

Amazon S3 provides strong read-after-write consistency for PUT and DELETE actions on objects in your S3 bucket in all AWS Regions. This applies to writes to new objects, PUT actions that overwrite existing objects, and DELETE actions. 

### 

**Amazon S3 features include the following capabilities:**

- Appending metadata tags to objects
- Moving and storing data across different S3 storage classes
- Configuring and enforcing data access controls
- Securing data against unauthorized users
- Running big data analytics
- Monitoring data at the object or bucket levels
- Viewing storage usage and activity trends across your organization

## 

**Top-level Amazon S3 features**

Amazon S3 is built on a service foundation to deliver object storage to meet your operational requirements. The core elements include performance, ease of use, reliability, scalability, security, and cost effectiveness. These building blocks are the foundational features of using the Amazon S3 service to meet your object storage needs.

To learn more about the top-level features of Amazon S3 object storage, choose each of the four numbered markers.

![[Pasted image 20260422125146.png]]

## 

****Amazon S3 benefits****

As you explore further, you will discover that the features are designed to provide you with significant benefits. These benefits are a result of the implementation of Amazon S3 top-level features and the native design of the Amazon S3 service. 

The benefits are derived from how Amazon S3 is designed. You benefit from the straightforward design, ease of implementation, high reliability, built-in features, security of your data, and flexibility to optimize your costs.

To learn more about the benefits of using Amazon S3 object storage, choose each of the five numbered markers.


![[Pasted image 20260422125455.png]]

### 

**What's next?**

You just learned the basics of Amazon S3 and its benefits. In the next lesson, you will learn more information about the Amazon S3 features.

Lesson 5 of 11

# 

Amazon S3 Features

**Lesson objectives**

In this lesson, you will learn about the following:

- More about Amazon S3 features
- Amazon S3 pricing basics

**Amazon S3 features**

Amazon S3 has various features you can use to organize and manage your data in ways that support specific use cases, enable cost efficiencies, enforce security, and meet compliance requirements. 

Amazon S3 is feature rich to allow you to configure and adapt the features to meet your organizational requirements. A deeper look into the specific features is provided in the categorized sections below.

### 

Amazon S3 management and monitoring

To learn more about the features of Amazon S3 management and monitoring, expand each of the following five categories.

## 

Storage management

Batch Operations streamlines the management of your data in Amazon S3 at any scale, whether you store thousands of objects or a billion. 

  

With S3 Batch Operations, you can do the following with a single Amazon S3 API request or a few steps in the Amazon S3 console:

- Copy objects between buckets
- Replace object tag sets
- Modify access controls,
- Restore archived objects from Amazon S3 Glacier

You can also use S3 Batch Operations to run AWS Lambda functions across your objects to run custom business logic, such as processing data or transcoding image files. When an S3 Batch Operation request is done, you will receive a notification and a completion report of all changes made.

## 

Version control

Amazon S3 also supports features that help maintain data version control, prevent accidental deletions, and replicate data to the same or different AWS Region. With Amazon S3 versioning, you can easily preserve, retrieve, and restore every version of an object stored in Amazon S3. You can recover from unintended user actions and application failures. 

  

To prevent accidental deletions, enable multi-factor authentication (MFA) Delete on an S3 bucket. If you try to delete an object stored in an MFA Delete-enabled bucket, it will require two forms of authentication: your AWS account credentials and the concatenation of a valid serial number, a space, and the six-digit code displayed on an approved authentication device, such as a hardware key fob or a Universal 2nd Factor security key.

## 

Replication

With S3 Replication, you can replicate objects and their respective metadata and object tags to one or more destination buckets into the same or different AWS Regions. You can implement this feature for reduced latency, compliance, security, disaster recovery, and other use cases. 

- You can configure _S3 Cross-Region Replication_ to replicate from a source S3 bucket to one or more destination buckets in a different AWS Region. 
- _Amazon S3 Same-Region Replication_ replicates objects between buckets in the same AWS Region. _Amazon S3 Replication Time Control_ helps you meet compliance requirements for data replication by providing a service-level agreement and visibility into replication times.

## 

Retention and compliance

You can also enforce write once read many (WORM) policies with S3 Object Lock. This Amazon S3 management feature blocks object version deletion during a customer-defined retention period. Object version deletion is blocked so that you can enforce retention policies as an added layer of data protection or to meet compliance obligations. 

  

You can migrate workloads from existing WORM systems into Amazon S3. You then configure S3 Object Lock at the object level and bucket levels to prevent object version deletions before a predefined Retain Until Date or Legal Hold Date. Objects with S3 Object Lock retain WORM protection, even if they are moved to different storage classes with an S3 Lifecycle policy. To track which objects have S3 Object Lock, you can refer to an S3 Inventory report that includes the WORM status of objects. 

  

You can configure S3 Object Lock in one of two modes, Governance mode and Compliance mode:

- When deployed in Governance mode, AWS accounts with specific AWS Identity and Access Management (IAM) permissions are able to remove S3 Object Lock from objects. 
- If you require stronger immutability to comply with regulations, you can use Compliance mode. In Compliance mode, no user or root account can remove the protection.

## 

Storage monitoring

In addition to Amazon S3 management capabilities, you can use Amazon S3 features and other AWS services to monitor and control how your Amazon S3 resources are being used. You can apply tags to S3 buckets to allocate costs across multiple business dimensions (such as cost centers, application names, or owners). You can then use AWS Cost Allocation Reports to view usage and costs aggregated by the bucket tags. 

  

You can also use Amazon CloudWatch to track the operational health of your AWS resources and configure billing alerts that are sent to you when estimated charges reach a user-defined threshold. 

  

AWS CloudTrail is another monitoring service that tracks and reports on bucket-level and object-level activities.

  

You can configure S3 Event Notifications to trigger workflows, alerts, and invoke Lambda when a specific change is made to your Amazon S3 resources. You can use S3 Event Notifications for the following operations: 

- Transcode media files automatically as they are uploaded to Amazon S3.
- Process data files as they become available.
- Synchronize objects with other data stores.

### 

**Amazon S3 storage analytics and insights**

To learn more about the features of Amazon S3 storage analytics and insights features, select each of the two tabs.

STORAGE LENS



S3 Storage Lens delivers organization-wide visibility into object storage usage and activity trends. Usage metrics describe the size, quantity, and characteristics of your storage. S3 Storage Lens provides automated recommendations to help you optimize your storage.  

  

As a storage analytics solution, S3 Storage Lens includes drill-down options to generate insights at the organization, account, Region, bucket, or even prefix level.

### 

**Amazon S3 access management and security**

To learn more about the features of Amazon S3 access management and security, expand each of the following six categories.


STORAGE CLASS ANALYSIS
Amazon S3 Storage Class Analysis analyzes storage access patterns to help you determine when to transition less frequently accessed storage to a lower-cost storage class. 

  

You can use the results to help improve your S3 Lifecycle policies. You can configure storage class analysis to analyze all the objects in a bucket. Alternatively, you can configure filters to group objects together for analysis by a common prefix, object tags, or both prefix and tags.

### 

**Amazon S3 access management and security**

To learn more about the features of Amazon S3 access management and security, expand each of the following six categories.

## 

Access management

To protect your data in Amazon S3, users have access to only the S3 resources they create by default. You are the resource owner for what you create. Administrators can grant access to other users by using one or a combination of the following access management features: 

- IAM to create users and manage their respective access permissions
- Access control lists to make individual objects accessible to authorized users
- Bucket policies to configure permissions for all objects within a single S3 bucket
- S3 Access Points to simplify managing data access to shared datasets by creating access points with names and permissions specific to each application or sets of applications.
- Query String Authentication to grant time-limited access to others with temporary URLs

Amazon S3 also supports audit logs that list the requests made against your Amazon S3 resources for complete visibility into who is accessing what data.

## 

On-premises connectivity

You can use virtual private cloud (VPC) endpoints to connect to Amazon S3 resources from Amazon Virtual Private Cloud (Amazon VPC) and from your on-premises environment. Amazon S3 supports both server-side encryption with three key management options and client-side encryption for data uploads. 

  

AWS PrivateLink for Amazon S3 provides private connectivity between Amazon S3 and on-premises environments. You can provision interface VPC endpoints for S3 in your VPC to connect your on-premises applications directly with Amazon S3 over AWS Direct Connect or AWS Virtual Private Network. 

  

Requests to interface VPC endpoints for Amazon S3 are routed automatically to Amazon S3 over the AWS network. You can set security groups and configure VPC endpoint policies for your interface VPC endpoints for additional access controls.

## 

Encryption

By default, all new objects are encrypted when they are stored in an S3 bucket. The objects are encrypted using server-side encryption with Amazon S3 managed keys (SSE-S3) or AWS Key Management Service (AWS KMS) keys stored in AWS KMS (SSE-KMS). You can change your settings to not encrypt your data if needed (not recommended).

  

When you configure an S3 bucket to use default encryption with SSE-KMS, you can also enable S3 Bucket Keys to decrease request traffic from Amazon S3 to AWS KMS. By doing this, you can reduce the cost of encryption.

  

When you use server-side encryption, Amazon S3 encrypts an object before saving it to disk and decrypts the object when you download it.

## S3 Block Public Access 

S3 Block Public Access is a set of security controls that ensures S3 buckets and objects do not have public access. S3 Block Public Access is turned on by default. From the Amazon S3 console, you can modify the S3 Block Public Access settings to all S3 buckets within your AWS account or to specific S3 buckets as required. 

After the settings are applied to an AWS account, any existing or new S3 buckets and objects associated with that account inherit the settings that prevent public access. S3 Block Public Access settings override other Amazon S3 access permissions. By setting this configuration, the account administrator can enforce a _no public access_ policy regardless of how an object is added, how an S3 bucket is created, or whether there are existing access permissions. 

S3 Block Public Access controls are auditable and provide a further layer of control. S3 Block Public Access uses AWS Trusted Advisor bucket permission checks, CloudTrail logs, and CloudWatch alarms. Enable Block Public Access for all accounts and S3 buckets that you do not want publicly accessible.

By using S3 Access Points that are restricted to a VPC, you can secure your Amazon S3 data within your private network. Additionally, you can use AWS Service Control Policies to require that any new S3 Access Point in your organization is restricted to VPC-only access.

## 

Access Analyzer for Amazon S3

Access Analyzer for Amazon S3 is a feature that monitors your bucket access policies, ensuring that the policies provide only the intended access to your Amazon S3 resources. Access Analyzer for Amazon S3 evaluates your bucket access policies so that you can discover and swiftly remediate S3 buckets with potentially unintended access. 

  

When reviewing results that show potentially shared access to an S3 bucket, you can Block All Public Access to the S3 bucket from the Amazon S3 console. For auditing purposes, you can download Access Analyzer for Amazon S3 findings as a CSV report. 

  

IAM provides the timestamp when a user or role last used Amazon S3 and the associated actions. Use this _last accessed_ information to analyze Amazon S3 access, identify unused permissions, and remove them confidently.

## 

Amazon Macie

You can use Amazon Macie to discover and protect sensitive data stored in Amazon S3. Macie gathers a complete Amazon S3 inventory automatically and continually evaluates every S3 bucket to alert on any of the following:

- Any publicly accessible S3 buckets
- Unencrypted S3 buckets
- S3 buckets shared or replicated with AWS accounts outside your organization 

Macie applies machine learning and pattern matching techniques to the S3 buckets you select to identify and alerts you to sensitive data, such as personally identifiable information. As security findings are generated, they are pushed out to Amazon EventBridge. By using Macie, you can integrate with existing workflow systems and trigger automated remediation with services, such as AWS Step Functions, to take actions, such as closing a public S3 bucket or adding resource tags.

### 

****Amazon S3 data processing and query****

To learn more about the features of Amazon S3 data processing and query, select each of the following two tabs.

S3 OBJECT LAMBDA


S3 Object Lambda uses Lambda functions to process the output of a standard S3 GET request automatically. Lambda is a serverless compute service that runs customer-defined code without requiring management of underlying compute resources. 

  

Use the AWS Management Console to configure a Lambda function and attach it to an S3 Object Lambda Access Point. Amazon S3 will automatically call your Lambda function to process any data retrieved through the S3 Object Lambda Access Point, returning a transformed result back to the application. You can author and run your own custom Lambda functions, tailoring S3 Object Lambda’s data transformation to your specific use case.

QURY IN PLACE
Amazon S3 has a built-in feature and complimentary services that query data without needing to copy and load it into a separate analytics platform or data warehouse. This means that you can run big data analytics directly on your data stored in Amazon S3. 

  

S3 Select is an S3 feature designed to increase query performance by up to 400 percent, and reduce querying costs as much as 80 percent. It works by retrieving a subset of an object’s data instead of the entire object, which can be up to 5 terabytes in size. using sS3 Select uses simple SQL expressions to retrieve the data. 

  

Amazon S3 is also compatible with AWS analytics services such as Amazon Athena and Amazon Redshift Spectrum.

- Amazon Athena queries your data in Amazon S3 without needing to extract and load it into a separate service or platform. It uses standard SQL expressions to analyze your data, delivers results within seconds, and is commonly used for unplanned data discovery. 
- Amazon Redshift Spectrum also runs SQL queries directly against data at rest in Amazon S3. This service is more appropriate for complex queries and large datasets (up to exabytes). Because Amazon Athena and Amazon Redshift share a common data catalog and data formats, you can use them both against the same datasets in Amazon S3.

**Amazon S3 features**

  
For more information about which features are supported for Amazon S3, choose the AMAZON S3 FEATURES button.

[AMAZON S3 FEATURES](https://aws.amazon.com/s3/features/?nc=sn&loc=2)

![Amazon S3 pricing overview.](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/KPkltH/Storage%20Banner%201%20crop.png)

******Amazon S3 p**ricing overview****

With Amazon S3, you pay for only what you use. No minimum fee applies. Amazon S3 has six cost components to consider when storing and managing your data: 

- Storage pricing
- Request and data retrieval pricing
- Data transfer and transfer acceleration pricing
- Data management and analytics pricing
- Price to process your data with S3 Object Lambda
- Amazon S3 pricing varies based on the AWS Region where it resides.

**Amazon S3 pricing**

  
For more information about basic Amazon S3 pricing, refer to the Amazon S3 Pricing web page by choosing the GO TO PRICING PAGE button.

[GO TO PRICING PAGE](https://aws.amazon.com/s3/pricing/?nc=sn&loc=4)

### 

**What's next?**

  

In this lesson, you learned the basics of Amazon S3 features and service pricing. In the next lesson, you will learn some of the more technical concepts of Amazon S3.


Lesson 6 of 11

# 

Amazon S3 Architecture and Use Cases

**Lesson objectives**

In this lesson, you will learn about the following:

- Sample Amazon S3 architectures
- Typical use cases for Amazon S3  
      
      
    

![](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/l6xLxN/tnc-icon-set4-dark_digital-courses.svg)

![Amazon S3 architecture.](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/_Q_k1i/Storage%20Banner%201%20crop.png)

**Amazon S3 architecture**

Amazon S3 is available in each AWS Region and also available as an optional service for AWS Outposts configurations deployed in your on-premises datacenter. 

Amazon S3 architecture is built to deliver secure and reliable object storage for workflows and use cases. You can use a wide variety of connectivity and access methods to reach your S3 buckets. For example, you can connect using the Internet, a virtual private network, AWS PrivateLink, or AWS Direct Connect. You can access the service using AWS APIs, the AWS Command Line Interface (AWS CLI), or the AWS Management console. As you build your applications, you use a combination of the architectures to deliver the resources you need for your workloads.

  

### 

**Amazon S3 architecture**

In the architecture diagram are some of the possible ways you can apply the Amazon S3 architecture. 

To learn more, choose each of the nine numbered markers.


![Examples of Amazon S3 basic architectures.](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/S3%20arch%202.png)

![[Pasted image 20260422130354.png]]

### 

**AWS services to transfer data into Amazon S3**

Amazon S3 architecture is enhanced as you combine the storage service with other AWS services designed to transfer data into Amazon S3. Amazon S3 uses REST API to exchange information securely over the internet and between applications.

REST API or RESTful API is an interface that two computer systems use to exchange information securely over the internet. Most business applications have to communicate with other internal and third-party applications to perform various tasks. RESTful APIs support this information exchange because they follow secure, reliable, and efficient software communication standards.

![[Pasted image 20260422130554.png]]

The ten AWS services displayed are only some of the available services that can be used to transfer data into Amazon S3. Select the service name to learn more about each AWS service.

- [**AWS Direct Connect**(opens in a new tab)](https://aws.amazon.com/directconnect/) – Provides a dedicated connection from your location to the AWS global network that never touches the internet. 
    
- [**Amazon Data Firehose**(opens in a new tab)](https://aws.amazon.com/kinesis/data-firehose/?nc=sn&loc=2&dn=3) – Extract, transform, and load service that reliably captures, transforms, and delivers streaming data to data lakes, data stores, and analytics services. 
    
- [**Amazon Kinesis Data Streams**(opens in a new tab)](https://aws.amazon.com/kinesis/data-streams/?nc=sn&loc=2&dn=2) – Serverless streaming data service that makes it easy to capture, process, and store data streams at any scale. 
    
- [**Amazon Kinesis Video Streams**(opens in a new tab)](https://aws.amazon.com/kinesis/video-streams/?nc=sn&loc=1&amazon-kinesis-video-streams-resources-blog.sort-by=item.additionalFields.createdDate&amazon-kinesis-video-streams-resources-blog.sort-order=desc) – Securely streams video from connected devices to AWS for analytics, machine learning, playback, and other processing. 
    
- [**Amazon S3 Transfer Acceleration**(opens in a new tab)](https://aws.amazon.com/s3/transfer-acceleration/) – Speeds up content transfers to and from Amazon S3 by as much as 50–500 percent for long-distance transfer of larger objects. 
    
- [**AWS Storage Gateway**(opens in a new tab)](https://aws.amazon.com/storagegateway/) – Set of hybrid cloud storage services that provide on-premises access to AWS Cloud storage. 
    
- [**AWS Outposts**(opens in a new tab)](https://aws.amazon.com/outposts/) – Fully managed solutions that bring AWS infrastructure, services, and tools on premises, from full racks to smaller edge servers, for a true hybrid cloud experience.
    
- [**AWS Snowball Edge**(opens in a new tab)](https://aws.amazon.com/snowball/) – Rugged and secure device for larger data transfers or requiring more compute services. Snowball Edge devices are available as either Snowball Edge Compute Optimized (less storage with more compute capabilities) or Snowball Edge Storage Optimized (more storage with less compute capabilities) devices.
    
- [**AWS DataSync**(opens in a new tab)](https://aws.amazon.com/datasync/) – Secure, online service that automates and accelerates moving data between on premises and AWS Storage services or between AWS Storage services. 
    
- [**AWS Transfer Family**(opens in a new tab)](https://aws.amazon.com/aws-transfer-family/) – Securely scales your recurring business-to-business file transfers to AWS Storage services using Secure FTP, FTP Secure, FTP, and Applicability Statement 2 protocols. 
    

These services represent some of the most popular AWS services for transferring data into Amazon S3. Additional AWS services are available to meet your workload or use case requirements.

![Amazon S3 common use cases.](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/p0FG8-/Storage%20Banner%201%20crop.png)

******Amazon S3 c**ommon use cases****

Amazon S3 use cases are similar to those of many file storage systems. With virtually unlimited storage and low costs, Amazon S3 is a strong storage solution for data-intensive and long-term data storage requirements.


Expand each of the following six sections for more information about common use cases.

## 

Data lakes and big data analytics

Accelerate innovation by building a data lake on Amazon S3, and extract valuable insights using query-in-place, analytics, and machine learning tools. As your data lake grows, use S3 Access Points to configure access to your data, with specific permissions for each application or sets of applications. 

  

You can also use AWS Lake Formation to quickly create a data lake and centrally define and enforce security, governance, and auditing policies. The service collects data across your databases and Amazon S3 resources. It then moves the data into a new data lake in Amazon S3 and cleans and classifies it using machine learning algorithms. 

  

All AWS resources can be scaled up to accommodate your expanding data stores, without upfront investments.

## 

Backup and restore

Build scalable, durable, and secure backup and restore solutions with Amazon S3 and other AWS services. These services include Amazon S3 Glacier, Amazon EFS, and Amazon EBS. This solution augments or replaces existing on-premises capabilities. 

  

AWS and AWS Partners can help you meet Recovery Time Objectives, Recovery Point Objectives, and compliance requirements. With AWS, you can back up data already in the AWS Cloud or use Storage Gateway to send backups of on-premises data to AWS.

## 

Archive

Retire physical infrastructure and archive data with S3 Glacier Flexible Retrieval and S3 Glacier Deep Archive storage classes. These S3 archival storage classes retain objects long term at the lowest rates. 

  

Create an S3 Lifecycle policy to archive objects throughout their lifecycles, or upload objects directly to the archival storage classes. 

  

With S3 Object Lock, you can apply retention dates to objects to protect them from deletions and meet compliance requirements. 

  

Unlike tape libraries, archival data stored in S3 Glacier Flexible Retrieval allows you to restore archived objects in as little as 1 minute for expedited retrievals and 3–5 hours for standard retrievals. Bulk data restores from the S3 Glacier Flexible Retrieval storage class and all restores from the S3 Glacier Deep Archive storage class are completed within 12 hours.

## 

Cloud-native applications

Build fast, cost-effective mobile and internet-based applications by using AWS services and Amazon S3 to store development and production data. This data is shared by the microservices that make up cloud-native applications. 

  

With Amazon S3, you can upload any amount of data and access it anywhere to deploy applications faster and reach more users. Storing data in Amazon S3 means that you have access to the latest AWS developer tools, Amazon S3 API, and services. You can use these resources for machine learning and analytics to innovate and optimize your cloud-native applications.

## 

Hybrid cloud storage

Set up private connectivity between Amazon S3 and an on-premises environment with AWS PrivateLink. You can provision private endpoints in a virtual private cloud (VPC) to allow direct access to Amazon S3 from on premises using private IPs from your VPC. 

  

Storage Gateway lets you seamlessly connect and extend your on-premises applications to AWS Storage, all while caching data locally for low-latency access. 

  

You can also automate data transfers between on-premises storage, including from Amazon S3 on Outposts, and Amazon S3 by using DataSync. DataSync can transfer data at speeds up to 10 times faster than open-source tools. 

  

You can also transfer files directly into and out of Amazon S3 with Transfer Family. This service is fully managed that enables secure file exchanges with third parties using Secure FTP, FTP Secure, and FTP. 

  

Another way to enable a hybrid cloud storage environment is to work with a gateway provider from the AWS Partner Network (APN).

## 

Disaster recovery

Protect critical data, applications, and information technology systems that are running in the AWS Cloud or in your on-premises environment without incurring the expense of a second physical site. 

  

You can use the following AWS resources and services to create disaster recovery architectures to recover from outages caused by natural disasters, system failures, and human errors:

- Amazon S3 storage
- S3 Cross-Region Replication
- AWS compute, networking, and database services

### 

**What's next?**

  

In this lesson, you learned the basics of Amazon S3 architecture and the use cases the service can be applied to. In the next lesson, you will learn about configuring an S3 bucket and adding data through a demonstration.


Lesson 7 of 11

# 

Demonstration 

**Lesson objectives**

In this lesson, you will learn how to create an S3 bucket and add objects to it in the console.  

![](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/tnc-icon-1color-dark_digital-courses.svg)

![Demonstration: Creating an S3 Bucket.](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/duKqHu/Storage%20Banner%201%20crop.png)

**Demonstration: Creating an S3 Bucket**

In this demo, you will learn how to create an S3 bucket, add data objects to the bucket, organize the data objects in the bucket using prefixes, and then clean up your demonstration environment. 

To start the demonstration, choose the play button. A transcript follows the video.


To view the transcript for the demonstration, expand the following Transcript block.

## 

Transcript

Amazon Simple Storage Service (S3), is an object storage service that offers industry-leading scalability, data availability, security, and performance. In this demo, you will learn how to create and configure an Amazon S3 bucket, how to upload, view, move, and delete objects, and finally, how to delete your bucket.

How do I create an S3 bucket in the AWS Management Console?

To get started, open up the AWS Management Console by navigating to https://aws.amazon.com. If you do not have an AWS account, you can sign up for one on this page. If you do have an account, log in with your account credentials. From the list of AWS services, choose S3. If S3 does not appear in your Recently visited list, enter S3 into the Search field followed by the Enter key. Then select S3 when it appears in the search results.

You get started with Amazon S3 by working with buckets and objects. A bucket is a container for objects. An object is a file and any metadata that describes that file. From the S3 dashboard, choose Create bucket.

In the General configuration section, enter a name for the bucket in the Bucket name text box. S3 bucket names must be globally unique and DNS-compliant. Choose the AWS Region that you wish to use for the bucket. It is best practices to choose the Region that is geographically closest to your users or applications. In the Object Ownership section, the recommendation is to accept the default ACLs disabled setting. This ensures that you, as the bucket owner, automatically own and have full control over every object in your bucket.

In the Block Public Access settings for this bucket section, by default, Block all public access is applied to all new buckets. AWS recommends that you keep all Block all public access settings turned on unless you know that you need to turn off one or more of them for your use case, such as to host a public website.

In the Bucket Versioning section, you can choose Disable or Enable to retain multiple versions of objects. Versioning in Amazon S3 retains multiple variants of an object in the same bucket. You can use the versioning feature to preserve, retrieve, and restore every version of every object stored in your buckets. For this demonstration, leave the selection as Disabled. Under Tags, you have the option of adding tags to your bucket. Tags are key-value pairs used to categorize storage. In the Default encryption section, you can choose to configure your bucket to use server-side encryption with either Amazon S3-managed keys (SSE-S3) or AWS KMS keys stored in AWS Key Management Service (AWS KMS) (SSE-KMS). For this demonstration, AWS recommends accepting the default settings.

You can expand the Advanced settings section to enable S3 Object Lock. Object lock allows you to store objects using a write once read many (WORM) model. Object Lock can help prevent objects from being deleted or overwritten for a fixed amount of time or indefinitely. For this demonstration, leave the default Disabled setting. Next, choose Create bucket to create your bucket with your chosen settings.

You are taken to Amazon S3 console Buckets page. A banner is displayed showing that the bucket was successfully created. Your bucket also displays in your list of available buckets.

How do I upload a file to an S3 bucket using the AWS Management Console?

To add files and data to your S3 bucket, first select the link to your bucket name.

The page opens displaying the Objects tab. No objects are currently in your new bucket. To add objects, select the Upload button.

On the Upload page, you can drag and drop files on this page or you select the Add files button. For this demonstration, select the Add files button.

A file selection box opens. Navigate to the folder that contains your files that you want to upload to your S3 bucket. Select one or more files from your local workstation that you wish to upload. In this demonstration, the four available files are selected. Then choose Open at the bottom of the file selection box.

The files that you selected are now listing in the File and folders section. 

By default, objects will be stored in the S3 Standard storage class. If you wish to upload directly to a different storage class, choose the arrow to expand the Properties section and select the desired storage class. For this demonstration, leave the selection as Standard.

In the Server-side encryption, leave the default, Do not specify an encryption key setting. In the Additional checksums section, accept the default Off setting to use standard MD5 checksums.

At the bottom of the page, select Upload to upload your files to your S3 bucket.

A confirmation banner is displayed to indicate that your files were uploaded successfully. In addition, in the Summary section, the Succeeded or Failed files uploaded are displayed. Any files that you uploaded now appear as objects in your S3 bucket Files and folders section. Select Close to return to the previous page.

How do I open and download objects from an S3 bucket?

First navigate to your S3 bucket, then select the name of one of your objects. This opens a new page displaying the properties for that object. 

On the Objects overview page, an Object URL is displayed for your object. Select this link and observe what happens.

You receive an Access Denied error message. This error message is a result of the Block Public Access setting on the bucket. You can select the back arrow to return to the previous page.

You can select the Open button. This function is using your AWS credentials and will allow you to open the file in the browser, if the file type is supported, or it will automatically initiate a download of the object. You can also select the Download button to copy the object to your local workstation.

How do I organize data in an S3 bucket?

You can use prefixes to organize the data that you store in Amazon S3 buckets. Prefixes are similar way to directories or subdirectories in file system storage. Select the Create folder button to begin.

First enter a name for your new folder. In this demonstration folder is named Images. A forward slash is automatically added to your folder name. Leave the Server-side encryption setting as Amazon S3 managed keys (SSE-S3), and then select Create folder.

The Images folder now appears in your bucket. 

To move your object into the folder, first select the check box in front of the object names. The four images are each selected. Then select Actions to display the dropdown menu and then choose Move from the menu.

The Move page is displayed. Select the Browse S3 button to navigate to the bucket or folder where you want to move your objects to.

Navigate to and select the Images folder that you created and then select the Choose destination button to select the destination.

The bucket and prefix path is displayed in the Destination box. Leave the other settings at their defaults.

The objects that you selected are displayed in the Specified objects section. At the bottom of the page, select Move to move the objects to the destination folder.

A confirmation screen is now displayed with a banner indicating the successfully moved objects. You can view the number and size of successfully moved and failed to move objects. From the confirmation screen, select Close.

Your objects have been moved inside your selected folder. Select the folder name to view your objects.

Select the name of an object you selected before to view the object details.

Notice that the Object URL has been appended with a prefix that represents the folder you created.

How do I delete my demo S3 bucket?

On the S3 Buckets page, select the radio button in front of your bucket and then select the Delete button.

You receive an error message that the bucket cannot be deleted because it is not empty. To delete a bucket, you must first empty all files and prefixes (subfolders) first. Select the Cancel button to return to the S3 Buckets page.

On the S3 Buckets page, choose the radio button in front of your bucket and then select Empty to initiate deleting all objects from your S3 bucket.

In the confirm deletion text field, enter permanently delete and then select Empty to complete deleting the objects in the bucket.

On the confirmation page, a green banner is displayed that the deletion was successful. The number of objects successfully deleted is also displayed. Select the Exit button to return to the Buckets screen.

Repeat the steps from previous instructions to successfully delete your empty bucket. First select the bucket you want to delete and then select the Delete button.

To confirm that you want to permanently delete the bucket, enter the S3 bucket name in the text input field, and then select Delete bucket. Note: you can copy and paste the bucket name to simplify entering the bucket name in the text field.

You receive a confirmation that your bucket is now permanently deleted and no buckets appear in your buckets list.

Thank you for watching this demonstration.

### 

**What's next?**

In this lesson, you learned how to create an S3 bucket and manage data objects in it. In the next lesson, you will learn more about Amazon S3 storage classes.


Lesson 8 of 11

# 

S3 Storage Classes and Storage Class Management

**Lesson objectives**

In this lesson, you will learn the following:

- What S3 storage classes are
- The available S3 storage classes
- How to automate moving S3 objects between S3 storage classes   
      
      
    

![](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/EZHl04/tnc-icon-set4-dark_digital-courses.svg)

![S3 storage classes overview.](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/2mQ3Jn/Storage%20Banner%201%20crop.png)

****S3 storage classes overview****


![[Pasted image 20260422130858.png]]

Amazon S3 offers a range of storage classes designed for different use cases. Every S3 storage class supports a specific data access level at corresponding costs or geographic location. S3 storage classes include the following:

- S3 Standard for general-purpose storage of frequently accessed data. S3 Standard is the default.
- S3 Standard-Infrequent Access (S3 Standard-IA) for less frequently accessed data.
- S3 Intelligent-Tiering for data with unknown or changing access patterns. S3 Intelligent-Tiering automates tiering between other storage classes.
- S3 One Zone-Infrequent Access (S3 One Zone-IA) for less frequently accessed data and lower availability requirements. Your Amazon S3 data is contained in protected Amazon S3 tiers in a single Availability Zone.
- S3 Glacier Instant Retrieval for lower-cost archival storage that may require retrieval at any time. 
- S3 Glacier Flexible Retrieval for low-cost archival storage with retrieval time from minutes to hours.
- S3 Glacier Deep Archive for lowest cost storage with retrieval times from 12 to 48 hours.

**S3 storage classes**

  
To learn more about S3 storage classes, choose the S3 STORAGE CLASSES button.

[S3 STORAGE CLASSES](https://aws.amazon.com/s3/storage-classes/?nc=sn&loc=3)

![S3 storage class automation.](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/2mQ3Jn/Storage%20Banner%201%20crop.png)

****S3 storage class automation****

Amazon S3 includes two different mechanisms to help you utilize storage classes to optimize your Amazon S3 storage costs.

### 

**S3 Intelligent Tiering Storage Class**

  

S3 Intelligent-Tiering is the first cloud storage that automatically reduces your storage costs on a granular object level by automatically moving data to the most cost-effective access tier based on access frequency, without performance impact, retrieval fees, or operational overhead. 

S3 Intelligent-Tiering delivers milliseconds latency and high throughput performance for frequently, infrequently, and rarely accessed data in the Frequent, Infrequent, and Archive Instant Access tiers. You can use S3 Intelligent-Tiering as the default storage class for virtually any workload, especially data lakes, data analytics, new applications, and user-generated content.

![[Pasted image 20260422130942.png]]


You can store data with changing or unknown access patterns in the S3 Intelligent-Tiering storage class. The lifecycle policy moves your data automatically based on changing access patterns between three low-latency access tiers optimized for frequent and infrequent access. When subsets of objects become rarely accessed over long periods of time, you can activate two archive access tiers designed for asynchronous access that are optimized for archive access.

For a small monthly object monitoring and automation charge, S3 Intelligent-Tiering monitors access patterns and automatically moves objects that have not been accessed to lower-cost access tiers. S3 Intelligent-Tiering automatically stores objects in three access tiers.

**S3 Intelligent-Tiering storage class**

  
To learn more about the S3 Intelligent-Tiering storage class, choose the AWS WEBSITE button.

[AWS WEBSITE](https://aws.amazon.com/s3/storage-classes/intelligent-tiering/)

### 

****S3 Lifecycle management****

In addition to using the S3 Intelligent-Tiering storage class, Amazon S3 also offers S3 Lifecycle policies to help you automate managing your S3 storage classes throughout their lifecycle. S3 Lifecycle policies are customizable policies that you can create and apply to your Amazon S3 data. When an S3 Lifecycle policy is set, your data transfers to a different storage class automatically without any changes to your application. S3 Lifecycle policies can also be used to expire objects at the end of their lifecycles.

![[Pasted image 20260422131008.png]]


To manage your objects so that they are stored cost effectively throughout their lifecycle, configure their S3 Lifecycle. An S3 Lifecycle configuration is a set of rules that define actions that Amazon S3 applies to a group of objects. There are two types of actions:

- Transition actions – These actions define when objects transition to another storage class. For example, you might choose to transition objects to the S3 Standard-IA storage class 30 days after creating them, or archive objects to the S3 Glacier Flexible Retrieval storage class 1 year after creating them.
    
- Expiration actions – These actions define when objects expire. Amazon S3 deletes expired objects on your behalf. There are costs associated with lifecycle transition requests. For pricing information, refer to the Amazon S3 pricing page.
    

**S3 Lifecycle management**

  
To learn more about S3 Lifecycle policies and management, choose the GO TO USER GUIDE button.

[GO TO USER GUIDE](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html)

### 

**What's next?**

You just learned the basics of S3 storage classes and Amazon S3 automation options. In the next lesson, you will review your learning by answering a few knowledge check questions.

Lesson 9 of 11

# 

Knowledge Check

Check your knowledge of the content in this course by answering multiple-choice or multiple-response questions. This assessment is not graded, and you can retry the assessment as many times as you would like.

  

For single-response questions: Select the correct answer and choose SUBMIT. For keyboard-only accessibility, press the Tab key and then the arrow keys to navigate to the correct answer. Press the space bar to select, and press Enter to submit.

  

For multiple-response questions: Select the correct answers and choose SUBMIT. For keyboard-only accessibility, press the Tab key and then the arrow keys to navigate to a correct answer. Press the space bar to select. Repeat this step until all correct responses are checked, then press Enter to submit.

START QUIZ



Lesson 10 of 11

# 

Additional Resources

![Additional AWS storage services resources.](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/mz0asr/Storage%20Banner%201%20crop.png)

******Additional AWS storage services resources******

More AWS storage services information is available on the AWS website. These services are directly accessible using the links provided. You are encouraged to review the available resources and discover how AWS storage and AWS migration and transfer services can help you solve your organization's use case requirements.

### 

**Additional Amazon S3 resources**

More Amazon S3 information is available with documentation on the following websites. These resources are directly accessible using the links provided: 

![](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/S3%20Webpages.png)

[(opens in a new tab)](https://aws.amazon.com/fsx/lustre/?nc2=h_ql_prod_st_fsxl)[(opens in a new tab)](https://aws.amazon.com/snowcone/)

[(opens in a new tab)](https://aws.amazon.com/snowcone/)**Amazon S3 webpages**

- [Amazon S3 Overview(opens in a new tab)](https://aws.amazon.com/s3/?nc=sn&loc=0)
- [Amazon S3 Features(opens in a new tab)](https://aws.amazon.com/s3/features/?nc=sn&loc=2)
- [Amazon S3 Storage Classes(opens in a new tab)](https://aws.amazon.com/s3/storage-classes/?nc=sn&loc=3)
- [Amazon S3 Pricing(opens in a new tab)](https://aws.amazon.com/s3/pricing/?nc=sn&loc=4)
- [Amazon S3 Security(opens in a new tab)](https://aws.amazon.com/s3/security/?nc=sn&loc=5)
- [(opens in a new tab)](https://aws.amazon.com/ebs/faqs/)[Amazon S3 Resources(opens in a new tab)](https://aws.amazon.com/s3/resources/?nc=sn&loc=6)
- [(opens in a new tab)](https://aws.amazon.com/ebs/?ebs-whats-new.sort-by=item.additionalFields.postDateTime&ebs-whats-new.sort-order=desc#What.27s_new_with_Amazon_EBS)[Amazon S3 FAQs(opens in a new tab)](https://aws.amazon.com/s3/faqs/?nc=sn&loc=7)[(opens in a new tab)](https://aws.amazon.com/ebs/?ebs-whats-new.sort-by=item.additionalFields.postDateTime&ebs-whats-new.sort-order=desc#Blog_posts_.26_articles)

**Amazon S3 documentation direct links**

[(opens in a new tab)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html)

- [Amazon S3 User Guide(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html)
- [Amazon S3 Glacier Developer Guide(opens in a new tab)](https://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html)
- [Amazon S3 API Reference(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/API/Welcome.html)

### 

******AWS storage and AWS migration and transfer services**** webpages**

AWS services webpages are available for each of the storage portfolio services. You can select or search from the main [AWS(opens in a new tab)](http://aws.amazon.com/) landing page, or you can select the service to go to the landing page for that service. Each service has several additional pages, which can include overviews, features, pricing, resources, and FAQs. The available pages can vary between the different services. 

The links take you to the service overview landing page for each service. From there you can navigate to additional pages and, in some cases, to specific service offerings. For example, to reach Amazon S3 File Gateway, you navigate from the AWS Storage Gateway Overview page by selecting the service under Gateway Services and Features on the menu.

[(opens in a new tab)](https://aws.amazon.com/efs/)

- [Amazon Elastic Block Store (Amazon EBS)(opens in a new tab)](https://aws.amazon.com/ebs/?nc2=h_ql_prod_st_ebs)
- [(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/api-reference/api-reference.html)[Amazon Simple Storage Service (Amazon S3)(opens in a new tab)](https://aws.amazon.com/s3/?nc2=h_ql_prod_st_s3) 
- [(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/developer-guide/getting-started.html)[Amazon Elastic File System (Amazon EFS)(opens in a new tab)](https://aws.amazon.com/efs/?nc2=h_ql_prod_st_efs)
- [(opens in a new tab)](https://docs.aws.amazon.com/snowball/?id=docs_gateway)[Amazon FSx for Lustre(opens in a new tab)](https://aws.amazon.com/fsx/lustre/?nc2=h_ql_prod_st_fsxl)
- [Amazon FSx for Windows File Server(opens in a new tab)](https://aws.amazon.com/fsx/windows/?nc2=h_ql_prod_st_fsxw)
- [Amazon FSx for NetApp ONTAP(opens in a new tab)](https://aws.amazon.com/fsx/netapp-ontap/?nc2=h_ql_prod_st_fsxn)
- [Amazon FSx for OpenZFS(opens in a new tab)](https://aws.amazon.com/fsx/openzfs/?nc2=h_ql_prod_st_fsxo)
- [(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/snowcone-guide/aws-opshub.html)[AWS Storage Gateway(opens in a new tab)](https://aws.amazon.com/storagegateway/?nc2=h_ql_prod_st_sg)
- [AWS Outposts Family(opens in a new tab)](https://aws.amazon.com/outposts/?nc2=h_ql_prod_cp_out)
- [Amazon File Cache(opens in a new tab)](https://aws.amazon.com/filecache/?nc2=h_ql_prod_st_fc)[(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/developer-guide/using-client.html)
- [AWS Snow Family(opens in a new tab)](https://aws.amazon.com/snow/?nc2=h_ql_prod_st_sf)
- [AWS DataSync(opens in a new tab)](https://aws.amazon.com/datasync/?nc2=h_ql_prod_mt_ds)
- [AWS Transfer Family(opens in a new tab)](https://aws.amazon.com/aws-transfer-family/?nc2=h_ql_prod_mt_sftp)
- [AWS Backup(opens in a new tab)](https://aws.amazon.com/backup/?nc2=h_ql_prod_st_bu)
- [AWS Elastic Disaster Recovery (AWS DRS)(opens in a new tab)](https://aws.amazon.com/disaster-recovery/?nc2=h_ql_prod_st_edr)[(opens in a new tab)](https://aws.amazon.com/snowball/)

![](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/AWS%20services.jpg)

### 

****AWS storage and AWS migration and transfer services documentation****

AWS documentation in the form of user guides and developer guides are available for each of the AWS storage and AWS migration and transfer services. AWS Outpost is listed under Compute services. You can search from the main [AWS Documentation(opens in a new tab)](http://docs.aws.amazon.com/) website, or you can select the service link to go directly to the associated documentation.

![](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/AWS%20Docs.jpg)

**Core storage services**[(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/developer-guide/whatisedge.html)

- Amazon EBS documentation:
    - [Amazon EBS User Guide for Linux Instances(opens in a new tab)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html)[(opens in a new tab)](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/AmazonEBS.html)
    - [Amazon EBS User Guide for Windows Instances(opens in a new tab)](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/AmazonEBS.html)  
        
- [Amazon S3 User Guide(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html)
- [Amazon EFS User Guide(opens in a new tab)](https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html)
- Amazon FSx documentation
    - [Amazon FSx for Lustre User Guide(opens in a new tab)](https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html)
    - [Amazon FSx for Windows File Server User Guide(opens in a new tab)](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html)
    - [Amazon FSx for NetApp ONTAP User Guide(opens in a new tab)](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/what-is-fsx-ontap.html)
    - [Amazon FSx for OpenZFS User Guide(opens in a new tab)](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html)

**Hybrid storage services**

- Storage Gateway documentation
    - [User Guide for Amazon S3 File Gateway(opens in a new tab)](https://docs.aws.amazon.com/filegateway/latest/files3/what-is-file-s3.html)
    - [User Guide for Amazon FSx File Gateway(opens in a new tab)](https://docs.aws.amazon.com/filegateway/latest/filefsxw/what-is-file-fsxw.html)
    - [User Guide for Volume Gateway(opens in a new tab)](https://docs.aws.amazon.com/storagegateway/latest/vgw/WhatIsStorageGateway.html)
    - [User Guide for Tape Gateway(opens in a new tab)](https://docs.aws.amazon.com/storagegateway/latest/tgw/WhatIsStorageGateway.html)
- [AWS Outposts User Guide for racks(opens in a new tab)](https://docs.aws.amazon.com/outposts/latest/userguide/what-is-outposts.html)
- [Amazon File Cache User Guide(opens in a new tab)](https://docs.aws.amazon.com/fsx/latest/FileCacheGuide/what-is.html)

**Edge storage, data transfer, and managed file transfer services**

- AWS Snow Family documentation
    
    - [AWS Snowball Edge Developer Guide(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/developer-guide/whatisedge.html)
        
- [AWS DataSync User Guide(opens in a new tab)](https://docs.aws.amazon.com/datasync/latest/userguide/what-is-datasync.html)
    
- [AWS Transfer Family User Guide(opens in a new tab)](https://docs.aws.amazon.com/transfer/latest/userguide/what-is-aws-transfer-family.html)
    

**Data protection services**

- [AWS Backup Developer Guide(opens in a new tab)](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html)
- [AWS DRS User Guide(opens in a new tab)](https://docs.aws.amazon.com/drs/latest/userguide/what-is-drs.html)

![](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/Capture.jpg)

**Continue your AWS learning journey**

### 

****Additional AWS storage portfolio Getting Started courses****

In addition to this course, you can take six other Getting Started courses associated with the AWS storage services portfolio. You can go directly to [AWS Skill Builder(opens in a new tab)](http://explore.skillbuilder.aws/) and enter the course title in the Search box, or you can filter down course results using the Filters. To go directly to the specific course listed, select the link to go to the AWS Skill Builder search.

- [AWS Storage Services - Portfolio Introduction(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Storage%20Services%20-%20Portfolio%20Introduction%22)
- [AWS Block Storage Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Block%20Storage%20Services%20Getting%20Started%22)
- [AWS Object Storage Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Object%20Storage%20Services%20Getting%20Started%22)
- [AWS File Storage Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20File%20Storage%20Services%20Getting%20Started%22)
- [AWS Hybrid Storage Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Hybrid%20Storage%20Services%20Getting%20Started%22)
- [AWS Edge Storage, Data Transfer, and File Transfer Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Edge%20Storage,%20Data%20Transfer,%20and%20File%20Transfer%20Services%20Getting%20Started%22)
- [AWS Storage Data Protection Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Storage%20Data%20Protection%20Services%20Getting%20Started%22)

![](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/Skillbuilder.png)

## 

****AWS storage training**** 

![](https://skillbuilder.aws/cds/9c76e8ac-fd0b-47f4-8549-d82c5ad00ce0/assets/GEN_digital-learning-alwayson-lp-one_360x231_May-2020.jpg)

We encourage you to discover more AWS storage courses in our training library. Our content is built by experts at AWS and updated regularly to keep pace with AWS updates. Whether you are just starting out, building on existing information technology skills, or sharpening your cloud knowledge, AWS Training and Certification can help you be more effective and do more in the cloud.

To explore more AWS training, choose the **STORAGE TRAINING** button. Use the filter and search capabilities to locate the service or topic you are interested in.

[STORAGE TRAINING](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin?ctldoc-catalog-0=field16-_40)

© 2023 Amazon Web Services, Inc. or its affiliates. All rights reserved. This work may not be reproduced or redistributed, in whole or in part, without prior written permission from Amazon Web Services, Inc. Commercial copying, lending, or selling is prohibited. Corrections, feedback, or other questions? Contact us at [https://support.aws.amazon.com/#/contacts/aws-training(opens in a new tab)](https://support.aws.amazon.com/#/contacts/aws-training). All trademarks are the property of their owners.




