## 

**The AWS database offerings**

The need for a database solution to support distinct use cases and workload profiles is evident in today's world. AWS offers a broad range of database services that are purpose-built for your specific applications. AWS managed database services include relational and non-relational databases, which are schema-less. 

Click each icon below for more information on the types of databases that AWS supports.

![[Pasted image 20260420102450.png]]
AWS service spotlight 

This course covers the following AWS services.

Amazon RDS

–

Amazon Relational Database Service (Amazon RDS) is a web service that makes it easier to set up, operate, and scale relational databases in the cloud. With Amazon RDS, you can manage common database administration tasks like OS patching, database updates, and backups. Supported database engines include PostgreSQL, MySQL, MariaDB, Oracle, and Microsoft SQL Server.

---
Amazon Aurora

Amazon Aurora is part of the managed database service Amazon RDS. Aurora is MySQL and PostgreSQL compatible. With Aurora, you can combine the performance and availability of traditional enterprise databases with the simplicity and cost-effectiveness of open-source databases.

---
Amazon DynamoDB

–

Amazon DynamoDB is a fully managed key-value, non-relational database service that provides fast and predictable performance with seamless scalability. With DynamoDB, you can create database tables that store and retrieve data and serve any level of request traffic. You can scale up or scale down your tables' throughput capacity without downtime or performance degradation.

---
Amazon DynamoDB

–

Amazon DynamoDB is a fully managed key-value, non-relational database service that provides fast and predictable performance with seamless scalability. With DynamoDB, you can create database tables that store and retrieve data and serve any level of request traffic. You can scale up or scale down your tables' throughput capacity without downtime or performance degradation.

---
Amazon DocumentDB

–

Amazon DocumentDB (with MongoDB compatibility) is designed from the ground up to give you the performance, scalability, and availability you need when operating mission-critical MongoDB workloads at scale. In Amazon DocumentDB, the storage and compute are decoupled, allowing each to scale independently.

---

Amazon ElastiCache

–

Amazon ElastiCache offers fully managed Redis and Memcached in-memory data stores. You can build data-intensive apps or improve the performance of your existing apps by retrieving data from high throughput and low latency in-memory data stores.

---

Amazon Neptune

–

Amazon Neptune is a fast, reliable, fully managed graph database service for applications that work with highly connected datasets. Neptune offers read replicas for highly availability. You can create point-in-time copies, configure continuous backup to Amazon Simple Storage Service (Amazon S3) with replication across Availability Zones.

---

Amazon Redshift

–

Amazon Redshift is an enterprise-level, petabyte scale, fully managed data warehousing service. With Amazon Redshift, you can achieve efficient storage and optimum query performance through a combination of massively parallel processing, columnar data storage, and very efficient, targeted data compression encoding schemes.


---

  
–

**Blaine:** Welcome back. This lesson is about the nature of data. Without data, there would be no need for databases, so it seems reasonable that we would start our discussion here.

  

**Michelle:** I totally agree. The type of data being stored is an important factor in deciding what database is required. So, let’s begin with data source types. There are three types of data sources: structured, unstructured, and semistructured.

  

Structured data is stored as a series of data values in related tables managed by a database engine. This data is highly structured, easy to analyze, and able to be used in highly complex queries.

Unstructured data is stored as files. These files are stored in a file store or object store such as Amazon Simple Storage Service (Amazon S3). Unstructured data lacks any predefined structure and requires special tools to catalog and query the data.

Semistructured data is stored in JSON files that are loaded into a database engine. This data is highly flexible because the structure is not strict and can be changed as needed within the table. Semistructured data can be analyzed but not with the same level of complexity that analytics on structured data can achieve.  
  
**Blaine:** To help explain the differences between them, let's look at an analogy, something everyone can relate to: job interviews.

A structured interview is one in which Human Resources (HR) predetermines the questions to ask, and the questions are consistent for each candidate. Adding a new question would mean going through a process of reviews and approvals. A structured interview resembles a structured data source in which it’s easy to analyze and search through the questions, and there’s a strict process to add new questions to the list.  
  
**Michelle:** An unstructured interview is one in which the interviewer determines the questions and their order. There is no guaranteed consistency from one interview to the next. If the interviewer wants to add a new question, they just add it to the list. An unstructured interview resembles an unstructured data source—there is no process or organization to the questions.

  

**Blaine:** Now, a semistructured interview allows the interviewer to decide which questions to ask within the guidelines set by HR. The interviewer is also able to ask their own follow-up questions. This gives the interviewer the freedom to conduct the interview while using the guidelines to ensure consistency and accuracy along the way. A semistructured interview is similar in nature to a semistructured data source. It's not as unorganized and inconsistent as unstructured data but not as rigid and readily quantifiable as structured data.

   
**Michelle:** So let’s review just a little here. Structured data is easy to analyze and can perform complex queries, but you can’t instantly change the structure. Unstructured data has no organization and requires special tools to analyze. Semistructured data is highly flexible, reliable, and can be queried.

  

**Blaine:** Having a sound understanding of these data source types provides you with a good foundation to determine what database type and AWS database service is right for your applications. Thank you for watching.

---
**Structured** data is often organized to support transactional and analytical applications. Structured data is most commonly stored in relational databases but can also be stored in non-relational databases. This data source type is valuable because you can gain insight into overarching trends by efficiently running powerful data queries and analysis.

  

The example data below is structured transactional data.

  

|   |   |   |   |
|---|---|---|---|
|**order_id**|**last_name  <br>**|**first_name**|**order_total**|
|123216|Danvers|Carol|62.25|
|599764|Do|Dave|45.79|
**Semistructured** data can be just as predictable and organized as structured data. The difference is that semistructured data is flexible and can be updated without the requirement to change the schema for every single record in a table. Semistructured data allows a user to capture any data in any structure as data evolves and changes over time. Semistructured data is often stored in non-relational stores.

  ![[Pasted image 20260420102929.png]]

Examples of semistructured data include XML, email, and JSON, which is shown below.

**Unstructured** data is not organized in any distinguishable or predefined manner. Common stores for unstructured data are non-relational key-value databases. Unstructured data is full of irrelevant information, which means data needs to first be processed to perform any kind of meaningful analysis.

  

Examples of data considered to be unstructured are text messages, word processing documents, videos, photos, and other images. These files are not organized other than being placed into a file system, object store, or another repository such as a data lake.

![[Pasted image 20260420103003.png]]

### 

**Working with multiple data types**

It's not uncommon for a company to work with multiple data source types at any given time.   
Imagine a retailer that must combine data from its point of sale (POS) system with clickstream data from its website. Both systems are constantly producing information—the POS system is producing structured data, which is stored in a relational database, while the clickstream data is generated in semistructured XML files in a non-relational document store. This business must find a way to process these two different data source types in meaningful ways to draw correlations between online product comments found in the clickstream data and sale retail location information found in the database.

### 

**Data source and database types**

Depending on the database type, a database may support more than one data source type.  It's important to know which databases support which data source type, so that you make the right business and planning decisions. For example, trying to design a relational database to scale like a key-value database will most likely cause performance issues.

Click each flashcard below to discover what data source types AWS supports based on the database type.

Relational Databases
--

The previous lesson discussed how relational databases are a great choice for structured data. This lesson takes a deeper look into what makes up a relational database, including the relational database services that AWS offers.

## 

**Tables and relationships**

Relational databases rely on a series of structures, called tables, to hold data. These tables group data based on a person, place, thing, or event related to that data. These groupings are referred to as entities. Each entity is stored as a table.

A column, known as a field, describes one attribute of the entity. A row, known as a record, represents a single instance of an entity. Think of a spreadsheet, where each row has a cell for each column. Each cell can contain a value. Rules within the schema define if the attribute is required or optional.

