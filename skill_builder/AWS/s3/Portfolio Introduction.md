# 

Course Overview

Amazon Web Services (AWS) provides you with the storage services that you need to build the storage solution that’s right for your organization. In the AWS Storage portfolio, you will discover a range of storage services available for you to choose from to meet your organization’s requirements. The AWS Storage portfolio includes the core storage services such as block, object, and file storage services. It also includes hybrid storage solutions, data transfer solutions, and data protection solutions. You can select from these different service offerings and apply them to your organization’s needs to determine the possible paths you can take to arrive at the best storage solution.

Before choosing an AWS Storage solution, AWS recommends that you first assess what storage characteristics are appropriate for your applications and business. After familiarizing yourself with AWS Storage, you can then compare your requirements to the available AWS Storage services and select the solution that meets your needs. 

In this course, you will learn about the advantages of moving your storage workloads to the cloud. You will review the primary storage types and the differences between them, and discover the services available in the AWS Storage portfolio.

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/tnc-icon-set4-dark_digital-courses.svg)

After completing this course, you should be able to do the following:

- Differentiate between block, file, and object storage types.
- Differentiate between on-premises and in-cloud storage characteristics.
- Recognize the categories of services in the AWS Storage portfolio.
- Discuss considerations for choosing the best storage type.
- Describe AWS Storage management options.

---
Lesson 3 of 11

# 

On-Premises Storage and AWS Cloud Storage

For many organizations, moving to the cloud starts with an assessment of their existing on-premises storage infrastructure. Organizations that take the time to identify where and how their data is stored have a head start in moving their existing workloads to the AWS Cloud. As you explore the available AWS Storage services, you can compare the storage service offerings to your on-premises storage infrastructure. 

In this lesson, you will learn to compare existing on-premises storage with AWS Storage service options and effectively assess your existing storage infrastructure. You will learn to identify patterns for diverse application and workload needs.

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/Storage%20Banner%201%20crop.png)

****Why organizations move to the cloud****

Moving storage workloads to the cloud has been one of the main ways chief information officers (CIOs) can address their top strategic priorities.

To learn more, expand each of the following five categories.

## 

Increase organizational agility

**On-premises storage agility challenges**

  

Resources are required to make changes to on-premises storage infrastructure. Resources include time, personnel, data center space and infrastructure, and fixed and variable costs. Capacity planning, resource planning, and budgeting are required before you can implement changes. As a result, the time to implement changes can be delayed from weeks to months, or even years. 

  

Even after approval, it can take weeks or months to order, receive, and install new systems or additional capacity for existing ones. Many organizations over-provision storage capacity to deal with implementation and budgeting delays. The unused capacity consumes space and costly resources while waiting to be used.

  

On-premises storage infrastructure lacks the option to quickly reduce or change environments as your organization's needs change. After your storage is in place, it usually remains in place, regardless of its use. Being able to re-allocate storage capacity from one storage silo or system to another silo or system is seldom possible. Most storage systems do not have the compatibility required for cross-system integration.

  

**Storage agility in AWS**

  

AWS Storage services provide solutions to address the on-premises storage agility challenges. When using AWS Storage services, you can quickly change existing storage services or implement new ones.

- AWS manages the required resources for you. You do not need to allocate time, implementation and management personnel, data center space and infrastructure, or use fixed and variable costs to change your storage infrastructure. You manage how you use the storage services that you provision.
- You have access to virtually unlimited storage capacity when you need it. You can add storage capacity on demand without over-provisioning capacity.
- You can reduce capacity or discontinue use of a storage service at any time. Your storage service use is not restrained by physical system limitations. 
- With AWS services, you can move data between different storage silos or systems as needed. After copying your data to a different service, you can delete the source service, or delete the data from the service to save money. 

## 

Accelerate ability to innovate

To innovate, you must be able to develop and test new workflows on demand. For example, a test and development environment must be flexible to try different designs and workflows and then make changes as needed. You must often scale the development environment for testing. Conversely, you must also be able to abandon an environment after testing is completed, or abandon any temporary environments when no longer needed.  

  

To innovate with on-premises storage systems, you need to purchase new systems or use unused capacity on existing systems. Purchasing new systems takes time and resources. Using existing systems can present challenges with available capacity or having the correct type of resource required.

  

With on-premises storage systems, often the data is contained in separate storage systems that create silos that are disconnected from each other. The separation makes it difficult to access the systems to perform analytics or use machine learning (ML) across systems.

  

With AWS Storage, you can start development on one service and experiment using different services to meet your workflow's requirements. You can increase or reduce capacity as needed for your development and testing environment. Using AWS Storage services provides you a flexible environment for innovation.

## 

Strengthen security

On-premises storage and network infrastructure are often not uniformly secured from external or internal access. Security concerns include the following:

- Physical security access to storage systems
- Consistent encryption for data at rest and data in transit 
- Appropriate user, group, and role access controls
- External network attacks or system hacking

Organizations can improve their security posture as they gain insights by removing data silos and improving encryption controls. With AWS, you inherit all of the controls, tools, best practices, and certifications designed for even the most security-conscious organizations. 

  

Cloud providers secure the cloud infrastructure and separate the infrastructure from the customer applications. The benefit is you no longer need to be concerned about infrastructure security.

## 

Reduce costs

With cloud storage, you do not have to purchase hardware, provision storage, or provide capital for "someday" scenarios. You can add or remove capacity on demand, quickly change performance and retention characteristics, and pay only for storage that you actually use. You can move less-frequently accessed data automatically to lower-cost tiers in accordance with auditable rules. This flexibility drives economies of scale. 

  

## 

Operational expense and capital investment

A benefit of moving to the cloud is shifting expenses from fixed costs to variable costs. Costs are allocated on an ongoing basis as they are incurred. Instead of paying for storage system and software expenses up front and then realizing the costs by depreciating them over time, cloud services are charged as a monthly expense. This reduces budgeting and hardware acquisition cycles, and then realizes the operational expenses when they occur.

### 

**Cloud-based storage usage**

Cloud storage is typically purchased from a third-party cloud vendor that owns and operates data storage capacity and delivers it over the internet in a pay-as-you-go model. These cloud storage vendors manage capacity, security, and durability to make data accessible to your applications all around the world.

Applications access cloud storage through traditional storage protocols or directly through an API. Many vendors offer complementary services designed to help collect, manage, secure, and analyze data at massive scale.

Cloud storage is a reliable, scalable, and secure place for your data. AWS offers a complete range of services for you to store, access, govern, and analyze your data to reduce costs, increase agility, and accelerate innovation. You don’t have to perform a one-to-one replacement of your on-premises storage (also known as lift and shift). Instead, you can re-platform or re-architect your storage to optimize cost, manageability, and performance based on your applications needs. 

![[Pasted image 20260422120721.png]]

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/cIToIR/Storage%20Banner%201%20crop.png)

****Comparison of storage use: What you pay for****

![On-premises customer responsible for raw capacity. AWS customer pays for allocated or consumed capacity.](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/Stor%20utilization%20intro.png)

Select graphic to enlarge view

When you acquire new on-premises storage systems or additional storage capacity for your existing systems, you purchase the total raw capacity for the system. You then need to host the system in your data center and maintain the total capacity. 

With AWS Storage, you can add new storage services or expand existing services on demand to meet your requirements. AWS hosts and maintains the underlying systems in their data centers. 

