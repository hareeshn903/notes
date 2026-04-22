
## 

Amazon RDS

Amazon Relational Database Service (Amazon RDS) is a service that makes it easier to set up, operate, and scale a relational database in the cloud. It provides cost-efficient, resizable capacity for an industry-standard relational database and manages common database administration tasks.

The following video introduces what Amazon RDS is, ways you can use it, how it works, common use cases, and how it is billed.


Hello! My name is Michelle Metzger, and I am a Lead Technical Curriculum Developer with AWS Training and Certification, specializing in database technologies. Thank you for joining me as I introduce the Amazon Relational Database Service, also known as Amazon RDS.

  

Data is a strategic asset in every organization. Companies of all shapes and sizes are looking for ways to get value from their data. But before you can find value in your data, you need to store it efficiently.

  

Amazon RDS was designed to help you reduce the infrastructure costs associated with running and managing databases, improve the time it takes to develop applications, and create value using analytics and machine learning services.

  

While there are many database systems available, there are really only two categories of databases: relational and non-relational. The difference between them is in how they’re built, the type of data they store, how the data is stored, and how it is retrieved.

  

Amazon RDS is a relational database service. Relational databases use schemas to normalize data, which reduces their storage cost. The data within a database is often accessed using structured query language, or SQL.

  

Amazon RDS was created to minimize the effort involved in managing a relational database. The service automates time-consuming administration tasks such as hardware provisioning, operational system and database setup, patching, and backups, while providing cost-efficient and resizable capacity.

  

Amazon RDS provides enhanced availability and durability through the use of Multi-AZ deployments. This means that Amazon RDS creates multiple instances of the databases in different Availability Zones. In case of an infrastructure failure, Amazon RDS performs an automatic failover to the standby in another Availability Zone. Database operations resume as soon as the failover is complete. You don’t have to update connection strings, because Amazon RDS uses a DNS service to point to the new master instance.

  

When you build your first Amazon RDS database, you have to make a few key decisions. First is the database instance type that determines the resources your database will have. Next is the type of database engine you want to run. You can choose from Amazon Aurora, PostgreSQL, MySQL, MariaDB, Oracle Database, and SQL Server. Each database engine has its own unique characteristics and features.

  

Amazon RDS stores data in the form of tables, records, and fields. A table is a collection of fields. A field is a column that contains values of the same data type. For example, numbers, dates, or text. A record is a collection of values for each field within the table.

In most tables, records must be unique. You can do this by creating a numeric field containing unique values—which is called a primary key. Primary key values from one table can be added to other tables. This is called a relationship. Relationships are one of the distinguishing benefits of relational databases.

  

Relational databases are commonly used for storing transactional data, like data from a shopping website or security records from a metal detector. They are also commonly used for storing analytical data, like denormalized sales records or enriched datasets for genomic research.

  

Relational databases provide stability and reliability for transactional databases. For instance, Amazon RDS can be an integral part of a website backend. One AWS customer, a large vehicle manufacturer, had a website backend on end-of-life support. They needed the scalability, flexibility, and cost benefits of cloud computing and chose AWS because it was considered to have the best-in-class IaaS platform on the market. They used AWS services like Amazon RDS, MySQL, and SQL Server to build a state-of-the-art platform for their new interactive customer website.

  

Storing customer data in a secure, robust, open source database is a must for many businesses. A genomics analysis and research company uses Amazon RDS PostgreSQL to host the data for genomic data analysis. More than 90,000 users rely on this solution to process, analyze, and manage the genomic data generated on their systems.

  

One of the biggest benefits of Amazon RDS is that you pay as you go. There are three parts to Amazon RDS billing.

  

First, you pay for the instance hosting the databases. There are two instance types to choose from: On-Demand and Reserved. On-Demand Instance pricing lets you pay for compute capacity by the hour. This is great when your database runs intermittently or is unpredictable. Reserved Instance pricing is great when you have a good understanding of the resource consumption of your database. With this type of instance, you can secure a one- or three-year term and receive a significant discount.

  

Second, you pay for the storage and I/O consumed by your database. Storage is billed per gigabyte per month, and I/O is billed per million-request.

  

Third, you pay for the amount of data transferred to or from the internet and other AWS Regions. You never pay for data transfers between AWS services in the same Region!

  

I encourage you to check out our website for more information. You’ll find a link below.

  

I am Michelle Metzger. Thank you for watching.


---

## 

**Amazon RDS**