![](https://skillbuilder.aws/cds/685e0efd-9952-4e15-bd40-0c97c5a4f16f/assets/ZHtpaU1j9VWtvv66__Qx2kH0iF-6_XSno.png)

![](https://skillbuilder.aws/cds/685e0efd-9952-4e15-bd40-0c97c5a4f16f/assets/GiawCNKOCHgpaksF_alaQVtctyAMXTLF4.png)

To create a relationship between tables, you first need to ensure that every row in a table is unique. Do this by creating a public key (e.g., customer ID) in a table to give each record a unique value. A foreign key uses values from the primary key in another table to define a record in the current table. This is what builds a relationship between two tables. Some database engines can enforce this relationship by ensuring that only values from a primary key can be used as a foreign key.

---
  
–

**Michelle:** Welcome back. In this video, we are going to discuss relational databases. Relational databases store structured data. They allow you to rapidly collect, update, and query data using a structured data model.

  
**Blaine:** That’s very true, Michelle. The use of tables to store data in columns and rows makes it easy to access and manage data.

  

Also, the structure of relational tables helps to preserve the integrity of the data. Because they are highly available and highly consistent, relational databases are great for transactional data and data that may require highly complex join operations when queried.

**Michelle:** Now speaking of database transactions, there are two methods for organizing information: online transaction processing, or OLTP, and online analytical processing, or OLAP.

Why two different methods? Well, it all comes down to how the resources supporting the databases are being used. Adding data to a database is called a write operation. Querying data in a database is called a read operation. These two operations use the same resources but in very different ways. This makes it difficult to optimize for one over the other.

**Blaine:** That’s right. Smaller databases tend to have a tolerance for write and read operations to happen at the same time. However, in large-scale databases, you're forced to sacrifice the performance of reads to allow high-performance write operations—or sacrifice performance of writes to allow for high-performance read operations.

  

The solution is to optimize your OLTP database for write operations and create a second database optimized for read operations. This second database is an OLAP database, commonly referred to as a data warehouse.

  
**Michelle:** AWS offers database solutions for both types of relational databases. As you scroll down to the bottom of this lesson, take a moment to review our relational database solutions. Thank you for watching.

---
## 

**Data indexing**

You navigate a relational database using structured query language, or SQL. Tables should be indexed to allow a query to quickly find the data needed to produce a result. Indexes can also help control the way data is physically stored on disk. They physically group records into a predictable order based on the key values within the table. This plays a huge part in the speed and efficiency of queries.
![[Pasted image 20260420103301.png]]

![The graphic above shows an example of how having an index can increase query speed. Without an index, the query must scan 12,000 rows to find orders placed on a specified date. When the table is indexed by OrderDate, for example, the query seeks the range of orders placed only on the specified date.](https://skillbuilder.aws/cds/685e0efd-9952-4e15-bd40-0c97c5a4f16f/assets/XzQldIZemo1l5ZZo_z2dvmTGKrhWI8lOL.png)

The graphic above shows an example of how having an index can increase query speed. Without an index, the query must scan 12,000 rows to find orders placed on a specified date. When the table is indexed by OrderDate, for example, the query seeks the range of orders placed only on the specified date.

**Online transaction processing (OLTP)** databases focus on recording Update, Insertion, and Deletion data transactions. OLTP queries are simple and short, which requires less time and space to process. A great example of an OLTP system is a bank ATM, in which you can modify your bank account using short transactions. 

**Online analytical processing (OLAP)** databases store historical data that has been input by OLTP. OLAP databases allow users to view different summaries of multidimensional data. Using OLAP, you can extract information from a large database and analyze it for decision-making. A good example of an OLAP system is a business intelligence tool.

---
**Online transaction processing (OLTP)** databases focus on recording Update, Insertion, and Deletion data transactions. OLTP queries are simple and short, which requires less time and space to process. A great example of an OLTP system is a bank ATM, in which you can modify your bank account using short transactions. 

**Online analytical processing (OLAP)** databases store historical data that has been input by OLTP. OLAP databases allow users to view different summaries of multidimensional data. Using OLAP, you can extract information from a large database and analyze it for decision-making. A good example of an OLAP system is a business intelligence tool.

---
It can be a huge challenge to determine the right option when it comes to migrating  
on-premises transactional databases into the cloud. You must carefully examine your options to determine what choice will be the best for your application.

**I have an inventory control system that needs to be migrated to a relational database in the cloud. What should I use?**

AWS solution video transcript

–

For OLTP and OLAP databases using row-based indexing in both cases, we have Amazon Relational Database Service, also called Amazon RDS. Now, this service makes it easy to set up, operate, and scale a relational database in the cloud. The service provides cost-efficient and scalable capacity while automating many time-consuming administration tasks, such as hardware provisioning, database setup, patching, and backups.

---

Scalability, performance, fast failover capabilities, and storage durability are some of the challenges facing companies looking for a cloud-based database. Companies want a solution that enables database engineers to focus their time on customer-facing features rather than routine database maintenance and administration.

**My PostgreSQL database is seeing a lot of write I/Os smaller than 4KB. We're consuming a good amount of I/O resources. What should I use?**

  
–

Amazon Aurora is a relational database engine managed by Amazon Relational Database Service, or Amazon RDS. Aurora combines the speed and reliability of high-end commercial databases with the simplicity and cost-effectiveness commonly associated with open-source databases. Aurora is designed to eliminate unnecessary input/output operations to reduce costs and ensure resources are available for serving read/write traffic.

---

Traditional data warehouses require significant time and resources to administer, especially for large datasets. In addition, the financial cost associated with building, maintaining, and growing self-managed, on-premises data warehouses is very high. As your data grows, you have to constantly trade off what data to load into your data warehouse and what data to archive in storage so you can manage costs.

**I need a data warehouse solution that provisions infrastructure capacity and automates ongoing administrative tasks. What should I use?**

Amazon Redshift is a fast, scalable data warehouse that makes it simple and cost-effective to analyze all your data across your data warehouse and across your data lake.

---
Hello! My name is Michelle Metzger, and I am a Lead Technical Curriculum Developer with AWS Training and Certification, specializing in database technologies. Thank you for joining me as I introduce the Amazon Relational Database Service, known as Amazon RDS.

  

Data is a strategic asset in every organization. Companies of all shapes and sizes are looking for ways to get value from their data. But before you can find value in your data, you need to store it efficiently.

  

Amazon RDS was designed to help you reduce the infrastructure costs associated with running and managing databases, improve the time it takes to develop applications, and create value using analytics and machine learning services.

  

Amazon RDS is a relational database service. Relational databases use schemas to normalize data. They reduce their storage costs with these schemas. The data within a database is often accessed using structured query language, or SQL.

  

Amazon RDS was created to minimize the effort involved in managing a relational database. The service automates time-consuming administration tasks such as hardware provisioning, operational systems, and database setup, patching, backups, all while providing cost-efficient and reliable, resizable capacity.

  

Amazon RDS provides enhanced availability and durability through the use of Multi-AZ deployments. This means that Amazon RDS creates multiple instances of the databases in different Availability Zones. In the case of an infrastructure failure, Amazon RDS performs an automatic failover to the standby in another Availability Zone. Database operations resume as soon as the failover is complete. You don’t have to update connection strings, because Amazon RDS uses a DNS service to point to the new master instance.

  

When you build your first Amazon RDS database, you have to make a few key decisions. First is the database instance type, which determines the resources your database will have. Next is the type of database engine you want to run. You can choose from Amazon Aurora, PostgreSQL, MySQL, MariaDB, Oracle Database, or SQL Server. Each database engine has its own unique characteristics and features.

  

Amazon RDS stores data in the form of tables, records, and fields. Now in most tables, records must be unique. You can do this by creating a numeric field containing unique values. This is called a primary key. Primary key values from one table can be added to other tables. This creates a relationship. Relationships are one of the distinguishing benefits of relational databases.

  

Relational databases are commonly used for storing transactional data, like data from a shopping website or security records from a metal detector. They are also commonly used for storing analytical data, such as denormalized sales records or enriched datasets for genomic research.

  

Relational databases provide stability and reliability for transactional databases. For instance, Amazon RDS can be an integral part of website backends. One AWS customer, a large vehicle manufacturer, had a website backend that was at its end-of-life support. They needed a scalable, flexible, and cost-beneficial cloud computing solution. They chose AWS because it was considered to have the best-in-class IaaS platform on the market. They used AWS services like Amazon RDS, MySQL, and SQL Server to build a state-of-the-art platform for their new interactive customer website.

  

Storing customer data in a secure, robust, open-source database is a must for many businesses. A genomics analysis and research company uses Amazon RDS PostgreSQL to host a database for genomic data analysis. More than 90,000 users rely on this solution to process, analyze, and manage the genomic data generated on their systems.

  

Now one of the biggest benefits of Amazon RDS is that you pay as you go. There are really three parts to Amazon RDS billing.

  

First, you pay for the instance hosting the databases. There are two instance types to choose from: On-Demand and Reserved. On-Demand Instance pricing lets you pay for the compute capacity by the hour. This is great when your database runs intermittently or is a little unpredictable. Reserved Instance pricing is great when you have a good understanding of the resource consumption of your database. With this type of instance, you can secure a one- or three-year term and receive a significant discount over On-Demand pricing.

  

Second, you pay for the storage and I/O consumed by your database. Storage is billed per gigabyte per month, and I/O is billed per million requests.

  

Third, you pay for the amount of data transferred to or from the internet and other AWS Regions. You never have to pay for data transfers between AWS services in the same Region.

  

I encourage you to check out our website for more information on Amazon RDS using the link below. I'm Michelle Metzger. Thank you for watching.

---

  
–

Welcome back, and thank you for joining me as we get a little more technical with Amazon RDS.

  

First, let’s go over some technical terms. The basic building block of Amazon RDS is the database instance class. When you create a database instance, you choose a database engine to run—like PostgreSQL or Amazon Aurora. The database engine manages and runs all of the database operations.

  

Another important consideration is the instance class. This determines how much memory, CPU, and I/O capabilities, in terms of network and storage throughput, will be available to the database engine. You can create and modify database instances by using the AWS Management Console, AWS Command Line Interface (CLI), or the Amazon RDS Application Programming Interface (API). The AWS CLI and RDS API enable you to automate many tasks and integrations with your AWS environment.

  

So how do you secure an Amazon RDS database instance? Well, the first consideration is its proximity to the internet. The best practice is to restrict access to your database by placing it inside of an Amazon Virtual Private Cloud, or VPC. Now smetimes you may need to accept requests directly from the internet. In this case, you should create an internet gateway.

  

Second, controlling access to the database instance. Security groups are used to control access to a database instance. Amazon RDS can use three types of security groups: database, VPC, and EC2. Amazon RDS uses AWS Identity and Access Management, or IAM, to create and manage credentials. The same users and roles that you have in IAM can also be used with Amazon RDS. Amazon RDS requires both authentication and permission to access tables and data. IAM policies assign permissions that determine who can manage Amazon RDS resources.

  

Third, securing communications to and from the database instance. This is known as data in transit. This is accomplished by using HTTPS connections. These connections are encrypted using Secure Sockets Layer, or SSL.

  

Finally, protecting data in the database. This is known as data at rest. Amazon RDS uses the industry-standard AES-256 bit encryption algorithm to encrypt the data while at rest.

  

Knowing how a service is used by real customers can be very helpful. Here are a couple of examples. 

  

Imagine you’re developing a disaster recovery solution for your Amazon RDS for Oracle database. You can create a scheduled AWS Lambda function to take database snapshots and store them in an Amazon S3 bucket. You can then configure Amazon Simple Notification Service, called Amazon SNS, as an event source for a second AWS Lambda function. This function can then copy the database into a second Amazon S3 bucket in a different Region.

  

In another example, let’s say you have an Amazon RDS database and must support real-time data analytics. You can do this by creating a Lambda function that’s triggered each time an insert operation is run on the database. Lambda writes the data from the Amazon RDS record into an Amazon Kinesis Data Firehose stream. The stream of data is written to an Amazon S3 bucket. Once the data is in the bucket, it can then be queried with Amazon Athena and visualized with Amazon QuickSight in near-real time.

  

Now let’s talk about a few companies who are using Amazon RDS to solve real-world problems.

  

Airbnb moved its on-premises MySQL databases to Amazon RDS—with only 15 minutes of downtime! How’d they do it? Amazon RDS lets you tackle difficult procedures, like replication and scaling, using basic API calls or the console. You can also use Multi-AZ deployments to further automate database replication and augment data durability.

  

In another migration story, Intuit’s money management app, Mint, migrated more than 100 MySQL instances from Amazon EC2 to Amazon RDS for MySQL. This allowed them to avoid spending time and money tuning IOPS to get strong database performance. By being in the cloud, they no longer needed to worry about hardware acquisition costs.

  

I encourage you to check out our website and the Amazon RDS resources page for more information and start building your first cloud-native database.


---

### 

**Disaster recovery architecture**

Amazon RDS for Oracle commonly runs mission-critical databases as mentioned in the above video. If anything were to happen to these databases, it would be devastating. This architecture is one option for creating a disaster recovery solution for the databases. Click each icon for more information.

![[Pasted image 20260420103621.png]]

### 

**Real-time data analytics architecture**

Amazon RDS databases are busy places. When real-time data analytics are run directly against the Amazon RDS database, it can cause latency. One solution is to create an architecture that moves these records off the database for analysis. Click each icon for more information.

![[Pasted image 20260420103650.png]]

**AWS Service Deep Dive - Amazon Aurora**

Hello! My name is Michelle Metzger, and I'm a Lead Technical Curriculum Developer with AWS Training and Certification, specializing in database technologies. Thank you for joining me as I introduce Amazon Aurora.

  

While there are many database systems available, there are really only two categories of databases: relational and non-relational. The difference between them is in how they're built, the type of data they store, how the data is stored, and how it is retrieved.

  

Relational databases thrive because they're built to collect large volumes of data efficiently and then deliver it in usable form without the need for complex programming. Aurora, which is a relational database, is built for the cloud. It's compatible with MySQL and PostgreSQL and combines the speed and reliability of high-end enterprise databases with the simplicity and cost-effectiveness of open-source databases.

  

When you build your first Aurora database, you start by opening the Amazon RDS Management Console. Next, you choose Aurora as the database engine, and then select the database instance type.

  

One innovation you may notice in Aurora is the log structured distributed storage layer. This method is significantly faster than other storage methods.

  

Aurora is structured in the same way other relational database engines are. It stores data in the form of tables, records, and fields.

  

Aurora automatically maintains six copies of your data across three Availability Zones and will automatically attempt to recover the database in a healthy Availability Zone with no data loss. You can create up to 15 read replicas that can serve read-only traffic as well as failover.

  

Let’s discuss a few of Aurora’s benefits. Aurora is a fully managed system by Amazon RDS. You no longer need to worry about database management tasks such as hardware provisioning, software patching, setup, configuration, or backups. Aurora automatically backs up your database to Amazon S3, enabling granular point-in-time recovery.

  

Aurora is built for high performance and scalability. You can get five times the throughput of standard MySQL and three times the throughput of standard PostgreSQL databases with Amazon Aurora. This performance is on par with commercial databases, at a tenth of the cost.

  

Aurora provides multiple levels of security for your database, including isolation, encryption at rest, and encryption in transit.

  

Amazon Aurora Serverless is an on-demand, auto scaling configuration for the MySQL-compatible edition of Aurora. It was designed to enable databases to run in the cloud without managing individual database instances.

  

Let’s take a look at a couple use cases for Aurora.

  

Hosting thousands of websites and managing web servers can be a huge challenge. Unpredictable workloads and erratic resource consumption can quickly bring systems to a halt. Pagely, a company that provides a massively scalable hosting platform for WordPress sites, uses Aurora Serverless to overcome these problems. Aurora Serverless gave them the ability to lower customer costs through Aurora’s high performance and scalability.

  

Database migrations can be another challenge, not to mention expensive and time-consuming. New Innovations, a medical education company, was faced with paying nearly $1 million just to upgrade their existing SQL Server databases. They decided instead to migrate these databases to Aurora PostgreSQL. Not only did they save a significant amount of money, but they saw a huge improvement in write throughput and benefited from the automatically expanding storage.

  

So let’s talk a little bit about billing. With Aurora, you pay as you go, and there are no upfront fees. There are three parts to Aurora billing that you should be aware of.

  

First, you pay for the instance hosting the database. There are three ways that you can pay for your instance. On-Demand Instance pricing lets you pay for compute by the hour. Reserved Instance pricing lets you secure a one- or three-year contract in exchange for discounts over the On-Demand rates. Serverless pricing is based on capacity, because there are no instances to manage.

  

Second, you pay for the storage and input output, or I/O, consumed by your database. Storage is billed per gigabyte per month, and the I/O is billed per million requests. There is no additional charge for the built-in backups. User-initiated backups, however, are billed per GB per month.

  

Third, there is a charge for data transferred out to the internet and other AWS Regions. You never pay for data transfers between AWS services in the same Region.

  

I encourage you to check out our website for more information using the link below.

  

I am Michelle Metzger, thank you for watching.

---
  
–

Welcome back, and thank you for joining me as we get a little more technical with Amazon Aurora. Aurora has some terminology and components that you should be aware of.

  

As with Amazon RDS, the basic building block of Aurora is the database instance class. This determines the amount of memory, CPU, and I/O capabilities available to the database engine. Aurora supports two types of instances: memory-optimized and burstable performance. Memory-optimized instances are suitable for most Aurora databases. Burstable performance instances are best when your database may experience short-lived bursts of high activity.

  

Aurora offers two database engines: MySQL and PostgreSQL. Once these choices are made, you can then begin loading data into your database.

  

Aurora can have up to 15 read replicas that can be used to improve response time for queries and provide enhanced performance as well as durability for your database instances.

  

The Amazon Aurora Global Database is a feature available for Aurora MySQL that allows a single Aurora database to span multiple AWS Regions. Data is replicated with no impact on database performance. It enables fast local reads in each Region with a typical latency of less than a second and provides disaster recovery from Region-wide outages.

  

Now, there are four important considerations for security in Aurora databases.

  

First, its proximity to the internet. The best practice is to restrict access to your database by placing it in an Amazon Virtual Private Cloud, or VPC. There may be instances where you must accept requests from the internet. In this case, you should create an internet gateway to funnel that traffic.

  

Second, controlling access to the database instance. Security groups control access to a database instance. Amazon Aurora can use three types of security groups: database, VPC, and EC2.

  

Aurora utilizes AWS Identity and Access Management, or IAM, to create and manage credentials. The same users and roles that you have in IAM can also be used with Aurora. Aurora requires both authentication and permissions to access tables and data. IAM policies assign permissions that determine who can manage database resources.

  

Third, securing communications to and from the database instance. This is known as data in transit. This is accomplished by using HTTPS connections. These connections are encrypted using SSL.

  

Finally, protecting data in the database. Aurora uses the industry standard AES-256 bit encryption algorithm to encrypt the data and database snapshots while at rest.

  

Alright, let's discuss some ways Aurora can be used with other AWS services.

  

Gathering data from public sources can be beneficial to many analytical processes. You can use Amazon Kinesis Data Firehouse to gather data from a weather website. This can trigger an AWS Lambda function that will transform the data into a consistent format and then store it in an Amazon S3 bucket. AWS Database Migration Service, or AWS DMS, can then gather new records from the Amazon S3 bucket and migrate them into an Aurora database.

  

Now, knowing how your databases are being used and their health is an important part of maintaining well-running systems. You can use Amazon CloudWatch to log the activities of users in the database as well as basic database operations. These CloudWatch logs can be searched using Amazon Elasticsearch and then visualized using Amazon QuickSight. Alternatively, you can export the CloudWatch logs to Amazon S3 and then use Amazon Athena to query them for important insights.

  

Now let’s talk about two companies who are using Aurora to solve real-world problems.

  

In the first case study, Dow Jones needed to find a solution to replace a legacy platform that was costing them nearly $1.4 million a year to support. They chose to migrate to Aurora using AWS Database Migration Service. Their new high-performance solution uses a 1 terabyte Aurora cluster running 200 transactions per second along with replication to another Region for high availability and disaster recovery.

  

In the second case study, BMLL Technologies Ltd, who is a world leader in applying statistical techniques to niche big data sets, uses Aurora PostgreSQL to help them solve performance and scalability challenges, providing deeper and faster data analysis to their customers. In addition, the built-in security, durability, and high availability capabilities of Aurora PostgreSQL is helping to simplify and automate most of their DBA requirements, lowering their costs while increasing reliability.

  

I encourage you to check out our website and the Amazon Aurora resources page for more information and start building your first cloud-native database.


---
### 

****Public source data ingestion architecture****

Many applications rely on data from public sources to meet the needs of their users. This architecture is one way to accomplish this task. Click each icon for more information.
![[Pasted image 20260420104010.png]]

### 

******Log analytics architecture******

Knowing how your databases are being used and their health is an important part of maintaining well-running systems. Aurora regularly generates logs on activities of users and the database. You can analyze these logs to ensure that users are getting the responses they require and the database is running optimally. This architecture is one option for creating a log analytics system. Click each icon for more information.
![[Pasted image 20260420104023.png]]

---

Non-Relational Databases

Semistructured and unstructured data are often stored in non-relational database systems, sometimes called NoSQL databases. This term can cause a bit of confusion. It is important to remember that SQL is a way of querying data. It implies precise structure. Non-relational or NoSQL does _not_ mean the data stored _cannot_ be queried using SQL. A better way to think of the term "NoSQL" is "_not only_ SQL."

**Blaine:** Welcome back! Let’s start by reviewing the previous lesson. Data within a relational database is organized so that the values in one table can further define the values in another table. In other words, a relationship can exist between the different tables of data.

  
**Michelle:** For example, let’s assume that we have a relational database storing product orders.

There is one table that defines each of the products that can be sold and another table that defines the product suppliers. In a relational database, you can run a single SQL query that returns a result showing all of the data on every product and the associated supplier, even though the data is in two different tables. This is the superpower of relational databases.

  
**Blaine:** Non-relational databases, however, store data differently. Getting back to the product order example, in a non-relational database, all of the information for each product, including the associated supplier, would be stored in a single item within the database table.

A lot of people struggle with the concept of data stored in unstructured ways. So, let’s discuss how the database organization, or schema, differs between relational and non-relational databases. 

Let’s say the business has decided, years after creating the database, that they need to start creating a detailed description for each product. Alright. How would each database type need to change?

  
**Michelle:** Well, to add the description data to a relational database, you would update the schema for the table. This means adding a new column for the detailed description. Once added, the new column is empty, which can cause problems. It's common for relational databases to require values in every column. If this is true in your database, you would have to create a process to determine the correct value for each existing record in the table. Once this process is completed, you would begin to add new records for those descriptions. Alright, any guesses at the steps that this would take in a non-relational database?

   
**Blaine:** No need to guess. You would just start adding new items with the new attribute. You can go back and deal with the existing records, but you don’t have to do anything with them if you don’t want to.

  

And that's one of the advantages that non-relational databases have over relational databases. Non-relational schemas do not require you to define new attributes of data before you use them. In a relational database, you have to update the schema before you can add new fields of data.

   
**Michelle:** When it comes to storing semistructured data or dealing with unstructured data, the choice is often a non-relational database. This lesson is all about non-relational databases and what you need to know when working with these data stores. Thank you for watching.

---
## 

**Comparing relational and non-relational databases**

There are many factors that can help you determine which database type is best for a new project or application you are developing. Below are the key characteristics of relational and   
non-relational database types.

|   |   |   |
|---|---|---|
|**Characteristic**|**Relational**|**Non-relational**|
|Representation|Multiple tables, each containing columns and rows|Collection of data in a single table with keys and values|
|Data design|Normalized relational or dimensional data warehouse|Denormalized document, wide column, or key-value|
|Optimization|Optimized for storage|Optimized for compute|
|Query style|Language: SQL|Language: many  <br>Uses object querying|
|Scalability|Vertically|Horizontally|
|Implementation|OLTP business systems or OLAP|OLTP web/mobile apps|

Non-relational databases can be deployed on massively distributed commodity servers. These databases have an advantage in scaling and can handle much larger data sets than relational databases. The massive distribution and scale does come at a cost, in the form of eventual consistency. This means that data may not be updated at the same time for all of the distributed systems. Eventual consistency can be an issue for applications that require ACID (Atomicity, Consistency, Isolation, Durability) compliance. Organizations requiring ACID compliance will want to be sure the non-relational database they choose can support this requirement.

## 

**Non-relational database types**
Key-value databases

–

Key-value databases logically store data in a single table. Within the table, the values are associated with a specific key and stored in the form of blob objects without a predefined schema. The values can be of nearly any type.

  

**Strengths**

- Very flexible
- Able to handle a wide variety of data types
- Keys are linked directly to their values with no need for indexing or complex join operations
- Content of a key can easily be copied to other systems without reprogramming the data

**Weaknesses**

- Analytical queries are difficult to perform due to the lack of joins
- Access patterns need to be known in advance for optimum performance
---
Document databases

–

Document stores keep files containing data as a series of elements. These files can be navigated using numerous languages including Python and Node.js. Each element is an instance of a person, place, thing, or event. For example, a document store may hold a series of log files from a set of servers. These log files can each contain the specifics for that system without concern for what the log files in other systems contain.

  

**Strengths**

- Flexibility
- No need to plan for a specific type of data when creating one
- Easy to scale

**Weaknesses**

- Sacrifice ACID compliance for flexibility
- Databases cannot query across files natively
---
In-memory databases

–

In-memory databases are used for applications that require real-time access to data. Most databases have areas of data that are frequently accessed but seldom updated. Additionally, querying a database is always slower and more expensive than locating a key in a key-value pair cache. Some database queries are especially expensive to perform. By caching such query results, you pay the price of the query once and then are able to quickly retrieve the data multiple times without having to re-execute the query.

  

**Strengths**

- Support the most demanding applications requiring sub-millisecond response times
- Great for caching, gaming, and session store
- Adapt to changes in demands by scaling out and in without downtime
- Provide ultrafast (sub-microsecond latency) and inexpensive access to copies of data

**Weaknesses**

- Data that is rapidly changing or is seldom accessed
- Application using the in-memory store has a low tolerance for stale data
---
Graph databases

–

Graph databases store data as nodes, while edges store information on the relationships between nodes. Data within a graph database is queried using specific languages associated with the software tool you have implemented. Review the **Understanding graph relationships** section below for more information.

  

**Strengths**

- Allow simple, fast retrieval of complex hierarchical structures
- Great for real-time big data mining
- Can rapidly identify common data points between nodes
- Great for making relevant recommendations and allowing for rapid querying of those relationships

**Weaknesses**

- Cannot adequately store transactional data
- Analysts must learn new languages to query the data
- Performing analytics on the data may not be as efficient as with other database types
---
### 

**Understanding graph relationships**

Suppose you wanted to look at a product or social recommendation. In the following diagram, notice Bill at the top right. The graph shows that Bill knows Carl and Myra. Graph databases, like all others, can store information on many different entities. Entities are called nodes in a graph database. Bill, Carl, and Myra represent customer nodes. The relationship between two nodes is known as an edge.

A graph database can have multiple types of nodes. Notice the product node at the top of the graph. This node tracks purchase history. Three customers purchased this particular product.

![[Pasted image 20260420104241.png]]

You can go a step further and track customer interests, such as a favorite sport. This graph provides analysts with an opportunity to answer helpful questions. Amit may be interested in products that were purchased by other customers who like sports. Carl might be interested to know about the other customers that his friends know.

---
**AWS non-relational database offerings**
Some database queries are inherently slower and more expensive than others. When companies perform queries that involve joins across multiple tables or queries with intensive calculations, it will cost more than simple, single table queries.


**I have a gaming website that has grown so quickly that the whole site loads slowly. I need a solution that can handle this huge volume of uses. What should I use?**

You can use Amazon ElastiCache to support data-intensive apps or improve the performance of your existing apps by retrieving data from high throughput and low latency in-memory data stores. This service offers fully managed Redis and Memcached cache engines for in-memory data stores. ElastiCache is a popular choice for gaming, advertising technology (ad tech), financial service, healthcare, and Internet of Things (IoT) apps.

  

On the surface, the Redis and Memcached engines look similar. Each is an in-memory   
key-value store. However, there are significant differences between the two. Requirements such as compliance, backup and replication, and automatic failover dictate which engine you should implement. For the full list of differences, see [Comparing Memcached and Redis](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html).[](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html)

  

With both ElastiCache for Redis and ElastiCache for Memcached, you:

- No longer need to perform management tasks such as hardware provisioning, software patching, setup, configuration, and failure recovery
- Have access to monitoring metrics, enabling you to diagnose and react to issues quickly
- Can take advantage of cost-efficient and resizable hardware capacity



![[Pasted image 20260420104331.png]]

---
Many organizations are realizing the need for a database solution that can store vast amounts of data rapidly. One of the most common needs is for a database that can rapidly gather shopping cart data and quickly eliminate data from abandoned carts.

**I need to quickly gather shopping cart data from my website and discard data on abandoned carts.** **What should I use?**

Amazon DynamoDB can handle more than 10 trillion requests per day and support peaks of more than 20 million requests per second. More than 100,000 AWS customers have chosen DynamoDB as their key-value database for mobile, web, gaming, ad tech, IoT, and other applications that need low-latency data access at any scale. DynamoDB supports ACID-compliant transactions.

DynamoDB is a key-value and document store database. It delivers single-digit millisecond performance at any scale. It's a fully managed, multi-Region, multi-master database with built-in security, backup and restore options, and in-memory caching for internet-scale applications.

---
Imagine a business that is working to develop an ecommerce app that specializes in fraud detection. The business needs a solution that can provide near real-time detection of patterns that are defined as suspicious and indicate known fraud activity.

  

  

**I am building a fraud detection app and need a database that supports near real-time detection of patterns.**

**What should I use?**

Amazon Neptune is a fast, reliable, fully managed graph database service that makes it easy to build and run applications that work with highly connected data sets used to discover potential fraudulent behavior before it happens. This starts with finding interactions between products, locations, and devices and then mapping those data points to individual users, customers, and/or employees.

  

Neptune graph use cases include recommendation engines, fraud detection, knowledge graphs, drug discovery, and network security.

**Blaine:** Graph databases are purpose-built to store any type of data, whether it’s structured, semistructured, or unstructured. The purpose for organization in a graph database is to navigate the relationships. Data within the database is queried using a specific language associated with the software tools you have implemented.

  

**Michelle:** The AWS graph database service is called Amazon Neptune. It’s a fast, reliable, fully managed graph database service that makes it easy to build and run applications that work with highly connected datasets.

  

Now, as Blaine mentioned, graph databases like Amazon Neptune are purpose-built to store and navigate relationships. These databases have advantages over relational databases for use cases like social networking, recommendation engines, and fraud detection, where you need to create relationships between the data very quickly, querying these relationships.

---
Storing online profiles in which different users provide different types of information can be challenging for a database. A document database enables you to store each user's profile efficiently by storing only the attributes that are specific to each user.

  
**We have a massive MongoDB database that needs to be migrated to the cloud. We need a managed service that is purpose-built for our workload.** **What should I use?**


Amazon DocumentDB is a fast, reliable, and fully managed database service that allows you to set up, operate, and scale MongoDB-compatible databases in the cloud. With Amazon DocumentDB, you can run the same application code and use the same drivers and tools that you use with MongoDB.

  

Amazon DocumentDB is used for storing semistructured data as a document, rather than normalizing data across multiple tables, each with a unique and fixed structure, as in a relational database. Documents stored in a document database use nested key-value pairs to provide the document's schema.

  

The following table compares terminology used by document databases with terminology used by relational databases.

  

|   |   |
|---|---|
|**Relational**|**Document**|
|Table|Collection|
|Row|Document|
|Column|Field|
|Primary key|Object ID|
|Nested table/object|Embedded document|

  

The following is a sample book document in a library collection.
![[Pasted image 20260420104558.png]]


---

**AWS Service Deep Dive - Amazon DynamoDB**

Hello! My name is Michelle Metzger, and I'm a Lead Technical Curriculum Developer with AWS Training and Certification, specializing in database technologies. Thank you for joining me as I introduce Amazon DynamoDB.

  

Have you ever wondered how the world’s top online retailers can handle such a large volume of customer transactions so smoothly? Or how online streaming services can serve so many customers with such low-latency?

  

A change in application capabilities and features? Maybe. But it really comes down to a change in the way data is stored to fulfill application requirements and how data is accessed and retrieved by these applications.

  

Applications use databases to store the data that they require. The two most common types of databases are relational and non-relational. Non-relational databases help you take advantage of low-cost storage. They also let you create applications and databases that are highly flexible and highly reliable.

  

There are several types of non-relational databases—like document stores, which store semi-structured and unstructured data in the form of files. Key-value databases store unstructured data in the form of key-value pairs. DynamoDB combines the best of those two non-relational databases to form a great non-relational service.

  

What do businesses really want from a database? Well, they want a database that can easily scale over time to meet the changing demands of online activity. One that can support ACID compliance, encryption at rest, and point-in-time recovery. DynamoDB meets all of these requirements while being easy to administer and cost-effective.

  

DynamoDB supports some of the world’s largest scale applications by providing consistent, single-digit millisecond response times at any scale. You can build applications that grow as needed with virtually unlimited throughput and storage.

  

With DynamoDB, there are no servers to provision, patch, or manage, and there's no software to install, maintain, or operate. DynamoDB automatically scales up and down to adjust for the capacity and maintain performance of your systems. Availability and fault tolerance are built in, eliminating the need to architect your applications for these capabilities.

  

So let’s discuss how DynamoDB works. It’s a fully managed, serverless service that only requires you to provide the capacity your application requires. DynamoDB takes that information and determines the perfect mix of resources to meet your requirements.

  

The service stores data in the form of tables, items, and attributes. When you create a table, you define a partition key attribute to uniquely identify each item in that table. This way, no two items can have the same key. You can also assign other attributes, like a sort key attribute.

  

DynamoDB makes a suitable platform for many different use cases, including providing game companies with scalability and millisecond response times. d All games can take advantage of DynamoDB, whether they’re played on mobile devices, a console, or the desktop. They can store game state, user profiles, and a user’s inventory as well as purchases.

  

If you sell directly to customers, you know that if the experience is slow or there are interruptions, they’re going to go somewhere else. Well, DynamoDB enables you to create and manage highly scalable shopping carts, user profiles, fulfillment workflows, and loyalty programs, just to name a few uses in this industry.

  

Let's transition here and discuss DynamoDB billing considerations.

  

DynamoDB charges for reading, writing, and storing data, along with any optional features you choose to enable. DynamoDB has two capacity modes: provisioned and on-demand. Each comes with specific billing options for processing reads and writes on your tables.

  

In on-demand capacity mode, you are billed for each read and write that your application performs. You don't need to specify how much throughput you expect, because DynamoDB instantly scales your workloads to meet the demand. This mode might be best if you create new tables with unknown workloads or have unpredictable application traffic.

  

In provisioned capacity mode, you specify the number of reads and writes per second that you expect your application to require. You then use auto scaling to tell DynamoDB to automatically adjust your table’s capacity within those limits. This mode might be best if you have predictable application traffic or run applications whose traffic is consistent or ramps up and down gradually.

  

I encourage you to check out our website for more information. You'll find a link below.

  

I'm Michelle Metzger, thank you for watching.

---
Welcome back. Thank you for joining me as we get a little more technical with Amazon DynamoDB. DynamoDB has some terminology and components that you should probably be aware of.

  

DynamoDB uses partition keys to find each item in the database. Data is distributed on physical storage nodes. DynamoDB uses the partition key to determine which of those nodes the item is located on.

  

DynamoDB items can have an optional sort key to store related attributes in a sorted order. This allows multiple items to be queried as a collection, which simplifies access patterns.

  

Each table also has a primary key, which represents the table’s key or keys. If there is no sort key, the primary and partition keys are the same. If there is a sort key, the primary key is a combination of the partition and sort keys called a composite primary key.

  

DynamoDB has two types of secondary indexes: local and global. These indexes improve the application's ability to access data quickly and efficiently.

  

A local secondary index uses the table’s partition key with a unique sort key. You are allowed five per table. Local indexes must be created when you create the table.

  

A global secondary index uses a partition key and sort key that can be different from those on the table. This allows you to model very complex data access patterns that differ from the original table. You are allowed up to 20 global indexes per table. Global indexes can be created and edited at any time.

  

Now let’s discuss how the service implements security.

  

DynamoDB uses AWS Identity and Access Management, or IAM, to create and manage credentials. The same users and roles you have today in IAM can be used with DynamoDB. DynamoDB requires both authentication and permission to access tables and data. IAM allows you to control access at the table and item levels.

  

DynamoDB provides end-to-end enterprise-grade encryption for data that is both in transit and at rest. All DynamoDB tables have encryption at rest enabled by default. This provides enhanced security by encrypting all your data using encryption keys stored in the AWS Key Management System.

  

DynamoDB is designed for intentional interactions with many different AWS services. The service is an excellent database solution for transactional workloads.

  

For example, you can create a backend process for a mobile application. When a user posts a new status on a social media site, the application can make a call to an Amazon API Gateway. When this call is made, it can trigger an AWS Lambda function. This function can then run code to look up the user’s friends, list them out, and push status notifications to them using Amazon SNS notifications.

  

In another example, imagine a business that uses IoT sensors to track where forklifts are within their warehouse. The data from these sensors is sent to an Amazon SQS queue. Lambda processes the data and sends it to DynamoDB for storage. From here, Amazon EMR can extract the data, transform it, and load it into an Amazon S3 data lake. You can then query this data using Amazon Athena.

  

So how do customers use DynamoDB to meet their database needs?

  

Lyft uses AWS to move faster as a company and manage its exponential growth, using AWS products to support more than 100 microservices that enhance every element of its customers' experience. Lyft leverages the scalability of DynamoDB for multiple data stores, including a ride-tracking system that stores GPS coordinates for all rides.

  

Expedia needed a solution that could help them analyze the behavior of more than 600 million visitors to the site and 75 million people who book flights every month. Expedia built a rich, high-performance streaming system using DynamoDB to deliver fast, on-demand access to reference data sets for analytics.

  

I encourage you to check out our website and the Amazon DynamoDB resources page for more information and to get started building your first non-relational database.

  

In the next lesson, Stephen Cole will walk you through a demonstration of this service.

  

I am Michelle Metzger, thank you for watching.


---

### 

****Mobile application backend architecture****

Social mobile applications are more popular than ever. This architecture provides one solution for allowing a mobile application to automatically notify a user’s friends when the user’s status changes. Click each icon for more information.

![[Pasted image 20260420104710.png]]
### 

******IoT sensor data capture architecture******

Capturing data from thousands of Internet of Things (IoT) sensors can be a challenge. This architecture represents one solution to this challenge. Click each icon for more information.

![[Pasted image 20260420104722.png]]

---
Database Migration

Managing on-premises and cloud-based databases to run at scale, with high availability and reliability is a difficult, time-consuming, and expensive undertaking. Migrating your databases and data warehouses to AWS allows you to take advantage of a portfolio of fully managed, high-performance, and cost-effective databases.

Common migration use case examples include:

- MongoDB to Amazon DocumentDB
    

- Oracle and SQL Server to Amazon Relational Database Service (Amazon RDS) and Amazon Aurora
    

- Cassandra to Amazon DynamoDB
    

- Terraform to Amazon Redshift
    

## 

**Migrating data to AWS**

There are several AWS tools and services to migrate data from an external database to AWS. AWS Database Migration Service (AWS DMS) helps you migrate databases to AWS efficiently and securely. The source database can remain fully operational during the migration, minimizing downtime to applications. At its most basic level, AWS DMS is an instance in the AWS Cloud that runs replication software.

The following diagram illustrates how AWS DMS works. Click each icon for more information.

![[Pasted image 20260420104756.png]]

## 

**Migrating database schemas** 

There are many different migration strategies. Some common migrations include on-premises databases to the AWS Cloud, relational to non-relational databases, and databases hosted on Amazon EC2 to fully managed AWS databases services like Amazon Aurora. AWS DMS supports homogeneous migrations such as Oracle to Oracle as well as heterogeneous migrations between different database engines, such as Oracle to MySQL.

However, AWS DMS creates only those objects required to efficiently migrate the data. To migrate the remaining database elements and schema, you need to use other tools depending on the type of database migration. For example, if you are migrating an on-premises Microsoft SQL database, you can use native Microsoft SQL tools to migrate the database to Amazon RDS for Microsoft SQL.

**Homogeneous** migrations, where you migrate between same database engines, may require the use of native database tools to migrate database elements.

**Heterogenous** migrations, where you migrate between different database engines, require the use of the AWS Schema Conversion Tool (AWS SCT) to first translate your database schema to the new platform. You can then use AWS DMS to migrate the data. It is important to understand that AWS DMS and SCT are two different tools that serve different needs. 

|                                                                    |                                                                                                      |     |     |
| ------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------- | --- | --- |
| **AWS Data Migration Service**  <br>**(AWS DMS)**                  | **AWS Schema Conversion Tool**  <br>**(AWS SCT)**                                                    |     |     |
| Loads the tables with data without any foreign keys or constraints | Identifies the issues, limitations, and actions for the schema conversion                            |     |     |
|                                                                    | Generates the target schema scripts, including foreign keys and constraints                          |     |     |
|                                                                    | Converts code such as procedures and views from source to target and applies the code on the target. |     |     |
|                                                                    |                                                                                                      |     |     |

---
Architecture Overview

The previous lessons covered the different database types that AWS supports and the AWS database services available to you. You also got a quick look at the tools available to migrate your databases to AWS. Now, there's another decision to make regarding your database deployment: server-based or serverless?

**Blaine:** How do you run your applications? Where are they stored? These questions are at the top of the list for many customers considering a move into the cloud. There are two common architectures that are available in today’s market: server-based, which is the traditional method that has been used for decades now, and serverless, which is the new kid. Although he’s nearly a teenager at this point.

**Michelle:** A server-based architecture is a computing model in which the server hosts, delivers, and manages most of the resources and services the applications and users consume. You manage the servers. You must pay for maintenance to patch and update them. You're responsible for ensuring their proper function. As your business grows, scaling requires you to purchase additional servers and software. Finally, implementing high availability and fault tolerance? Well, that can be a bit costly.

  

**Blaine:** A serverless architecture, also known as serverless computing, is a software design pattern where applications are hosted by a third-party service, eliminating the need for the developer to manage server software and hardware.

  

Serverless architectures require zero server maintenance, provide automatic scaling, and have built-in high availability and fault tolerance. Serverless can be a great fit for certain applications, but it’s not the best for every application, Michelle. There are cases when it makes more sense, both from a cost and system architecture perspective, to use dedicated servers that are either self-managed or offered as a service.

**Michelle:** That’s right, Blaine. For example, a large application with a fairly consistent, predictable workload could perform better in a server-based architecture. Why? It’s due to the fact that scaling is not often crucial in this type of environment. Also, it may be difficult to migrate legacy applications to an environment with an entirely different architecture.

**Blaine:** In another example, developing new applications made of short-running tasks that have a single purpose is a perfect fit for serverless architecture. This architecture can save you a significant amount of time and money over the same architecture designed for a server-based architecture. It's important to remember that if you need to do a lot of in-depth analysis or perform long-running computations, a server-based architecture is generally a better fit.

**Michelle:** Ultimately, your application and business requirements dictate which route to take. But no matter what architecture you choose, AWS offers both server-based and serverless database services designed to help you perform better at the lowest cost.

  

The upcoming lessons provide a closer look at these server-based and serverless database services. Thanks for watching.

---
**Benefits of a server-based architecture**

DEVELOPER PERSPECTIVE
- **Predictive tasks:** For tasks that use constant or predictive compute, it may be more cost-effective to use server-based billing.
- **Testing and debugging:** Debugging is less complicated because there is visibility into backend processes and the application is not broken up into separate, smaller functions. It's difficult to replicate the serverless environment to see how code will actually perform once deployed.
- **Fewer u****nits of integration:** Serverless architectures have lots of smaller components than with server-based architectures. This requires extra time to go into organizing the functions so they work in line with your data.
Business PERSPECTIVE
- **Overall control:** The company owns and manages the infrastructure, which provides full control over all aspects of the application.
- **Compliance and security:** Having full control over the infrastructure allows for full visibility, which may be required for compliance and security standards.
- **Legacy applications:** Existing applications may not have the flexibility of decoupling individual parts and may be better suited to migrate to a server-based architecture.

**Benefits of a serverless architecture**
- **Server management:** Because there is no backend infrastructure to be responsible for, liability is reduced and there is no system administration.
- **Scalability:** With a serverless architecture, you don’t have to think twice about provisioning infrastructure because of its ability to automatically scale with traffic volumes.
- **Application flexibility:** You can migrate individual application features or partial workloads to run on serverless as on-demand events. This frees up resources in production to be used for more critical tasks.

- **Time to market:** Smaller deployable units result in faster delivery of features to market, increasing the ability to adapt to change.
- **Cost:** The cost of hiring backend infrastructure engineers goes down, along with operational costs.
- **Customer obsession:** Abstraction from servers allows companies to dedicate more time and resources to developing and improving customer experience.
- **Startup friendly:** The serverless architecture pay-as-you-go model allows you to build an environment nearly for free and ease into the market without dealing with huge bills for minimum traffic.

---

Server-Based Architecture

AWS offers different ways to deploy your database using a server-based approach in the cloud. This lesson focuses on two AWS database services: **Amazon Relational Database Service (Amazon RDS)** and **Amazon Elastic Compute Cloud (Amazon EC2)** to host your database engine. Before diving into these services, take a look at what a server-based application environment may look like on AWS.

## 

**AWS server-based architecture example**

The following diagram shows a typical web application using a server-based database solution. This architecture includes website content and application functions hosted on Amazon EC2 instances. Amazon RDS provides data store in multiple Availability Zones for fault tolerance. Click each icon for more information.

![[Pasted image 20260420110348.png]]

### 

**Scaling in a server-based architecture**

When it comes to server-based architectures, scaling usually comes with a cost and may introduce complexity to a solution. For a web application that’s under too much load, for example, that means finding out what resource your application is running out of on the server.

AWS offers instance monitoring out of the box for its server-based databases. This makes it easier to determine what needs scaling. To handle a higher load in your database, for example, you can vertically scale up your Amazon RDS master database instance by selecting a bigger instance size. There are currently more than 18 instance sizes to choose from when resizing your Amazon RDS MySQL, PostgreSQL, MariaDB, Oracle, or Microsoft SQL Server instance. Your application can remain online, and Amazon RDS manages the scaling.

## 

**Amazon RDS**

Amazon RDS is a managed relational database service. AWS takes care of most of the management and maintenance tasks required by a server-based approach. Amazon RDS provides you with six familiar database engines to choose from, including Amazon Aurora, PostgreSQL, MySQL, MariaDB, Oracle, and SQL Server.

### 

**Amazon RDS benefits**

- AWS automates the entire process of database configuration, management, and maintenance.
    

- Configure read replicas when using certain database engines, or set up synchronous replication for enhanced performance, availability, and durability.
    

- Amazon RDS offers automatic backups and encryption at rest and in transit.
    

- You can scale your database's compute and storage resources with only a few mouse clicks or an API call, often with no downtime.
## 

**Amazon EC2**

With Amazon EC2 as the underlying structure for your database deployment, you are responsible for the administration and maintenance of your database, including database engine installs, patching, and OS updates. For data storage, Amazon Elastic Block Storage (Amazon EBS) volumes are used by Amazon EC2 instances. An instance may have more than one volume associated.

### 

**Amazon EC2 benefits**

- Amazon EC2 gives you full control over your database deployment.
    

- Easily supervise your maintenance windows, use of ports, and number of instances per database.
    

- Configure your Amazon EC2 database with the same settings and parameters as your on-premises solution.
    

- Encrypt Amazon EBS volumes to protect your data both at rest and in transit as the data travels between the volume and the instance.

## 

**AWS Shared Responsibility Model**

Security and compliance are shared responsibilities between AWS and the customer. As an AWS customer, you can securely provision virtual servers, storage, databases, and desktops in the AWS Cloud. In this process, you are responsible for securing your data, operating systems, networks, platforms, and other resources that you create in the AWS Cloud. You are responsible for protecting the confidentiality, integrity, and availability of your data in the cloud and for meeting any specific business and compliance requirements for your workloads in the cloud.

![[Pasted image 20260420110458.png]]

Note that the shared responsibilities vary depending on the type of AWS service. When it comes to using **Amazon EC2** to host your database, AWS takes care of the server infrastructure, including networking and storage. You are responsible for managing the database, including the following:

- Scaling and capacity planning
- Implementing high availability and fault tolerance
- Database backups
- Database software patches
- Database software installs
- Operating system patches

When it comes to using **Amazon RDS**, AWS performs database maintenance on your behalf. Even though Amazon RDS does not automatically scale a database instance, it does make it easier with little to no downtime. This allows you to dedicate more of your time to application optimization.

---
Serverless Architecture

All AWS serverless database services feature a distributed, fault-tolerant, highly available storage system that automatically scales as demand grows. This lesson focuses on two AWS serverless database solutions: **Amazon DynamoDB** and **Amazon **Aurora Serverless****. Before diving into these services, take a look at what a serverless application environment may look like on AWS.

## 

**AWS serverless architecture example**

The following diagram shows a typical web application, similar to the application architecture from the previous lesson, only this time using serverless. This architecture includes website content stored in Amazon Simple Storage Service (Amazon S3), application code executed using AWS Lambda functions, user authentication provided by Amazon Cognito, and Amazon DynamoDB to store application data. Click each icon for more information.

![[Pasted image 20260420110537.png]]


### 

**Scaling in a serverless architecture**

Implementing a serverless architecture allows your backend AWS services to efficiently and automatically scale and help keep your costs low. Scaling is an event-driven process. For example, when it comes to Amazon DynamoDB, you can use Amazon CloudWatch to monitor and track a table’s read and write capacity metrics. Even if you’re not around, DynamoDB automatic scaling monitors your tables and indexes to automatically adjust throughput in response to changes in application traffic as demand increases and decreases.

## 

**Amazon DynamoDB**

As a fully managed non-relational database, Amazon DynamoDB automatically scales tables on-demand to adjust for capacity and maintains performance with zero server administration. DynamoDB supports both document and key-value store models.

### 

**Amazon DynamoDB benefits**

- DynamoDB supports ACID (Atomicity, Consistency, Isolation, and Durability) transactions to enable you to build business-critical applications at scale.
    

- There is no hardware provisioning, software patching, or upgrades. DynamoDB scales up or down automatically and is perfect for new, unpredictable, infrequently used, or variable workloads.
    

- DynamoDB encrypts all data by default and fully integrates with AWS Identity and Access Management (AWS IAM) for robust security.
    

- Build global applications with fast access to local data by easily replicating tables across multiple AWS Regions.
    

- You can use Amazon DynamoDB Accelerator (DAX), which is an in-memory store for DynamoDB, without the need to modify application logic.
## 

**Amazon Aurora Serverless**

For relational databases, Amazon Aurora Serverless is an on-demand, automatically scaling configuration for Amazon Aurora (MySQL and PostgreSQL). Aurora automatically starts up, shuts down, and scales capacity up or down based on your application's needs.

### 

**Amazon **Aurora Serverless** benefits**

- Aurora Serverless is built on distributed, fault-tolerant, self-healing Aurora storage with six-way replication to protect against data loss.
    

- Pay only for the database resources you consume, on a per-second basis. Your database automatically shuts down when not in use, so you don't pay for the database instance unless it's actually running.
    

- Automatically scale compute and memory capacity as needed, with no disruption to client connections.
    

- It's managed by Amazon RDS so there is no hardware provisioning, software patching, setup, configuration, or backup management.

### 

**Use cases for Amazon **Aurora Serverless****

Variable workloads

–

Lightly used applications, with peaks of 30 minutes to several hours a few times each day or several times per year, such as a human resources, budgeting, or operational reporting application

Unpredictable workloads

–

Workloads where there is database usage throughout the day and also peaks of activity that are hard to predict such as a traffic site that might see a surge of activity when it starts raining

New applications

–

New applications that use a relational data model but the instance size needed is not certain

Development and test databases

–

Relational databases used by software development and quality assurance teams during work hours but are not needed on nights or weekends

Multitenant applications

–

For web-based applications where each customer has their own database, Aurora Serverless manages individual database capacity for each customer.


---

Purpose-Built Databases

Selecting the right use case for each database type can significantly improve your database performance and user experience. The following diagram displays the common database types and their use cases.

**_Note that time series and ledger database types are currently only available in preview mode on AWS and are not yet generally available._** However, knowing what use cases they can handle is helpful for planning purposes.

## 

**Common database types and use cases**

![[Pasted image 20260420110647.png]]

## 

**The purpose-built database**

What does it mean to be "purpose-built"? General purpose databases may sound convenient, but these systems often cannot compete with purpose-built systems, which are optimized for scale, performance, and cost. By picking the best database to solve a specific problem, or a group of problems, you can break away from those one-size-fits-all solutions and focus on building applications to meet the needs of your business.

**Michelle:** In every planning discussion that I’ve been a part of, the question of “What is the purpose?” has to be answered. Purpose is what should drive all of our decisions. When developers begin discussing the requirements for a new application, the architecture of the systems the application will interact with affects every decision. Unfortunately, this discussion commonly ends with “We have a relational database, so how do we ensure our applications fit into those requirements?”

**Blaine:** Michelle, that’s the wrong focus. The developers should instead ask “What type of data store will best fulfill the needs of the application?” That’s the purpose of this lesson—helping you understand how to frame these discussions in a new way that helps your organization to exceed the limitations of the existing data structures. A purpose-built database is about having the right tool for the job.

**Michelle:** That’s right. Let's say you need to haul a mattress across town. A pickup truck is the ideal tool for this job. But, if you need to move 10 dozen packages across country, you probably don't want to use that pickup truck. It would take several trips, and it just wouldn't be very efficient. Now, a tractor-trailer is a far better fit for this scenario.

**Blaine:** When talking about database solutions, the one-size-fits-all database is no longer a viable option. Very few organizations have use cases where one database type can meet their needs. It’s far more common that organizations need to identify database solutions for multiple distinct uses. The logistical barriers that prevented a single application from interacting with multiple data source types are no longer a driving factor in database selection.

**Michelle:** In the past, data was commonly modeled as relational just because it was the only widely available choice for databasing. Instead of the use case or application driving the requirements for the database, the database engine was driving the application design. The thing is, not all application data models or use cases match the relational model.

**Blaine:** Having a purpose-built database solution means that you get better performance. This lesson discusses some of the most common use cases for each AWS database service, including examples of the applications those database solutions support.

For AWS Training and Certification, I’m Blaine Sundrud.

**Michelle:** And I’m Michelle Metzger. Thank you for watching.

## 

**The right tool for the right job**

The AWS database portfolio supports different data models and allows you to build highly scalable, distributed applications driven by use case. The following diagram displays where each AWS database service fits according to the database type.

![[Pasted image 20260420110713.png]]


---

## 

**AWS database use cases**

# Use Case 1

## 

Read-heavy OLTP application: Amazon RDS

In this online transaction processing (OLTP) application, Amazon Relational Database Service (Amazon RDS) is used with a read replica, which is asynchronously updated. Amazon RDS read replicas make it easy to elastically scale out for read-heavy database workloads beyond the capacity constraints of a single database instance. You can create one or more replicas of a given source database instance and serve high-volume application read traffic from multiple copies of your data, thereby increasing aggregate read throughput.
![[Pasted image 20260420110754.png]]


# Use Case 2

## 

Media streaming: Amazon ElastiCache

Amazon ElastiCache offers a fast, in-memory data store to power live streaming use cases. ElastiCache can store metadata for user profiles and viewing history, authentication information/tokens for millions of users, and manifest files to enable content delivery networks to stream videos to millions of mobile and desktop users at a time.

  

In this use case, Amazon Simple Storage Service (Amazon S3) and Amazon CloudFront are managing and serving media content. ElastiCache manages the content index and token authentication for in-memory, sub-milliseconds responses at scale.
![[Pasted image 20260420110810.png]]
# Use Case 3

## 

Gaming application: Amazon DynamoDB

Companies in the gaming industry use Amazon DynamoDB in all aspects of game platforms, including game state, player data, session history, and leaderboards. Unlike Amazon RDS, DynamoDB is able to automatically scale to millions of concurrent users and requests while ensuring consistently low latency measured in single-digit milliseconds.

In this use case, player data is stored in DynamoDB for analytics to determine player behavior and usage patterns.

  

Use cases such as gaming, advertising tech, shopping carts, and IoT lend themselves particularly well to the key-value data model of DynamoDB.
![[Pasted image 20260420110821.png]]
# Use Case 4

## 

Knowledge graph: Amazon Neptune

Amazon Neptune allows you to use existing information resources to build knowledge graphs and host them on a fully managed service. A knowledge graph allows you to store information in a graph model and use graph queries to enable your users to easily navigate highly connected datasets.

  

In this use case, comma-separated value (CSV) or Resource Description Framework (RDF) data is loaded from Amazon S3 to Neptune. The client application then uses simple SPARQL queries to build graphical visualizations.

Using a knowledge graph, you can add topical information to product catalogs, build and query complex models of regulatory rules, or model general information.
![[Pasted image 20260420110833.png]]
# Use Case 5

## 

Profile management: Amazon DocumentDB

User profile management enables online transactions, user preferences, and user authentication. With the growth in number of users, increasingly complex user profile data, and growing user experience expectations, the demand for scalability, data flexibility, and performance has grown too. With Amazon DocumentDB’s document data model, you can manage profiles and preferences for millions of users and scale to process millions of user requests per second with millisecond latency.

  

Developers can persist data with Amazon DocumentDB by using the same document model format that they use in their application code. Content management, personalization, and mobile applications are typical use cases.
![[Pasted image 20260420110846.png]]

---
Bookstore App Use Case

It's not uncommon for companies to utilize multiple purpose-built AWS databases for a single application. One of the many benefits of AWS is that its services are built to integrate with each other. This provides the customer with a customized solution that truly reflects their needs. Developers may break their large applications into individual components and select the best database for each job. The following use case provides an example of how you can use multiple AWS database services in the same purpose-built solution.

## 

**Mobile Bookstore web application**

The Mobile Bookstore App is a full-stack web application that creates a storefront and backend for customers to shop for books. The app contains multiple customer experiences such as a shopping cart, product search, recommendations, and a top sellers list. For each of these use cases, the app uses a purpose-built database so the developer never has to compromise on functionality, performance, or scale.

### 

**Database components**

- **Product catalog/shopping car****t:** Amazon DynamoDB offers fast, predictable performance for the key-value lookups needed in the product catalog, as well as the shopping cart and order history. In this use case, there are unique identifiers, titles, descriptions, quantities, locations, and price.
- **Recommendations:** Amazon Neptune provides social recommendations based on what a user's friends have purchased, scaling as the storefront grows with more products, pages, and users.
- **Top sellers list:** Amazon ElastiCache for Redis reads order information from Amazon DynamoDB Streams, creating a leaderboard of the “Top 20” purchased or rated books.

### 

**Other components**

- **Search:** Amazon Elasticsearch Service (Amazon EDS) enables full-text search for the storefront, enabling users to find products based on a variety of terms including author, title, and category.
- **Serverless backend:** Amazon API Gateway powers the interface layer between the front end and backend and invokes serverless compute with AWS Lambda.
- **Serverless web application:** Amazon CloudFront and Amazon Simple Storage Service (Amazon S3) provide a globally-distributed application.

## 

**Solution diagram**

Click each icon below to find out how each service is utilized.


![[Pasted image 20260420110923.png]]

The Mobile Bookstore App use case covered here is built on top of the AWS Full-Stack Template (available at [https://github.com/awslabs/aws-full-stack-template](https://github.com/awslabs/aws-full-stack-template)). The template provides the foundational services, components, and plumbing needed to get a basic web application up and running. You can build on top of the AWS Full-Stack Template to create any application you envision, whether a travel booking tool, a blog, or another web app.

You can customize the template to create your own bookstore, modify the template to make a different type of store, or change the template to make a completely different type of web application. For more detailed information on this particular use case, see [https://github.com/aws-samples/aws-bookstore-demo-app](https://github.com/aws-samples/aws-bookstore-demo-app).