You can compare the options using the general example between on-premises storage capacity and AWS Storage services capacity. As you explore the remainder of this course, more details are provided for each of the AWS Storage services.

### 

****On-premises storage capacity****
![[Pasted image 20260422120813.png]]

![Purchase raw capacity then reduce by formatted capacity, allocated capacity down to actual data capacity.](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/Stor%20utilization%20onprem.png)

Select graphic to enlarge view

When you purchase on-premises storage, you work backward from the capacity you need to store your data and provide for growth and performance overhead. You purchase the total raw capacity to meet your requirements and anticipated capacity growth. Because of certain variables, you are required to make forward-looking assumptions to estimate your requirements.

In the example, several broad assumptions are applied to perform the calculations for how much storage to acquire. The calculations applied in real life are different for every on-premises system. The calculations can vary significantly, based on the manufacturer. The important takeaway from this example is to consider the aspects that reduce the usable capacity, and that you pay for the raw capacity.

To learn about a capacity category, select each of the four tabs.

RAW CAPACITY
Using the on-premises storage example, you purchase 1 petabyte (PB) of raw storage capacity. This is what you pay for and what is needed to calculate the operating costs and data center requirements. 

  

The net usable capacity will vary by manufacturer and by individual system.

FORMATTED CAPACITY

Every storage system's capacity is reduced from hardware failure protection overhead, drive formatting, and operating system overhead. The amount varies based on how this is implemented on the system. In the example, this reduces the capacity by 20 percent to 800 TB.

- **Hardware failure protection overhead:** Typically known as hardware or software redundant array of independent disks (RAID). The primary purpose is to protect the data if hardware or a drive fails by creating checksum protection for the data. Depending on the protection level, this can amount 15 percent–50 percent overhead. For example:
    - For example, RAID 1, disk mirroring, creates mirrored drive pairs (50 percent overhead). 
    - RAID 6 uses two disks worth of space to store checksums (15 percent–25 percent overhead). 
    - You can apply other protection schemes. These other RAID levels or protection schemes can consume more or less additional space.
    - Hardware failure protection is part of every system. 
- **Formatting and operating system overhead** – Drive capacity is typically represented in unformatted capacity. When formatted by the operating system, the drive size is reduced 1 percent–5 percent. 
    - The operating system is then added to the system, which further reduces the available capacity.
ALLOCATED CAPACITY

The available capacity is further reduced when you account for data protection services, such as snapshots, and add space for performance overhead. In the example, this reduces the capacity by an additional 200 TB–600 TB of allocated capacity. 

- Snapshots can consume more space than your actual data. Snapshots help you protect against data corruption and accidental deletion.
- To operate efficiently and increase performance, systems require additional space for operation overhead, especially for write operations.
ACTUAL DATA CAPACITY

You estimate that you need at least 400 TB of actual data capacity. The remaining 200 TB above your actual 400 TB of data is allocated for data and snapshot growth.
Using the on-premises storage example, you purchase 1 petabyte (PB) of raw storage capacity. This is what you pay for and what is needed to calculate the operating costs and data center requirements. 

  

The net usable capacity will vary by manufacturer and by individual system. 

### 

****Capacity options for AWS Storage services****

AWS uses two models for storage capacity: consumed storage and allocated capacity. The core storage service that you select determines the method used. Capacity is billed based on time that you use the capacity. 

Billing increments are as small as for each second of use. In addition to capacity billing, additional service charges might be incurred for service use. The different billing components are discussed later in this course.

Some services, such as Amazon Simple Storage Service (Amazon S3), are based on the amount of storage capacity that you consume. You pay only for the storage capacity that you use.

Other services, such as Amazon Elastic Block Store (Amazon EBS), are based on the amount of the capacity that you allocate. For example, when you create a block store of 20 GB, you are allocating 20 GB of capacity for use. With allocated capacity, you pay for the allocated amount of space and not the amount of data you have stored.

With Amazon Elastic File System (Amazon EFS), you have the option to use the default setting of consumed storage capacity. With Amazon EFS, you do have the option to provision storage capacity to meet your use case throughput requirements. Select the option to meet your use case and application performance requirements.

![[Pasted image 20260422120845.png]]
![AWS responsible for overhead, pay for allocated or consumed capacity.](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/Stor%20utilization%20aws.png)

Select graphic to enlarge view

### 

****Block storage capacity overhead in AWS Cloud****

For provisioned block storage capacity, you still have to provision capacity to allocate for the following purposes in AWS:

- Operating system overhead and formatting
- File system overhead
- Hardware failure protection
- Additional data protection

However, AWS absorbs and manages the extra capacity requirements. AWS considers the systems and maintenance overhead when determining pricing for the storage service. With AWS Storage, you can focus on your business while AWS takes care of systems and maintenance.

----
Lesson 4 of 11

# 

Primary Storage Types

Whether on premises or in a cloud environment, you have three primary types of storage: block, file, and object. Different storage hardware manufacturers and cloud service providers implement these storage types differently. However, the fundamentals for each storage type are basically the same, regardless of where the storage type is located, who manufactures the hardware, or who provides the service. The specific features and functionality differ based on how the manufacturer or service provider implements the storage.
![[Pasted image 20260422121153.png]]

To get started, you should have a fundamental understanding of the primary storage types and the differences between them. 

To learn more, expand each of the following three categories.

## 

Block storage overview

_Block storage_ is raw storage in which the hardware storage device or drive is a disk or volume that is formatted and attached to the compute system for use. The storage is formatted into predefined continuous segments on the storage device. These segments are called blocks. The blocks are the basic fixed storage units used to store data on the device.

  

Storage devices can be hard disk drives (HDDs), solid state drives (SSDs), or newer types of storage devices, such as non-volatile memory express (NVMe). In addition to individual storage devices, you can deploy block storage on storage area network (SAN) systems.

  

The storage device is used by the operating system or an application that has the capabilities to manage block storage directly. For cases in which the application manages the block storage, the application often shares management with an operating system.

![[Pasted image 20260422121304.png]]   

Object storage overiew
_Object storage_ is built on top of block storage. Object storage is created using an operating system that formats and manages the reading and writing of data to the underlying block storage. The name object storage comes from the primary use of storing the data within a binary object. 

  

Unlike file storage, object storage does not differentiate between types of data. The type of data or the file becomes part of the data's metadata.

  

An object is made up of a larger set of formatted storage blocks organized into a contiguous set by using a predetermined object size. The objects are protected across multiple hardware devices. One manufacturer's on-premises object storage system uses an object size of 128 Megabyte (MB).

  

Cloud object storage systems distribute this data across multiple physical devices so users can access the content efficiently from a single, virtual storage repository. 

  

Object storage is recognized for its inherent availability of the file objects. Some systems support file versioning, file tracking, and file retention.

![[Pasted image 20260422121532.png]]

_File storage_ overview
##   

_File storage_ is built on top of block storage, typically serving as a file share or file server. File storage is created using an operating system that formats and manages the reading and writing of data to the underlying block storage. The name _file storage_ comes from the primary use of storing data as files typically in a directory-tree hierarchy.

  

The two most common storage protocols for file storage are Server Message Block (SMB) and Network File System (NFS). You can use the network protocols to communicate with remote computers and servers. You can also use server resources to share, open, and edit files.

  