Amazon Relational Database Service (Amazon RDS) is a distributed relational database managed service. It is cloud-based and designed to simplify the setup, operation, and scaling of relational databases. Administrative processes like patching, backing up databases, and enabling point-in-time recovery are managed automatically.

This service primer covers the way that Amazon RDS can integrate with other AWS services, technical terminology important to the service, database security, and real-world customer use cases.


Welcome back, and thank you for joining me as we get a little more technical with Amazon RDS.

  

First, let’s go over some technical terms. The basic building block of Amazon RDS is the database instance class. When you create a database instance, you choose a database engine to run—like PostgreSQL or Amazon Aurora. The database engine manages and runs all database operations.

  

Another important consideration is the instance class, which determines how much memory, CPU, and I/O capabilities, in terms of network and storage throughput, will be available to the engine. You can create and modify database instances by using the AWS Management Console, AWS Command Line Interface (CLI), or the Amazon RDS API. The AWS CLI and Amazon RDS API enable you to automate many tasks and integrations within your AWS environment.

  

You can use the AWS Database Migration Service to easily migrate or replicate your existing databases to Amazon RDS. If you are changing from one engine to another, you can use the AWS Schema Conversion Tool to convert schemas, from let’s say Oracle to MySQL.

  

So how do you secure an Amazon RDS database instance?

  

The first consideration is its proximity to the internet. The best practice is to restrict access to your database by placing it in an Amazon Virtual Private Cloud, or VPC. Sometimes you’ll need to accept requests from the internet. In this case, you must create an internet gateway.

  

Second, controlling access to the database instance. Security groups control access to a database instance. Amazon RDS can use three types of security groups: database, VPC, and EC2. Amazon RDS uses AWS Identity and Access Management, or IAM, to create and manage credentials. The same users and roles you have in IAM can also be used with Amazon RDS. Amazon RDS requires both authentication and permission to access tables and data. IAM policies assign permissions that determine who can manage Amazon RDS resources.

  

Third, securing communications to and from the database instance, known as data in transit. This is done by using HTTPS connections. These connections are encrypted using Secure Sockets Layer, or SSL.

  

Finally, protecting data in the database. Amazon RDS uses the industry-standard AES-256 bit encryption algorithm to encrypt the data while at rest.

  

Knowing how a service is used by real customers can be very helpful. Here are a couple examples. 

  

Imagine you’re developing a disaster recovery solution for your Amazon RDS for Oracle database. You can create a scheduled AWS Lambda function to take database snapshots and store them in an S3 bucket. You can then configure Amazon Simple Notification Service, called Amazon SNS, as an event source for a second Lambda function, which copies the database into a second S3 bucket in a different Region.

  

In another example, let’s say you have an Amazon RDS database and must support real-time data analytics. You can do that by creating a Lambda function that’s triggered each time an insert operation is run on the database. Lambda writes the data from the Amazon RDS record into an Amazon Kinesis Data Firehose stream. The stream of data is written to an S3 bucket. Once the data is in the bucket, it can be queried with Amazon Athena and visualized with Amazon QuickSight in near-real time.

  

Now let’s talk about a few companies who are using Amazon RDS to solve real-world problems.

  

Airbnb moved its on-premises MySQL databases to Amazon RDS—with only 15 minutes of downtime! How’d they do it? Amazon RDS lets you tackle difficult procedures, like replication and scaling, using basic API calls or the console. You can also use Multi-AZ deployments to further automate database replication and augment data durability.

  

In another migration story, Intuit’s money management app, Mint, migrated more than 100 MySQL instances from Amazon EC2 to Amazon RDS for MySQL. This allowed them to avoid spending time and money tuning IOPS to get strong database performance. By being in the cloud, they no longer needed to worry about hardware acquisition costs.

  

I encourage you to check out our website and the Amazon RDS resources page for more information and start building your first cloud-native database.

  

In the next lesson, Stephen Cole will walk you through a demonstration of this service.

  

I am Michelle Metzger, thank you for watching.

### 

**Disaster recovery architecture**

Amazon RDS for Oracle commonly runs mission critical databases. If anything were to happen to these databases, it would be devastating. This architecture is one option for creating a disaster recovery solution for the databases.

![[Pasted image 20260420111512.png]]

### 

**Real-time data analytics architecture**

Amazon RDS databases are busy places. When real-time data analytics are run directly against the Amazon RDS database, it can cause latency. One solution is to create an architecture that moves these records off the database for analysis.

![[Pasted image 20260420111523.png]]