The operating system manages the storage protocol and the operation of the file system. The file system can be Windows Server, Linux, or a specialized operating system used on network-attached storage (NAS) devices or clustered NAS systems.


![[Pasted image 20260422121725.png]]

Lesson 5 of 11

# 

Introduction to the AWS Storage Portfolio

The AWS Storage portfolio consists of the core storage services and other closely associated services that work with the core storage services. Associated services include online and offline data and file-transfer services, edge storage services, hybrid storage services, and data-protection services.

![[Pasted image 20260422121801.png]]
You can select the services you need based on what you are trying to accomplish, and your organizational goals.

With AWS Storage, you can quickly provision the storage that is best suited for your application or use case. You can use a combination of storage services to meet your requirements without the need to provision, host, and maintain separate systems.

Because you pay for only the resources that you use, you can provision storage to do the following:

- Test new applications.
- Test use cases.
- Try different storage services for your existing ones.

When you are finished, you can delete the storage resource to minimize costs. 

All AWS Storage services include configurable security services. Your data is private by default. You must allow access to your data from the public, from other AWS services, or from other AWS accounts. Securing your data is a top-level concern.

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/cwxpUN/Storage%20Banner%201%20crop.png)
****Core**** **AWS Storage services**
![[Pasted image 20260422121916.png]]
The AWS core storage service types are block, file, and object. Each offers its own advantages based on the workload, and has its own use cases. AWS offers several different options for each of the core storage types for you to use to meet your organizational storage requirements.

### 

**Core AWS Storage services**
![[Pasted image 20260422121944.png]]
To learn more about the available AWS storage service offerings, expand each of the following three categories.

## 

Block storage

  

Some enterprise applications, such as databases or enterprise resource planning (ERP) systems, often require dedicated, low-latency storage for each host. This is analogous to direct-attached storage (DAS) or a Storage Area Network (SAN). Block-based cloud storage solutions are provisioned with each virtual server and offer the ultra low latency required for high-performance workloads.

  

As with on-premises block storage, the operating system or application manages storage access. Amazon Elastic Block Store (Amazon EBS) is offered in different options to meet your organization's use case requirements. 

- Amazon EBS is used to attach to Amazon Elastic Compute Cloud (Amazon EC2) instances. Amazon offers different volume types for you to select from to meet your performance requirements and optimize your costs.
- With Amazon EC2 instances, you also have the choice to use Amazon EC2 instance stores for ephemeral or temporary block storage. 
- In addition, you can use Internet Small Computer System Interface (iSCSI) accessible block storage available with the Amazon FSx for NetApp ONTAP block volume service offering. 

## 

Object storage

Applications developed in the cloud often take advantage of object storage's vast scalability and metadata characteristics. Object storage solutions are ideal for building modern applications from the beginning that require scale and flexibility. The solution is also ideal for importing existing data stores for analytics, backup, or archive.

  

Amazon Simple Storage Service (Amazon S3) is object storage in the AWS Cloud. Amazon S3 is offered with different storage classes or tiers to match your price, access, and availability requirements. Amazon S3 Glacier Flexible Retrieval, for example, is used for archival storage at a lower cost for each gigabyte.

  

AWS uses Amazon S3 as cost-effective storage to store snapshots and backups of data stored in other core storage services such as Amazon EBS and Amazon Elastic File System (Amazon EFS).

## 

File storage

Some applications need to access shared files and require a file system. This type of storage is often supported with an NAS server. File storage solutions are ideal for use cases such as large content repositories, development environments, media stores, or user home directories.

  

AWS currently offers file storage using five different services. These services are divided into two categories: Amazon's own cloud-native file storage and the Amazon FSx file storage offerings. FSx stands for "file system X". These offering implement managed files storage using the commonly available file systems for on-premises solutions. 

  

You also have the option to create self-managed files shares using Amazon EC2 instances with attached Amazon EBS volumes. 

  

Each file service offers different feature sets to meet your requirements. 

- Amazon EFS is a cloud-native file storage service that uses NFS access protocol. Amazon EFS comes in single and multi-Availability Zone configuration options.
- Amazon FSx for Lustre is built using the Lustre file system and is designed for high performance computing (HPC) and machine learning (ML) workloads. FSx for Lustre uses the Lustre client's POSIX-compliant access protocol. FSx for Lustre also interfaces with Amazon S3 object storage.
- Amazon FSx for Windows File Server is built using Windows File Server. The access protocol is SMB and designed for your Microsoft applications and Windows workloads.
- Amazon FSx for NetApp ONTAP is built using the NetApp ONTAP operating system and is designed to provide both NetApp block and file storage. The access protocols are iSCSI for block storage, NFS and SMB for file storage.
- Amazon FSx for OpenZFS is fully managed shared file storage built on the OpenZFS file system. With Amazon FSx for OpenZFS, you can migrate your on-premises OpenZFS storage to AWS with minimal effort. You can use the same access protocols now in the AWS Cloud.

### 

**Additional Core AWS Storage service courses**

**AWS Block Storage Services Getting Started** 

  
To learn more about the available block storage services, select the following **BLOCK STORAGE**button to go to the **AWS Block Storage Service Getting Started** course.

[BLOCK STORAGE](https://explore.skillbuilder.aws/learn/external-ecommerce;view=none;redirectURL=?ctldoc-catalog-0=se-%22AWS%20Block%20Storage%20Services%20Getting%20Started%22)

**AWS Object Storage Services Getting Started** 

  
To learn more about the available object storage services, select the **OBJECT** **STORAGE** button to go to the **AWS Object Storage Service Getting Started**course.

[OBJECT STORAGE](https://explore.skillbuilder.aws/learn/external-ecommerce;view=none;redirectURL=?ctldoc-catalog-0=se-%22AWS%20Object%20Storage%20Services%20Getting%20Started%22)

**AWS File Storage Services Getting Started** 

  
To learn more about the available file storage services, select the following **FILE STORAGE**button to go to the **AWS File Storage Service Getting Started** course.

[FILE STORAGE](https://explore.skillbuilder.aws/learn/external-ecommerce;view=none;redirectURL=?ctldoc-catalog-0=se-%22AWS%20File%20Storage%20Services%20Getting%20Started%20%22)

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/cwxpUN/Storage%20Banner%201%20crop.png)

******H**ybrid cloud storage services********

![[Pasted image 20260422122101.png]]

AWS offers services that are designed to provide hybrid cloud solutions. Hybrid solutions to connect your on-premises infrastructure to storage services in the AWS Cloud. Hybrid services allow you to customize and optimize the integration between your on-premises systems and data, and your services running in the AWS Cloud.

### 

****Hybrid cloud storage services****

![[Pasted image 20260422122136.png]]

To learn more, expand each of the following three categories.

## 

On-premises gateways to AWS Cloud

AWS Storage Gateway connects on-premises users and applications using a software appliance with cloud-based storage. It provides integration between an organization’s on-premises IT environment and the AWS storage infrastructure. You can use Storage Gateway to streamline storage management and reduce costs for key hybrid cloud storage use cases. 

  

Use cases include the following: 

- Moving backups to the cloud.
- Using on-premises file shares backed by cloud storage.
- Providing low-latency access to data in AWS for on-premises applications. Local caching reduces network latency for both read and write activities.

Storage Gateway offers four different types of gateways: Amazon S3 File Gateway, Amazon FSx File Gateway, Volume Gateway, and Tape Gateway.

- Amazon S3 File Gateway provides a seamless way to connect to the cloud to store application data files and backup images as durable objects in Amazon S3. Amazon S3 File Gateway offers SMB or NFS-based access to data in Amazon S3 with local caching. 
- Amazon FSx File Gateway optimizes on-premises access to fully managed, highly reliable file shares in Amazon FSx for Windows File Server. Customers with unstructured or file data, whether from SMB-based group shares or business applications, might require on-premises access to meet low-latency requirements.
- Volume Gateway presents cloud-backed iSCSI block storage volumes to your on-premises applications. Volume Gateway stores and manages on-premises data in Amazon S3 on your behalf and operates in cache mode or stored mode. 
- Tape Gateway is used to replace physical tapes on premises with virtual tapes in AWS without changing existing backup workflows. Tape Gateway supports all leading backup applications and caches virtual tapes on premises for low-latency data access.

## 

On-premises AWS Cloud storage

On-premises cloud storage is provided as part of an AWS Outposts implementation and includes Amazon EBS and Amazon S3 storage services. 

  

AWS Outposts is a fully managed service that offers the same AWS rack infrastructure, AWS services, APIs, and tools to virtually any data center, co-location space, or on-premises facility. 

  

These capabilities provide a consistent hybrid experience. AWS Outposts is ideal for the following:

- Workloads that require low latency access to on-premises systems, local data processing, and data residency
- Migration of applications with local system interdependencies

AWS compute, storage, database, and other services run locally on Outposts. You can access the full range of AWS services available in the AWS Region to build, manage, and scale your on-premises applications using familiar AWS services and tools.

## 

In-Cloud caching of on-premises data

Amazon File Cache provides a high-speed cache on AWS that makes it easier to process file data, regardless of where it’s stored. Amazon File Cache serves as temporary, high-performance storage for data on premises or on AWS. 

  

The service allows you to make dispersed datasets available to file-based applications on AWS with a unified view and high speeds. 

- Accelerate cloud bursting workloads using cache storage designed to deliver sub-millisecond latencies, up to hundreds of gigabytes per second of throughput, and millions of IOPS.
- Streamline access to multiple on-premises and in-cloud data sources with a unified view in a single namespace.
- Unlock insights from data in Amazon S3 object storage using file-based applications without changing your workflow.

### 

******AWS Hybrid Storage Services Getting Started** **course******

**AWS Hybrid Storage Services Getting Started**

  
To learn more about the available hybrid storage services, select the following HYBRID STORAGE button to go to the **AWS** **Hybrid Storage Service Getting Started** course.

[HYBRID STORAGE](https://explore.skillbuilder.aws/learn/external-ecommerce;view=none;redirectURL=?ctldoc-catalog-0=se-%22AWS%20Hybrid%20Storage%20Services%20Getting%20Started%22)

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/cwxpUN/Storage%20Banner%201%20crop.png)

******Edge storage, data transfer, and managed file transfer services******

![[Pasted image 20260422122336.png]]

AWS offers services that are designed to provide cloud storage for edge local compute and storage use cases. AWS also offers services to transfer data and files between on-premises locations and the AWS Cloud.

Edge storage is designed to run your Amazon EC2, Amazon Elastic Container Service (Amazon ECS), and Internet of Things (IoT) workloads on a remote device for disconnected environments. The same ruggedized devices can be used to transfer data between your datacenters and the AWS Cloud.

AWS online data transfer services are designed to copy or transfer your on-premises data to and from the core AWS Storage services in the AWS Cloud. 

In addition, you can cost-effectively move your file-transfer workloads to the cloud for increased security with lower management requirements using managed file transfer services.

### 

**AWS Edge storage, offline and online data transfer, and managed file transfer services**

![[Pasted image 20260422122402.png]]

  
Data protection services
To learn more, expand each of the following four categories.

## 

Edge - Local compute and storage

With edge local compute and storage services, you can use your AWS Cloud compute resources and storage services even when disconnected from the AWS Cloud. The AWS Snow Family helps customers who need to run operations in austere, non-datacenter environments, and in locations where there’s lack of consistent network connectivity.

Edge location devices include the AWS Snow Family of products: AWS Snowball devices.

- AWS Snowball Edge is an edge computing and storage device. You can use these devices for the following:
    
    - Data collection
        
    - Machine learning and processing
        
    - Storage in environments with intermittent connectivity or in remote disconnected locations
        
- Snowball Edge comes in two main options: Storage Optimized for the highest storage capacity and Compute Optimized for more available virtual CPUs (vCPUs) with a lower storage capacity.
    

## 

Offline data transfer and migration services

Offline data transfers are also performed using AWS Snow Family devices. They also provide a data transfer platform to copy your data into and out of the AWS Cloud. You can transfer your data by shipping the devices to AWS for import.

  

The Snow Family, comprised of AWS Snowcone and AWS Snowball Edge devices, offers several physical devices with different capacity points. 

- Storage Optimized devices are available to increase the device capacity for optimizing your data transfer jobs.
- Most devices come with built-in computing capabilities so you can pre-process data before transferring it to the AWS Cloud. These services help to physically transport up to petabytes of data into and out of AWS.

AWS owns and manages Snow Family devices. The devices integrate with AWS security, monitoring, storage management, and computing capabilities.

## 

Data synchronization and online transfer services

Data synchronization and online data transfer service is available using the AWS DataSync service. AWS DataSync is an online data transfer service that streamlines, automates, and accelerates copying data between on-premises storage systems and AWS Storage services. You can also use AWS DataSync to replicate data between AWS Storage services. You can use DataSync for the following operations:

- Migrate active datasets to AWS.
    
- Archive data to free up on-premises storage capacity.
    
- Replicate data to AWS for business continuity.
    
- Transfer data to the cloud for analysis and processing.
    

DataSync can copy data between the following resources or services:

- Network File System (NFS) exports
    
- Server Message Block (SMB) shares
    
- Self-managed object storage
    
- On-premise Hadoop Distributed File System (HDFS) data 
    
- AWS Snowball Edge
    
- Amazon S3 buckets
    
- Amazon EFS file systems
    
- Amazon FSx file systems
    

## 

Managed File transfer service

The AWS Transfer Family provides fully managed support for file transfers directly into and out of Amazon S3 or Amazon EFS. AWS Transfer Family includes support for Secure File Transfer Protocol (SFTP), File Transfer Protocol over SSL (FTPS), and File Transfer Protocol (FTP). In addition, Transfer Family also supports Applicability Statement 2 (AS2) file transfer workflows.

  

The AWS Transfer Family helps you to migrate your file transfer workflows to AWS by doing the following so that nothing changes for you or your applications:

- Integrating with the specified authentication system
- Providing DNS routing with Amazon Route 53
- Supports your managed file transfer workloads

### 

****AWS Edge Storage, Data Transfer, and File Transfer Services Getting Started course****

**AWS Edge Storage, Data Transfer, and File Transfer Services Getting Started**

  
To learn more about the available edge storage, data transfer and managed file transfer services, select the following **EDGE/TRANSFER**  button to go to the **AWS Edge Storage, Data Transfer, and File Transfer Services Getting Started** course.

[EDGE/TRANSFER](https://explore.skillbuilder.aws/learn/external-ecommerce;view=none;redirectURL=?ctldoc-catalog-0=se-%22AWS%20Edge%20Storage,%20Data%20Transfer,%20and%20File%20Transfer%20Services%20Getting%20Started%22)

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/cwxpUN/Storage%20Banner%201%20crop.png)

******Data protection services******


![[Pasted image 20260422122640.png]]
Data protection services provide optional services to meet your data redundancy and disaster requirement needs. Some data protection services are standalone service offerings for you to choose from. Some storage services also include native data protection services integrated into the core service. 

### 

****AWS data protection services****Data protection services provide optional services to meet your data redundancy and disaster requirement needs. Some data protection services are standalone service offerings for you to choose from. Some storage services also include native data protection services integrated into the core service. 

### 

****AWS data protection services****

![[Pasted image 20260422122709.png]]
********  
AWS Storage services portfolio summary********

Now that you have a high-level understanding of each of the services in the AWS Storage portfolio, you can learn more about each of the services in more detail by taking the additional AWS Storage Getting Started courses provided in each section above.

********  
AWS Storage services portfolio summary********

Now that you have a high-level understanding of each of the services in the AWS Storage portfolio, you can learn more about each of the services in more detail by taking the additional AWS Storage Getting Started courses provided in each section above.

To learn more, expand each of the following four categories.

## 

Backup and archive

Using AWS Backup, you can centralize and automate data protection across AWS services. AWS Backup offers a cost-effective, fully managed, policy-based service that further streamlines data protection at scale. AWS Backup also helps you support your regulatory compliance or business policies for data protection.

  

When you combine AWS Organizations with AWS Backup, you can deploy data protection policies centrally. Centrally deploy policies to configure, manage, and govern your backup activity across your company’s AWS accounts and resources. Resources include the following:

- Amazon EC2 instances
- Amazon EBS volumes
- Amazon Relational Database Service (Amazon RDS) databases (including Amazon Aurora clusters)
- Amazon DynamoDB tables
- Amazon Neptune databases
- Amazon DocumentDB (with MongoDB compatibility) databases 
- Amazon EFS
- Amazon FSx for Lustre
- Amazon FSx for Windows File Server
- AWS Storage Gateway volumes
- Amazon S3 buckets
- VMware workloads on premises and in VMware CloudTM on AWS
-  And more

## 

Disaster recovery services

AWS Elastic Disaster Recovery service provides a cost-effective disaster recovery option for your on-premises servers and applications. 

  

AWS Elastic Disaster Recovery continuously replicates your machines into a low-cost staging area in your target AWS account and preferred Region. Replication also includes operating system, system state configuration, databases, applications, and files. In the case of a disaster, you can instruct AWS Elastic Disaster Recovery to automatically launch thousands of your machines in their fully provisioned state in minutes.  

  

AWS Elastic Disaster Recovery minimizes downtime and data loss by providing fast, reliable recovery of physical, virtual, and cloud-based servers into AWS Cloud, including AWS Regions, AWS GovCloud (US), and AWS Outposts.

## 

Service native snapshots

Service native snapshot services are built into some core services such as Amazon EBS. Snapshots create backup copies of your data. Snapshots are stored in a protected part of Amazon S3 as part of the managed service. Storing snapshots on Amazon S3 protects your data with 99.999999999 percent (11 9s) of durability and provides you Regional access and availability.

  

Snapshots are incremental copies of the data, which means that only the data that has changed after your most recent snapshot is saved in the next incremental snapshot. Incremental snapshots reduce the time required to create the snapshot. These incremental snapshots save on storage costs by not duplicating previously saved data. Each snapshot contains all of the information for that point-in-time copy that is needed to restore your data.

## 

Service native replication

Storage replication is an available built-in feature for some of the core storage services such as Amazon S3 and Amazon EFS. How replication is implemented varies for each service. Replication increases availability and protects your data by creating additional copies of your data. Replication can be between Availability Zones within an AWS Region or between AWS Regions.

### 

******AWS Storage Data Protection Services Getting Started** course****

**AWS Storage Data Protection Services Getting Started**

  
To learn more about the available data protection services, select the following **PROTECTION** button to go to the ****AWS Storage Data Protection Services Getting Started**** course.

[PROTECTION](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=se-%22AWS%20Storage%20Data%20Protection%20Services%20Getting%20Started%22)

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/cwxpUN/Storage%20Banner%201%20crop.png)

********AWS Storage services portfolio summary********



Now that you have a high-level understanding of each of the services in the AWS Storage portfolio, you can learn more about each of the services in more detail by taking the additional AWS Storage Getting Started courses provided in each section above.

![[Pasted image 20260422122911.png]]
Lesson 6 of 11

# 

Identifying the Right Storage Solution in the Cloud

The optimal storage solution for a system varies based on the following characteristics:

- Type of access method (block, file, or object)
- Patterns of access (random or sequential)
- Required throughput measured in megabits per second
- Required input output operations per second (IOPS)
- Frequency of access (online, offline, archival)
- Frequency of update [write once, read many (WORM); dynamic]
- Availability and durability constraints

The AWS Well-Architected systems use multiple storage solutions and provide different features to improve performance and use resources efficiently. 

**AWS Well-Architected**  
For additional information about AWS Well-Architected systems, select the following **WELL ARCHITECTED** button to go to the AWS Well-Architected page on the AWS web site.

[WELL ARCHITECTED](https://aws.amazon.com/architecture/well-architected/?wa-lens-whitepapers.sort-by=item.additionalFields.sortDate&wa-lens-whitepapers.sort-order=desc)

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/FU4CGz/Storage%20Banner%201%20crop.png)

******Storage characteristics and requirements******

![[Pasted image 20260422123014.png]]

You must first understand the different required characteristics of your application or workflow to select the services that best fit your use case. Example characteristics are shareable, file size, cache size, access patterns, latency, throughput, and persistence of data. Those characteristics can lead you toward the best storage solution, such as block storage, file storage, or object storage.

To optimize storage, the first step is to understand the performance profile for each of your workloads. Conduct a performance analysis to measure IOPS, throughput, and other variables. Define your storage performance requirements. Identify your workload’s most important storage performance metrics. Use those metrics to set boundaries. Implement improvement strategies as part of a data-driven approach, using benchmarking or load testing. Use this data to identify where your storage solution is or can be constrained. Examine storage and configuration options to improve the solution. 

AWS storage services are optimized for different storage scenarios. No single data storage option is ideal for all workloads. When evaluating your storage requirements, consider data storage options for each workload separately.

Determine the expected growth rate for your workload and choose a storage solution that will meet those rates. Object and file storage solutions, such as Amazon S3 and Amazon EFS, provide unlimited storage.

### 

****Questions to help determine storage requirements****

The following questions help you to segment data within each of your workloads and determine your storage requirements:

- _How often and how quickly do you need to access your data?_ AWS offers storage options and pricing tiers for frequently accessed, infrequently accessed, and archive data.
    
- _Does your data store require high IOPS or throughput?_ AWS provides categories of storage that are optimized for performance and throughput. Understanding IOPS and throughput requirements will help you provision the right amount of storage using the best storage type and help you avoid overpaying for storage.
    
- _What storage access protocols are required?_ Pre-existing applications are often developed based on specific operating systems. The operating system can affect the access protocol. For example, Linux-based applications that require file system access usually require a network file system (NFS). Windows-based applications require SMB as the protocol. 
    
- _How critical (durable) is your data?_ Critical or regulated data needs to be retained at almost any expense and tends to be stored for a long time.
    
- _How sensitive is your data?_ Highly sensitive data must be protected from accidental and malicious changes, not only data loss or corruption. Durability, cost, and security are equally important to consider.
    
- _How large is your dataset?_ Knowing the total size of the dataset helps in estimating storage capacity and cost.
    
- _How transient is your data?_ Transient data is short-lived and typically does not require high durability. (**Note:** Durability refers to average annual expected data loss.) Clickstream and Twitter data are good examples of transient data.
    
- _How much are you prepared to pay to store the data?_ Setting a budget for data storage will inform your decisions about storage options.
    

### 

**Steps to determine your storage requirements**

From a very general point of view, here are some fundamental steps you can take to help you determine the appropriate storage characteristics.

To learn more, expand each of the following three categories.

## 

Evaluate available configuration options

Evaluate the various characteristics and configuration options and how they relate to storage. Understand where and how to use the following elements to optimize storage space and performance for your workload:

- Provisioned IOPS
- SSD
- HDD
- Object storage
- Archival storage
- Ephemeral (temporary) storage 

## Determine storage characteristics 

When you evaluate a storage solution, determine the available storage characteristics, such as the following:

- Ability to share the storage
- Ideal file size and maximum file size
- Storage cache size
- Average or expected latency
- Maximum throughput
- Maximum IOPS
- Persistence of data

Then match your requirements to the AWS service that best fits your needs.

## Make decisions based on access patterns and metrics 

Choose storage systems based on your workload's access patterns. Configure them by determining how the workload accesses data. You can sometimes increase storage efficiency or increase a performance metric by choosing a different storage type. Configure the storage options you choose to match your data access patterns. 

- **Optimize your storage usage and access patterns:** Choose storage systems based on your workload's access patterns and the characteristics of the available storage options. Determine the best place to store data so that you can meet your requirements while reducing overhead. Use performance optimizations and access patterns when configuring and interacting with data based on the characteristics of your storage (for example, striping volumes or partitioning data).
- **Select appropriate metrics for storage options**: Ensure that you select the appropriate storage metrics for the workload. Each storage option offers various metrics to track how your workload performs over time. Make sure that you are measuring against any storage metrics indicating peak performance and trends. For storage systems that are fixed sized, such as Amazon EBS or Amazon FSx, ensure that you are monitoring the amount of storage used against the overall storage size. Create automation when possible to increase the storage size when reaching a threshold.
- **Monitor metrics**: Amazon CloudWatch can collect metrics across the resources in your architecture. You can also collect and publish custom metrics to surface business metrics or derived metrics. Use CloudWatch or third-party solutions to set alarms that indicate when thresholds are breached.

**Storage Architecture**

  
For additional information about AWS Storage Architecture, select the following **STORAGE ARCH** button to go to the Storage Architecture Selection in the _AWS Well-Architected Framework_.

Lesson 7 of 11

# 

Making Your AWS Storage Decision 

Now that you have reviewed the different AWS Storage service options, you can determine which services meet your needs. With AWS Storage, you are no longer limited by traditional procurement and capital expenditure restraints associated with on-premises storage. In addition to which core storage type to use, you can now examine how to select the best combination of services to form your solution. You can examine different new and existing use cases with a new approach.

In this lesson, you will examine questions to assist you in your AWS Storage services planning.

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/cKe1QD/Storage%20Banner%201%20crop.png)

******Application, workflow, or use case-driven requirements******

![[Pasted image 20260422123418.png]]

To begin, you should always understand your application, workflow, or use case requirements. As you define the requirements, you begin to understand how you can combine different AWS Storage services to build your solution. Although questions are presented as a flow diagram, in your discovery process, you will discover that many of the questions are inter-related. The flow is intended only to present a process to assist you with your discovery.

Because every workflow is different, use the information from your discovery to select the most appropriate storage services. The questions in each section are intended to help you define your requirements.

To learn more about each discovery question, expand each of the following ten categories.

## 

Is it a new or existing workflow?

New and existing workflows have different built-in implications. As you start scoping your project, you can answer many questions to assist you in determining the best storage solution.

  

Existing workflows are often easier to define. You already know what type of storage is being used. You can gather user counts and performance data from the existing environment. You might examine whether there is a better way to implement the workflow based on the time you have available.

  

New workflows often require experimentation and discovery. This can open up opportunities for a more modular design approach by using multiple storage services for the solutions. You might want to prototype these by using different storage options to find the optimal performance and cost balance. 

- What is the approach you want to take for the project?
- What issues or challenges are you trying to solve?
- What else do you want to use the data for?
- What is your intended goal?  
- Are you reducing management overhead and improving process operations?

## 

What are the known workflow requirements?

Start by gathering your known information. During the gathering process, you can discover many unknown details. You can plan mechanisms to discover the information you require.

- What are the interoperability requirements with other applications or systems? What other applications or workflows depend on or use the data?
- Can the application expand dynamically?
- Is there a predefined recommended configuration?
- What is the estimated current user count and anticipated count in the next year?
- What are the bottlenecks for the existing application?
- What are your retention and compliance requirements?
- What kind of workflow consistency do you have? Is it flat and consistent? Is it spikey with extreme high and low demands?

## 

What is the type of use case?

Use cases often define the data storage solution for you. Each use case can effectively eliminate options or direct you to specific solutions. By defining the use case, you can search blogs and use case solutions on the AWS website for more specific information.

- Is this a high performance computing option?
- Is this replatforming from on premises to the AWS Cloud?
- Are you forming a data lake?
- Are you creating a disaster-recovery environment?
- Are you optimizing your backup and archive storage? 
- Are you solving retention or compliance concerns?
- Are you improving shared data between multiple workflows?
- Are you implementing a new or migrating an existing ERP solution?
- Are you implementing or improving analytics?
- Is this a file transfer workflow?

## 

What are the requirements for storage location?

Storage location can influence the storage type.

- Is the workflow remote? Then an edge solution for local compute and storage or to transfer data from the location can be the solution.
- Does the data need to be on premises because of latency or data residency requirements? Then AWS Outposts or an AWS Storage Gateway Family option can be appropriate.
- Can the data be in the AWS Cloud? Then any core service might be appropriate. 
- Does the data need to be on premises and in the AWS Cloud? Then an AWS Storage Gateway Family option or AWS DataSync for data synchronization can be the best choice as part of the solution.

## 

What are the requirements for storage type?

Many applications require particular types of data storage. For example, some self-managed databases may work only with block storage, while others can use block and file storage. 

- What storage type does your application support?
- Does your workflow require multiple types of storage services?
- Do you need to create self-managed file systems?
- Can you use object storage to reduce storage costs?
- What are the reliability and durability requirements? Can you use a lower-cost storage class?

## 

What are the requirements for storage performance?

Performance is a key factor when determining the appropriate storage type. Most applications and workflows have performance requirements to function at an optimal level. Some application actions will fail or time out if the storage response is too slow.

- Is the application IOPS or throughput intensive?
- What are the average, minimum, and maximum IOPS requirements?
- What are the average, minimum, and maximum throughput requirements?
- Is the application latency sensitive? If yes, what is the maximum latency tolerance?
- Is the application transactional? If yes, how many transactions for each second?

## 

What are the requirements for access protocol?

Some applications are written to use NFS access protocol, while Windows applications can require SMB protocol.

- What storage does the application designer recommended?
- What file access protocols are supported?
- Does the application support REST API calls?
- Are the clients and workflow primarily Linux-based, Windows-based, or web-based?
- Can the access method be modified or expanded?
- Is the application web-based? Are RESTful APIs most appropriate for the application?
- Is the file access protocol non-standard, not SMB or NFS?

## 

What are the requirements for data transfer?

Data transfer requirements can determine the appropriate core storage for you to use. For example, the AWS Transfer Family supports Amazon S3 and Amazon EFS for the backend core storage services.

- Do you need to physically transfer data because of size and connectivity constraints?
- Do you have a transfer workflow for SFTP, FTPS, FTP, or AS2?
- Do you need to synchronize data on a scheduled basis?
- Do you require cross-Region replication?
- Do you need to transfer data between different core storage services?
- Do you require parallel copies between on-premises and in-cloud storage?

## 

What are the requirements for data protection?

Losing your data can cause irreparable harm. 

- What are your known data-protection requirements?
- Do you need regular backups?
- Do you have retention requirements?
- Do you have compliance requirements?
- Do you need snapshots for consistent point-in-time backups across multiple volumes or systems?
- Do you have long-term archival requirements?
- Which data is most valuable to your organization?

## 

What is the best combination of storage services?

Storage requirements for your applications, workflows, and use cases can often best be serviced by a combination of different services. Often when these are on premises, you find a way to fit them into an existing system. With AWS Storage, you can focus on the needs of the application, workflow, or use case and select the most appropriate solution. 

  

Storage requirements often change over time. With AWS Storage, you can move your data from one storage service to another to adjust with your changing needs.

  

Every storage service has strengths and weaknesses for different workflows and use cases. Often you can choose between different services based on performance or based on cost. In some instances, the application or workflow decides the storage type for you.

### 

****Test in the AWS Cloud****

You are invited to become familiar with the different storage services in the AWS Cloud. All AWS Storage services are based on a pay-for-use model. With this model, you can try the services in the Free Tier or without long-term commitments using on-demand pricing. Some of the services, such as Amazon S3, offer a Free Tier of data storage capacity use with no or limited cost to import data into it.

Lesson 8 of 11

# 

AWS Storage Services Management Options

AWS services provide three basic types of access to create, configure, and manage the service offerings based on your needs. You can use the graphical user interface (GUI), command line interface (CLI), or API or SDKs are available to aid in application integration.

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/NaxOH3/Storage%20Banner%201%20crop.png)

**Management console, CLI, or API options**

You have the choice of how to manage and interface with your AWS Storage services. If you prefer a GUI, you can use the AWS Management Console. If you prefer CLI, you can use the AWS CLI. To integrate with your applications, you can use the standardized APIs or SDKs for your preferred programming language.

To learn more about the AWS Storage services management options, choose each tab.

AWS MANAGEMENT CONSOLE




The AWS Management Console provides a simple web interface to interact with AWS Services. You can log in using your AWS account name and password. If you’ve enabled AWS multi-factor authentication (MFA), you will be prompted for your device’s authentication code. 

  

Using the AWS Management Console for different AWS Storage services, you can create, configure, and manage services including managing permissions and security through the GUI. You can also perform almost all management operations without having to write any code. 

  

To learn more about the AWS Console features and functionality, select [https://aws.amazon.com/console/features(opens in a new tab)](https://aws.amazon.com/console/features).

![AWS Management Console documentation and example console landing page.](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/AWS%20MC3.png)
![[Pasted image 20260422123705.png]]

AWS CLI


The AWS CLI is a unified tool to manage your AWS services. The AWS CLI is used to manage your AWS Storage services for users who prefer or require the functionality of the command line.

  

You can create, configure, modify, and manage your services and using the AWS CLI commands, or automate your processes using scripts. In the AWS documentation for the specific service, you may find separate documentation for the CLI commands, or the commands could be included in the user guide or developer guide for that service.

  

You can also quickly access the [AWS CLI Command Reference(opens in a new tab)](https://awscli.amazonaws.com/v2/documentation/api/latest/index.html) website. 

  

For more information about the AWS CLI, see [(opens in a new tab)](https://docs.aws.amazon.com/cli/index.html)[AWS Command Line Interface Documentation(opens in a new tab)](https://docs.aws.amazon.com/cli/index.html).

![[Pasted image 20260422123832.png]]

API AND AWS SDK
APIs and AWS SDKs help take the complexity out of coding by providing language-specific groups of tools for building in AWS. 

  

With APIs, you can integrate code for your AWS services directly into your applications. SDKs can streamline using AWS Storage services in your application with an API tailored to your programming language or platform. You can send authenticated requests to AWS services either by using the AWS SDK or by making the API calls directly from your application. 

You can easily develop applications on AWS in the programming language of your choice with familiar tools. There are a variety of SDKs to choose from to help you build solutions you need for your AWS Storage services.

  

For more information about available AWS SDKs, see [Tools to Build on AWS, Tools for developing and managing applications on AWS(opens in a new tab)](https://aws.amazon.com/developer/tools/) and [AWS SDKs and Tools Reference Guide(opens in a new tab)](https://docs.aws.amazon.com/sdkref/latest/guide/overview.html).

![[Pasted image 20260422123943.png|697]]


Lesson 9 of 11

# 

Knowledge Check

Check your knowledge of the content in this course by answering multiple-choice or multiple-response questions. This assessment is not graded, and you can retry the assessment as many times as you would like.

  

For single response questions: For keyboard-only accessibility, press TAB then the ARROW keys to select the correct answer, and press ENTER to submit. 

  

For multiple response questions: For keyboard-only accessibility, press TAB to navigate to the correct answer, press SPACEBAR to select. Repeat step until all correct responses are checked, then press ENTER to submit.

START QUIZ

Lesson 10 of 11

# 

Additional Resources

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/qwmFxd/Storage%20Banner%201%20crop.png)

******Additional AWS Storage services resources******

More AWS Storage services information is available on the AWS website. These services are directly accessible using the links provided. You are encouraged to review the available resources and discover how a AWS Storage and AWS Migration and Transfer services can help you solve your organization's use case requirements.

### 

******AWS Storage and AWS Migration and Transfer services**** webpages**

AWS services webpages are available for each of the storage portfolio services. You can select or search from the main [AWS(opens in a new tab)](http://aws.amazon.com/) landing page, or you can select the service to go to the landing page for that service. Each service has several additional pages, which can include Overview, Features, Pricing, Resources, and frequently asked questions (FAQs). The available pages can vary between the different services. 

The links take you to the service **Overview** landing page for each service. From there, you can navigate to additional pages and in some cases, to specific service offerings. For example, to reach Amazon S3 File Gateway, you navigate from the AWS Storage Gateway Overview page by selecting the service under **Gateway Services and Features** on the menu.

[(opens in a new tab)](https://aws.amazon.com/efs/)

- [Amazon Elastic Block Store (Amazon EBS)(opens in a new tab)](https://aws.amazon.com/ebs/?nc2=h_ql_prod_st_ebs)
- [(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/api-reference/api-reference.html)[Amazon Simple Storage Service (Amazon S3)(opens in a new tab)](https://aws.amazon.com/s3/?nc2=h_ql_prod_st_s3) 
- [(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/developer-guide/getting-started.html)[Amazon Elastic File System (Amazon EFS)(opens in a new tab)](https://aws.amazon.com/efs/?nc2=h_ql_prod_st_efs)
- [(opens in a new tab)](https://docs.aws.amazon.com/snowball/?id=docs_gateway)[Amazon FSx for Lustre(opens in a new tab)](https://aws.amazon.com/fsx/lustre/?nc2=h_ql_prod_st_fsxl)
- [Amazon FSx for Windows File Server(opens in a new tab)](https://aws.amazon.com/fsx/windows/?nc2=h_ql_prod_st_fsxw)
- [Amazon FSx for NetApp ONTAP(opens in a new tab)](https://aws.amazon.com/fsx/netapp-ontap/?nc2=h_ql_prod_st_fsxn)
- [Amazon FSx for OpenZFS(opens in a new tab)](https://aws.amazon.com/fsx/openzfs/?nc2=h_ql_prod_st_fsxo)
- [(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/snowcone-guide/aws-opshub.html)[AWS Storage Gateway(opens in a new tab)](https://aws.amazon.com/storagegateway/?nc2=h_ql_prod_st_sg)
- [AWS Outposts(opens in a new tab)](https://aws.amazon.com/outposts/?nc2=h_ql_prod_cp_out)
- [Amazon File Cache(opens in a new tab)](https://aws.amazon.com/filecache/?nc2=h_ql_prod_st_fc)[(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/developer-guide/using-client.html)
- [AWS Snow Family(opens in a new tab)](https://aws.amazon.com/snow/?nc2=h_ql_prod_st_sf)
- [AWS DataSync(opens in a new tab)](https://aws.amazon.com/datasync/?nc2=h_ql_prod_mt_ds)
- [AWS Transfer Family(opens in a new tab)](https://aws.amazon.com/aws-transfer-family/?nc2=h_ql_prod_mt_sftp)
- [AWS Backup(opens in a new tab)](https://aws.amazon.com/backup/?nc2=h_ql_prod_st_bu)
- [AWS Elastic Disaster Recovery](https://aws.amazon.com/disaster-recovery/?nc2=h_ql_prod_st_edr)


![[Pasted image 20260422124321.png]]


### 

****AWS Storage and AWS Migration and Transfer services documentation****

AWS documentation in the form of user guides and developer guides are available for each of the AWS Storage and AWS Migration and Transfer services. AWS Outpost is listed under Compute services. You can search from the main [AWS Documentation(opens in a new tab)](http://docs.aws.amazon.com/) website or you can select the service link to go directly to the associated documentation.

![Use AWS Documentation website landing page docs.aws.amazon.com to locate AWS Storage and AWS Migration & Transfer documentation.](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/AWS%20Docs.jpg)

**Core storage services**[(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/developer-guide/whatisedge.html)

- Amazon Elastic Block Store (Amazon EBS) documentation
    - [Amazon Elastic Compute Cloud User Guide for Linux Instances(opens in a new tab)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html)[(opens in a new tab)](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/AmazonEBS.html)
    - [Amazon Elastic Compute Cloud User Guide for Windows Instances(opens in a new tab)](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/AmazonEBS.html)  
        
- [Amazon Simple Storage Service (Amazon S3) User Guide(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html)
- [Amazon Elastic File System (Amazon EFS) User Guide(opens in a new tab)](https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html)
- Amazon FSx documentation
    - [Amazon FSx for Lustre User Guide(opens in a new tab)](https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html)
    - [Amazon FSx for Windows File Server User Guide(opens in a new tab)](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html)
    - [Amazon FSx for NetApp ONTAP User Guide(opens in a new tab)](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/what-is-fsx-ontap.html)
    - [Amazon FSx for OpenZFS User Guide](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html)


![[Pasted image 20260422124349.png]]

**Hybrid storage services**

- AWS Storage Gateway documentation
    
    - [User Guide for Amazon S3 File Gateway(opens in a new tab)](https://docs.aws.amazon.com/filegateway/latest/files3/what-is-file-s3.html)
        
    - [User Guide for Volume Gateway(opens in a new tab)](https://docs.aws.amazon.com/storagegateway/latest/vgw/WhatIsStorageGateway.html)
        
    - [User Guide for Tape Gateway(opens in a new tab)](https://docs.aws.amazon.com/storagegateway/latest/tgw/WhatIsStorageGateway.html)
        
- [AWS Outposts User Guide for racks(opens in a new tab)](https://docs.aws.amazon.com/outposts/latest/userguide/what-is-outposts.html)
    
- [Amazon File Cache User Guide(opens in a new tab)](https://docs.aws.amazon.com/fsx/latest/FileCacheGuide/what-is.html)
    

**Edge storage, data transfer, and managed file transfer services**

- AWS Snow Family documentation
    
    - [AWS Snowball Edge Developer Guide(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/developer-guide/whatisedge.html)
        
    - [AWS Snow Family - Snow Device Management Guide(opens in a new tab)](https://docs.aws.amazon.com/snowball/latest/snowcone-user-guide/snowcone-what-is-snowcone.html)
        
- [AWS DataSync User Guide(opens in a new tab)](https://docs.aws.amazon.com/datasync/latest/userguide/what-is-datasync.html)
    
- [AWS Transfer Family User Guide(opens in a new tab)](https://docs.aws.amazon.com/transfer/latest/userguide/what-is-aws-transfer-family.html)
    

**Data protection services**

- [AWS Backup Developer Guide(opens in a new tab)](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html)
- [AWS Elastic Disaster Recovery User Guide(opens in a new tab)](https://docs.aws.amazon.com/drs/latest/userguide/what-is-drs.html)

![](https://skillbuilder.aws/cds/40e67536-8270-4765-b28f-c8086d9baec0/assets/Capture.jpg)

**Continue your AWS learning journey**

### 

****Additional AWS Storage portfolio Getting Started courses****

In addition to this course, you can take six other Getting Started courses associated with the AWS Storage services portfolio. You can go directly to [AWS Skill Builder(opens in a new tab)](http://explore.skillbuilder.aws/) and enter the course title in the Search box, or you can filter down course results using the Filters. To go directly to the specific course listed, select the link to go to the AWS Skill Builder search.

- [AWS Storage Services – Portfolio Introduction(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Storage%20Services%20-%20Portfolio%20Introduction%22)
- [AWS Block Storage Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Block%20Storage%20Services%20Getting%20Started%22)
- [AWS Object Storage Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Object%20Storage%20Services%20Getting%20Started%22)
- [AWS File Storage Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20File%20Storage%20Services%20Getting%20Started%22)
- [AWS Hybrid Storage Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Hybrid%20Storage%20Services%20Getting%20Started%22)
- [AWS Edge Storage, Data Transfer, and File Transfer Services Getting Started(opens in a new tab)](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Edge%20Storage,%20Data%20Transfer,%20and%20File%20Transfer%20Services%20Getting%20Started%22)
- [AWS Storage Data Protection Services Getting Started](https://explore.skillbuilder.aws/learn/external-ecommerce;view=signin;redirectURL=?ctldoc-catalog-0=field16-_31_40~se-%22AWS%20Storage%20Data%20Protection%20Services%20Getting%20Started%22)


![[Pasted image 20260422124420.png]]


