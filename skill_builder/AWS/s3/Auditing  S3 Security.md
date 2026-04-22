
Lesson 2 of 15

# Course introduction

Welcome to Auditing Amazon Simple Storage Service (Amazon S3) Security! This course provides you with the skills to audit your Amazon S3 activity and resources, and identify possible vulnerabilities.

By the end of this course, you should be able to:

- bullet
    
    Explain the importance of auditing your security posture on Amazon S3.
    
- bullet
    
    Monitor API calls with AWS CloudTrail and Amazon S3 server access logging.
    
- bullet
    
    Audit the configuration of your Amazon S3 resources with AWS Config.
    
- bullet
    
    Audit Amazon S3 access policies with AWS IAM Access Analyzer.
    
- bullet
    
    Describe how you can use AWS Trusted Advisor to follow best practices for Amazon S3 security.
---

Lesson 3 of 15

# Introduction to auditing Amazon S3 security

To learn more, select the buttons to interact with the scenario until you reach the **Start over** text.

You were recently hired to lead the security team at an airline company. Your manager approaches you to discuss the current situation at the company.

Review the different options of what you should audit.

Select each flashcard to flip it.

Select each flashcard to flip it.

1. Front of card
    
    ![Permissions](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/eCDBZZg_nGD_GCCm_tBYooeuhpIy1PSp6.png)
    
    Click to flip
    
    Back of card
    
    **Permissions**
    
    Do your S3 buckets have public access or other unintended access?
    
    Click to flip
    
2. Front of card
    
    ![Settings](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/XHae7ZFQcqdCkjPL_Wmn9owyJo82-UxL3.png)
    
    Click to flip
    
    Back of card
    
    **Settings**
    
    Do your S3 buckets follow recommended best practices such as having versioning turned on?
    
    Click to flip
    
3. Front of card
    
    ![Amazon S3 actions](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/gaANXodxBbaGhzwZ_jZMfmVImaoZ9PZFl.jpg)
    
    Click to flip
    
    Back of card
    
    **Actions**
    
    Were malicious or accidental actions taken within your Amazon S3 account?

### 

**AWS tools for auditing Amazon S3**

AWS has tools that help you audit permissions, settings, and actions. 

- **AWS CloudTrail and Amazon S3 server access logs**
    - Log actions that happen in your Amazon S3 account.
    - Analyze your logs for patterns and insights using Amazon CloudWatch and Amazon Athena.
- **AWS Config**
    - Check that you have the intended and recommended settings in your Amazon S3 account (such as logging, blocked public access, and versioning).
    - As these rules are found, automatically get notifications with Amazon Simple Notification Service (Amazon SNS) or automatically take remediation actions using AWS Lambda.
- **AWS IAM Access Analyzer**
    - Receive alerts for questionable access to your Amazon S3 buckets and remediate the issue by removing access.
- **AWS Trusted Advisor**
    - Ensure your account follows AWS recommended best practices.


---

Lesson 4 of 15

# Introduction to logging with Amazon S3

To learn more, select the buttons to interact with the scenario until you reach the **Start over** text.

![[Pasted image 20260422173723.png]]


By the end of this section, you will be able to: 

- bullet
    
    Collect detailed records of Amazon S3 requests.
    
- bullet
    
    Search through logs to gain insights.
    

## 

**Logging with Amazon S3**

When you use logging with Amazon S3, you can record actions taken by users, and services on your Amazon S3 resources. You can then use the log records for auditing and compliance purposes.

You can log Amazon S3 actions using server access logs or AWS CloudTrail logs.

## 

**Introduction to server access logging**

Server access logging is a mechanism that provides detailed records for requests made to an S3 bucket. 

Server access logging is disabled by default. Enable server access logging to start receiving logs. Logs are delivered on a best effort basis in terms of how complete they are and how timely they are, but this is not guaranteed. Log records are generally delivered within a few hours and it is rare to lose log records. There is no charge for enabling access logging, nor for PUT operations for log files. You are only charged for storage of the logs and for GET operations on the files. You can use object lifecycle management to minimize storage costs.

**Additional information**

To learn more about best effort server log delivery, choose the button.

[BEST EFFORT DELIV...(OPENS IN A NEW TAB)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerLogs.html#LogDeliveryBestEffort)

**Additional information**

To learn more about object lifecycle management, choose the button.

[LIFECYCLE MANAGEM...(OPENS IN A NEW TAB)](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)


![[Pasted image 20260422173827.png]]

## 

**Introduction to AWS CloudTrail**

AWS CloudTrail is a service that provides records of actions taken by a user, role, or service in your AWS Account. You can use CloudTrail to audit your account by logging and monitoring all activity. You can also use CloudTrail to detect unusual activity in your account.

![[Pasted image 20260422173910.png]]

## 

**Analyzing logs with Amazon Athena**

### 

**Introduction to Amazon Athena**

Amazon Athena is an interactive query service that makes it easy for you to analyze data in Amazon S3 using standard SQL. You do not need to manage any infrastructure with Athena, and you pay only for the queries that you run.

![[Pasted image 20260422173955.png]]


Lesson 5 of 15

# Using server access logging

## 

**Components of server access logs**

To learn more, select the + symbol next to each category.

Source bucket

–

The S3 bucket that you are auditing and logging.

Target bucket

–

The target S3 bucket where log files are delivered.

Log Delivery group

–

Amazon S3 uses a special log delivery account, called the Log Delivery group, to write server access logs.

The Log Delivery group requires write permissions to write the logs to the target S3 bucket. When you use the console to enable logging, AWS automatically updates the access control list (ACL) on the target bucket to grant write permissions to the Log Delivery group.

## 

**Logs**

Server access logs give you visibility into detailed object-level operations on your data. The log files are text files that have one line for each log record. Each log record represents one request and consists of space-delimited fields. 

The fields relate to operation, requester, resource, and session information.

**Additional information**  
For a full list of server access log record fields, choose the button.

[LOG RECORD FIELDS(OPENS IN A NEW TAB)](https://docs.aws.amazon.com/AmazonS3/latest/dev/LogFormat.html)

Example log record:

79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be awsexamplebucket1 [06/Feb/2019:00:00:38 +0000] 192.0.2.3 79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be 3E57427F3EXAMPLE REST.GET.VERSIONING - "GET /awsexamplebucket1?versioning HTTP/1.1" 200 - 113 - 7 - "-" "S3Console/0.4" - s9lzHYrFp76ZVxRcpX9+5cjAnEH2ROuNkd2BHfIa6UkFVdtjf5mKR3/eTPFvsiP/XV/VLi31234= SigV2 ECDHE-RSA-AES128-GCM-SHA256 AuthHeader awsexamplebucket1.s3.us-west-1.amazonaws.com TLSV1.1

## Enabling server access logging

To learn more, use the arrow keys to navigate through. 

START

Step 1

![Amazon S3 console buckets list.](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/2zIGblyl3O6DJZyX_dRTSbtDkKvqpsnG0.png)

In the buckets list of the Amazon S3 console, select the bucket you would like to enable server access logging for.

1. 1
2. 2
3. 3
4. 4

Step 2

![Console S3 bucket overview](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/3kh0V8oExbysb-Ch_4lc8RiTwo1ntmGpQ.png)

Select **Properties**.

1. 1
2. 2
3. 3
4. 4

Step 3

![Console enable/disable server access logging.](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/Q31r376j2aZXwyLi_RGzT2Wqlstbdyvz7.png)

In the **Server access logging** section, select **Edit.**

1. 1
2. 2
3. 3
4. 4

Step 4

![Console- set server access logging](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/pqSxxxmVj_maR1Yy_u_MvnzzoqEJqzgAz.png)

Under **Server access logging,** select ****Enable.**** Enter the name of the target S3 bucket you want to receive the log record objects. (The target bucket must be in the same account and Region as the source bucket and must not have a default [retention period(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-periods) configuration.)

Select **Save changes**.

  

1. 1
2. 2
3. 3
4. 4

After a few hours, you can see logs in your target bucket.

START AGAIN

1. 1
2. 2
3. 3
4. 4

## 

****Analyzing server access logs with Amazon Athena****

To analyze server access logs with Amazon Athena, you need to create a structure. In Athena, you can create a database and then create a table that points to your target S3 bucket.

Once you have set up your table, you can use SQL commands in Athena to query your access logs.

![[Pasted image 20260422174048.png]]

**Note**

The current AWS console might look slightly different than what is shown in the video.

To access the video transcript, select the (+) next to the block below.

Video transcript

–

Hello. I am Bukola, a Cloud Support Engineer, here at the AWS office in Cape Town. Today, I'm going to show you how to analyze your Amazon Simple Storage Service access logs using Amazon Athena.

  
Let's get started. As a brief overview, Amazon Athena, is a query service that can be used to analyze data in Amazon S3 using standard SQL. We're going to use Athena to query S3 access logs so that we can identify information in S3 requests. To do this, you must enable S3 access logging on the bucket whose requests you want to analyze.

  
Let's go ahead and enable access logging for a bucket. After logging into the AWS Management Console, navigate to the S3 console. Then, choose the Bucket from the list. Choose the Properties tab, scroll down to the server access logging section, and then choose Edit. Choose enable, then enter or browse to the Target S3 location to store your logs. Choose Save Changes to complete the steps.

  
After requests are made to the bucket, and logs delivered into the target bucket, we can query the logs using Amazon Athena. To do this, let's go to the Athena console and create a database and table schema. For best performance, it's a best practice to create this in the same region as your S3 buckets. Search and select Athena in the search bar. Go to the detail, and then enter and run the query database query in the query window to create your database.

  
For this demonstration, I'll use S3_accesslogs_DB as a name of my database. After the database is created, ensure it's selected from the database dropdown list.

  
Next, let's create a table schema in the database we just created. For this demonstration, I have copied the statements which is similar to the one in the Knowledge Center article, which are paste in a new editor window.

  
Here, you can see the table name, and different access log properties, and their data type values. These are the properties that you can query with Athena. At the bottom is the tiger location of the assess logs I configured earlier on the bucket. Choose Run.

  
Now, you can see the table is created under the tables section. You can show the first 10 recent requests in the assess logs, by selecting the three dots, and choosing preview table. The preview will show all S3 request properties as columns.

  
You can see from the results below, that we have the bucket owner, bucket name, request time, IP address, request a IAM user, and so on. If you're searching for a particular piece of information, for example, you want to identify the user who deleted the file in the buckets, and when they did it, you can run a more specific query by entering, essentially, the query searches the table for any request that contains the images, slash, picture, dot, P N G, key name, and where the operation is deletes. Below is the result showing all related delete operations.

  
Here's another example query that will show all operations performed by a specific I am user. For this example, I've copied the select statement from the knowledge center article. This query will search the table for all requests, where the requester is the user zero one, IAM user.  
Below is the result showing all requests made by the IAM user. We can see the bucket name, timestamp, source IP address, requester, operations, and so on.

  
For a more advanced example, let's identify all operations that were performed on an object in a specific time period. My query will look like the select statement from the knowledge center article. Now, we can see results of the query showing all operations that were performed on an object for the month of August.

  
These are just some examples that you can use to search and analyze S3 access logs. Refer to the knowledge center article for more query examples, or compose your own using simple SQL statements. And now you know how to analyze your S3 access logs for request using Athena. Thanks for watching, happy Cloud Computing from all of us here at AWS.

**Additional Information**

To access the table schema and example queries provided in the video, choose the button.

[CODE FROM VIDEO](https://aws.amazon.com/premiumsupport/knowledge-center/analyze-logs-athena/)

---

Lesson 6 of 15

# Using AWS CloudTrail

## 

**Components of CloudTrail**

To learn more, select the + symbol next to each category.

Event

–

A record of an activity in an AWS account.

- Management events (control plane operations): Management operations performed on resources such as security or logging operations. Management events are enabled by default.
- Data events (data plane operations): Resource operations performed on resources such as getting or putting objects in an S3 bucket. Data operations are disabled by default.

Trail

–

A trail enables CloudTrail to deliver log files to an Amazon S3 bucket, CloudWatch logs, and CloudWatch events.

Log bucket

–

The target S3 bucket where logs files are delivered.

## 

**Logs**

CloudTrail logs contain detailed API tracking for your operations. The log files are JSON files that can include records for each event.

**Additional Information**

For a full list of CloudTrail log record fields, choose the button.

[LOG RECORD FIELDS(OPENS IN A NEW TAB)](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-event-reference-record-contents.html)

Example log record:

"eventVersion": "1.08",
"userIdentity": {
    "type": "AssumedRole",
    "principalId": "ABCDEFGHIJKLMN1234567:AMSPortalWebsite+P-username",
    "arn": "arn:aws:sts:: 111222333444:assumed-role/MyAdminAccess/AMSPortalWebsite+P-username",
    "accountId": "111222333444",
    "accessKeyId": "ABCDEFGHIJKLMNOPQRST",
    "sessionContext": {
        "sessionIssuer": {
            "type": "Role",
            "principalId": "ABCDEFGHIJKLMN1234567",
            "arn": "arn:aws:iam:: 111222333444:role/MyAdminAccess",
            "accountId": "111222333444",
            "userName": "MyAdminAccess"
        },
        "webIdFederationData": {},
        "attributes": {
            "mfaAuthenticated": "false",
            "creationDate": "2020-12-03T13:33:46Z"
        }
    }
},
"eventTime": "2020-12-03T13:40:55Z",
"eventSource": "s3.amazonaws.com",
"eventName": "GetBucketVersioning",
"awsRegion": "us-east-1",
"sourceIPAddress": "72.0.2.3",
"userAgent": "[S3Console/0.4, aws-internal/3 aws-sdk-java/1.11.888 Linux/4.9.217-0.3.ac.206.84.332.metal1.x86_64 OpenJDK_64-Bit_Server_VM/25.262-b10 java/1.8.0_262 vendor/Oracle_Corporation]",
"requestParameters": {
    "bucketName": "testloggingbucket123",
    "Host": "s3.amazonaws.com",
    "versioning": ""
},
"responseElements": null,
"additionalEventData": {
    "SignatureVersion": "SigV4",
    "CipherSuite": "ECDHE-RSA-AES128-SHA",
    "bytesTransferredIn": 0,
    "AuthenticationMethod": "AuthHeader",
    "x-amz-id-2": "2s9K0NCVoGyvMhvlGeS+iQscrRVT3/1wSt5NFGAgOoYJPqkuFHnyvXOrA9PlU=",
    "bytesTransferredOut": 113
},
"requestID": "38B1A4190D231413",
"eventID": "13f1b7af-8770-4185-871f-ed554f9821dd",
"readOnly": true,
"resources": [
    {
        "accountId": "111222333444",
        "type": "AWS::S3::Bucket",
        "ARN": "arn:aws:s3:::testloggingbucket123"
    }
],
"eventType": "AwsApiCall",
"managementEvent": true,
"eventCategory": "Management",
"recipientAccountId": "111222333444",
"vpcEndpointId": "vpce-a11b22c"

## 

**Amazon S3 API calls logged with CloudTrail**

CloudTrail can log three different levels of Amazon S3 API calls:

To learn more, select the + symbol next to each category. 

account-level actions

–

These are actions in Amazon S3 that apply to the full account and not specific objects or buckets. 

  

For example, getting the PublicAccessBlock configuration for your account.

bucket-level actions

–

These are actions that are taken on S3 buckets. 

For example, changing a bucket policy.

object-level actions

–

These are actions that are taken on objects in an Amazon S3 bucket. 

For example, putting, getting, or deleting objects.

**Additional information**  
For a full list of actions at each level, choose the button.

[LOGGING API CALLS(OPENS IN A NEW TAB)](https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudtrail-logging.html)

## 

Knowledge check

Sort the items (API calls) by dragging them to the appropriate category (account-level, bucket-level, or object-level actions).

By default, account-level and bucket-level actions are recorded with CloudTrail. CloudTrail logging for object-level actions can be enabled by configuring CloudTrail in the properties of the bucket.

## Enabling object-level logging

To learn more, use the arrow keys to navigate through. 

START

Step 1

![CloudTrail console](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/tjq8rBxjnTL1q-w-_Jd1UISZZQ2PJi5yB.png)

Open the AWS CloudTrail console and choose **Dashboard** from the navigation menu.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

Step 2

![Console- CloudTrail dashboard](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/vh8KpOASFTeaVsk4_sZJBgIHF8Ce6dObi.png)

Select **Create trail**.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

Step 3

![Console- set trail attributes.](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/QgWFXn0pFPGbou1a_5NHaZVrljYDjpUNu.png)

Choose trail attributes including a trail name and a target S3 bucket for the logs. Then select **Next**.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

Step 4

![Console- choose log events.](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/67RKTTMW43LTc9XN_SEAkupIl_UHXURiL.png)

Choose the log types you would like. For object-level logging, check the checkbox for **D****ata events**.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

Step 5

![Console- data events.](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/SJ5IQCIvym201lmh_abU3SA6FzSnLH3eR.png)

Under Data events, choose **S3** as the data event source. 

You can leave data event logging on for all buckets, or choose an individual bucket.

Select **Next** when you finish adding all your log events.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

Step 6

![Console- review and create.](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/Dj0k7lwBt_9TMFp8_VCC3QrvAl3F7Ee6Z.jpg)

Review your trail and select **Create trail**.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

## 

**Analyzing CloudTrail logs with Amazon CloudWatch**

In addition to sending CloudTrail logs to Amazon S3, you can also send them to Amazon CloudWatch. 

Using CloudWatch, you can monitor the logs and take specific actions based on the logs, such as invoking an AWS Lambda function, or sending an SNS notification. 

You can also use CloudWatch to search through your logs to filter events based on specific criteria. 

**Additional Information**

For further information on searching your logs in CloudWatch, choose the button.

![[Pasted image 20260422174256.png]]

## 

****Analyzing CloudTrail logs with Amazon Athena****

Using Athena with CloudTrail logs is even easier than server access logs. With server access logs, you had to go to the Athena console to create a database and table, but with CloudTrail logging, Athena will automatically create a table for you.

To use Athena with CloudTrail logs, simply go to the CloudTrail event history and select **Run advanced queries in Amazon Athena**.

Once your table is set up in Amazon Athena, you can then query your logs.

![[Pasted image 20260422174325.png]]

The following video shows you how to use Athena to analyze CloudTrail logs.

To watch the video, select the play button.
https://www.youtube.com/watch?v=SSB5q0lAP0Q&t=3s

**Additional information**

To access the steps provided in the video, choose the button.

[ATHENA FOR CLOUDT...(OPENS IN A NEW TAB)](https://aws.amazon.com/premiumsupport/knowledge-center/athena-tables-search-cloudtrail-logs/)

**Additional information**

For additional examples of CloudWatch log filter patterns and Athena queries, choose the button.

---
Lesson 7 of 15

# Comparing server access logging to CloudTrail logging

While Amazon S3 server access logging and CloudTrail object-level logging might seem similar, there are a few distinct differences.

CloudTrail logging is more detailed and structured than server access logging. CloudTrail logging is more advanced, but also has additional costs.

Both have events and fields that are not logged by the other.

|Server access logging|CloudTrail logging|
|---|---|
|Logs bucket and object operations using Amazon S3 APIs.|   |
|Only enabled at the bucket level so actions such as creating or deleting a bucket will not be included.|Can be enabled to log at the account, bucket, and object level.|
|Logs lifecycle transitions, expirations, and restores.||
|Logs keys in a batch delete operation.||
|Contains fields for Object Size, Total Time, Turn-Around Time, and HTTP Referrer for log records.||
|Logs authentication failures.|Does not deliver logs for requests that fail authentication, but includes logs for requests in which authorization fails and requests that are made by anonymous users.|
||Includes full payload details (such as the ACL definition).|
|Only gives a canonical user ID for the user.|Gives more user identity details such as username, ARN, and account ID.|
||Able to log a subset of objects (prefix) instead of the full bucket.|
||Able to filter what events should be logged.|

Take a look at the log record examples side-by-side. Both examples show the **PutObject** action being performed on the S3 bucket, **testloggingbucket123**.


To learn about a category, select the appropriate tab.

SERVER ACCESS LOG RECORDCLOUDTRAIL LOG RECORD

3821464d42485af42e0bce69f7390662d957281dcc71ca434dc55abdb03928b0 testloggingbucket123 [03/Dec/2020:02:41:17 +0000] 72.0.2.3 arn:aws:sts::111222333444:assumed-role/MyAdminAccess/AMSPortalWebsite+P-username 4RDM0X7KAX9P6Y6Y REST.PUT.OBJECT testobject.rtf "PUT /testobject.rtf?X-Amz-Security-Token=IQoJb3JpZ2luX2VjECsaCXVzLWVhc3QtMSJHMEUCIQD13q2bJkGeThL9Z3wXRk1Ai4mUiDbj%2B3BPOihaxnfeZAIgI%2Bk8MI6bdSwRF%2FDZB0KuzbZ628%2F9qg2QHd%2BrUqigMItP%2F%2F%2F2F%2F%2F%2F%2FARAAGgw1NjI4OTEwNjY0NTIiDKGWiTLvpbx7RfuU3yreAqwQQt57MlhKQCDSMY6slqQvwFDuz7tK5rn%2FZa4jlSdgwWAFblJwaLjPUaLSxgnP1C02IKc0%2B1kpqE1B5agUdEXiKglIMCc%2FLvSQa8PDF9BL5G9XtJElCJtr1bTZU0ESDW90BJqrqFKHOr7rsZnPVytbDoBG%2BU8%2BKHmT2F%2FmeY%2B3cu5H0%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20201203T024116Z&X-Amz-SignedHeaders=content-md5%3Bcontent-type%3Bhost%3Bx-amz-acl%3Bx-amz-storage-class&X-Amz-Expires=300&X-Amz-Credential=ASIAYGDXMBRKKBQFGWWY%2F20201203%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX HTTP/1.1" 200 - - 353 44 17 "https://s3.console.aws.amazon.com/s3/upload/testloggingbucket123?region=us-east-1" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36" - 2s9K0NCVQz1oGy7yDvMhvlGeS+iQscrRVT3/1wSt5NFGAgOuoYBRJPqkuFHnyvXOrA9w3PltI8U= SigV4 ECDHE-RSA-AES128-GCM-SHA256 QueryString testloggingbucket123.s3.us-east-1.amazonaws.com TLSv1.2

To learn about a category, select the appropriate tab.

SERVER ACCESS LOG RECORDCLOUDTRAIL LOG RECORD

"eventVersion":"1.07",

"userIdentity":{

    "type":"AssumedRole",

    "principalId":"ABCDEFGHIJKLMN1234567:AMSPortalWebsite+P-username",

    "arn":"arn:aws:sts::111222333444:assumed-role/MyAdminAccess/AMSPortalWebsite+P-username",

    "accountId":"111222333444", 

   "accessKeyId":"ABCDEFGHIJKLMNOPQRST",

    "sessionContext":{

        "sessionIssuer":{

            "type":"Role",

            "principalId":"ABCDEFGHIJKLMN1234567",

            "arn":"arn:aws:iam::111222333444:role/MyAdminAccess",

            "accountId":"111222333444","userName":"MyAdminAccess"

        },

        "attributes":{

            "creationDate":"2020-12-03T02:35:13Z",

            "mfaAuthenticated":"false"

        }

    }

},

"eventTime":"2020-12-03T02:41:17Z",

"eventSource":"s3.amazonaws.com",

"eventName":"PutObject",

"awsRegion":"us-east-1",

"sourceIPAddress":"72.0.2.3",

"userAgent":"[Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36]","requestParameters":{

    "X-Amz-Date":"20201203T024116Z",

    "bucketName":"testloggingbucket123",

    "X-Amz-Algorithm":"AWS4-HMAC-SHA256",

    "x-amz-acl":"private",

    "X-Amz-SignedHeaders":"content-md5;content-type;host;x-amz-acl;x-amz-storage-class",

    "Host":"testloggingbucket123.s3.us-east-1.amazonaws.com",

    "X-Amz-Expires":"300",

    "key":"testobject.rtf",

    "x-amz-storage-class":"STANDARD"

},

"responseElements":null,

"additionalEventData":{

    "SignatureVersion":"SigV4",

    "CipherSuite":"ECDHE-RSA-AES128-GCM-SHA256",

    "bytesTransferredIn":353.0,

    "AuthenticationMethod":"QueryString", 

   "x-amz-id-2":"2s9K0NCVoGyvMhvlGeS+iQscrRVT3/1wSt5NFGAgOoYJPqkuFHnyvXOrA9PlU=",

    "bytesTransferredOut":0.0

},

"requestID":"4RDM0X7KAX9P6Y6Y",

"eventID":"5cfae053-cb4f-46ff-b80b-a822000ff8de",

"readOnly":false,

"resources":[{

    "type":"AWS::S3::Object",

    "ARN":"arn:aws:s3:::testloggingbucket123/testobject.rtf"

    },

    {

    "accountId":"111222333444",

    "type":"AWS::S3::Bucket",

    "ARN":"arn:aws:s3:::testloggingbucket123"

}],

"eventType":"AwsApiCall",

"managementEvent":false,

"recipientAccountId":"111222333444",

"eventCategory":"Data"

## 

**Log delivery**

|Server access logging|CloudTrail logging|
|---|---|
|Delivery within a few hours.|Delivery of data events every 5 mins and management events every 15 mins.|
|The completeness and timeliness of delivery is not guaranteed.  <br>It is rare to lose log records, but server logging is not meant to be a complete accounting of all requests.|Guaranteed log delivery.|
||Able to deliver logs to more than one destination. For example, send the same logs to two different buckets.|
|Must be delivered to buckets in the same account.|Able to have cross-account log delivery (target and source bucket owned by different accounts).|
||Able forward to other systems (CloudWatch Logs, CloudWatch Events).|

## 

**Pricing**

|Server access logging|CloudTrail logging|
|---|---|
|Only charged for storage of logs.|Management events (first delivery) are free. Data events incur a fee, in addition to storage of logs.|

## 

**Format**

|Server access logging|CloudTrail logging|
|---|---|
|Loosely structured, space-separated, newline-delimited.|JSON format.|
||Has a searchable UI for logs.|

## 

**Encryption and integrity validation**

|Server access logging|CloudTrail logging|
|---|---|
|Able to set default bucket encryption on the target bucket.  <br>(Default encryption with server access logs can only be used if AES256 (SSE-S3) is selected. SSE-KMS encryption is not supported).|By default, the log files delivered to your bucket are encrypted by Amazon server-side encryption with Amazon S3-managed encryption keys (SSE-S3).|
||To determine whether a log file was modified, deleted, or unchanged, you can use CloudTrail log file integrity validation. For more information, see [CloudTrail Log File Integrity(opens in a new tab)](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-log-file-validation-intro.html).|

**Additional Information**

For full, up-to-date information on the differences between server access logging and CloudTrail object-level logging, choose the button.

[LOGGING DIFFERENC...(OPENS IN A NEW TAB)](https://docs.aws.amazon.com/AmazonS3/latest/dev/logging-with-S3.html)

## 

**Knowledge check**

Sort the items by dragging them to the appropriate category (server access logging or object-level logging).[(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/dev/logging-with-S3.html)

[](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/index.html?endpoint=https%3A%2F%2Fskillbuilder.aws%2Flrs&actor=%7B%22name%22%3A%227c2d208e-778c-4ae9-a3e0-665f7724fe7c%22%2C%22openid%22%3A%22https%3A%2F%2Fgandalf-prod.auth.us-east-1.amazoncognito.com%2Fus-east-1_KcXGNtlRY%7C7c2d208e-778c-4ae9-a3e0-665f7724fe7c%22%2C%22objectType%22%3A%22Agent%22%7D&module_id=HJ16CQT4PQ%3A001.000.003&registration_id=219ae939-3133-5c25-9a85-3d70da0b0e5f&registration=219ae939-3133-5c25-9a85-3d70da0b0e5f&product_id=GSTPMRKYV1%3A001.000.002&activity_id=http%3A%2F%2FHYCO5Z2tE8LOXZvwZLdHsWyJkikuBiDd_rise&_cb=1776859224129#/lessons/HvUkOMC6oYB7dzQnZNdHOIfMxQ5BuFrP)


Lesson 8 of 15

# Introduction to AWS Config

When auditing Amazon S3, logging is a great first step, but you might also want to be more proactive and get notified of certain changes to your Amazon S3 environment.


![[Pasted image 20260422174824.png]]


By the end of this section, you will: 

- bullet
    
    Set up an AWS Config rule to watch your Amazon S3 buckets to see if they are open to the public.
    
- bullet
    
    Use Amazon SNS to send email notifications to inform you of your non-compliant bucket.
    

## 

**What is AWS Config?**

AWS Config is a service that enables you to assess, audit, and evaluate the configurations of your AWS resources. 

AWS Config continuously monitors and records your AWS resource configurations. This automates the evaluation of recorded configurations against the set configurations and notifies you when a configuration is not compliant. With AWS Config, you can review changes in configurations and relationships between AWS resources, dive into detailed resource configuration histories, and determine your overall compliance against the configurations specified in your internal guidelines. This enables you to simplify compliance auditing, security analysis, change management, and operational troubleshooting.

## 

**Why use AWS Config?**

AWS Config enables you to evaluate your resources for compliance by evaluating your resources against your desired configuration. You can review changes to your configurations and your configuration history.

## 

**Why use AWS Config to audit Amazon S3?**

When using Amazon S3, you can keep track of your configurations using AWS Config. Examples include checking if logging is enabled for your buckets, checking for public access, checking if your buckets require SSL, and checking if versioning is enabled.

The next lesson will discuss how to use AWS Config with Amazon S3.

Lesson 9 of 15

# Using AWS Config

## 

**Components of an AWS Config implementation**

To learn more, select the + symbol next to each category.

AWS Config rules

–

AWS Config rules represent the ideal configuration settings of your AWS resources. AWS Config evaluates the current configuration settings of your AWS resources against the AWS Config rules. If an AWS resource does not match the AWS Config rule, it is marked as noncompliant.

  

For more information, see [Evaluating Resources with AWS Config Rules(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html).

  

AWS provides managed or predefined AWS Config rules that you can use. You can also create custom AWS Config rules.

  

|Managed rules|Custom rules|
|---|---|
|Predefined, customizable rules that AWS Config uses to evaluate whether your AWS resources comply with common best practices.  <br>  <br>See the documentation for an up to date [List of AWS Config Managed Rules(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html).|Rules created by you that are watched by AWS Config. You use AWS Lambda functions to create logic that evaluates whether the AWS resources comply with your rule.  <br>  <br>To create a custom rule, see [Getting Started with Custom Rules for AWS Config(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules_getting-started.html).|

  

Resource type

–

AWS Config rules act on AWS resources. When using AWS Config to audit Amazon S3, you can create rules for the following resources: 

- S3 buckets.
- Account public access blocks.

For an updated list of resources, see [Supported Resource Types: Amazon S3(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#amazonsimplestorageservice).

[(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#amazonsimplequeueservice)

Amazon S3 target bucket

–

AWS Config stores configuration details in an Amazon S3 bucket that you specify. Configuration history files contain details about the resources that changed. Each file includes resources of one type, such as Amazon Elastic Compute Cloud (Amazon EC2) instances or Amazon Elastic Block Store (Amazon EBS) volumes.

  

In order for AWS Config to send configuration details to the S3 bucket, you must give the bucket the proper permissions. For details on the required permissions, see [Permissions for the Amazon S3 Bucket(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html).

Amazon SNS topic

–

You can choose to have AWS Config send configuration changes and notifications to an Amazon SNS topic. 

  

For an updated list of notifications that AWS Config can send to Amazon SNS, see [Notifications that AWS Config Sends to an Amazon SNS topic(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/notifications-for-AWS-Config.html).

IAM role

–

When using AWS Config you will also need to create IAM roles to give AWS Config the appropriate permissions. With permissions enabled, AWS Config can take the desired actions such as writing to the target S3 bucket and publishing to the SNS topic.

  

To learn more, see [Permissions for the IAM Role Assigned to AWS Config(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/iamrole-permissions.html).

Remediation actions

–

AWS Config allows you to remediate noncompliant resources that are evaluated by AWS Config Rules using AWS Systems Manager Automation documents.

  

AWS Config provides a set of managed automation documents with remediation actions. You can also create and associate custom automation documents with AWS Config rules.

  

T[(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/remediation.html)o learn more about remediation actions, see [Remediating Noncompliant AWS Resources by AWS Config Rules(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/remediation.html).

[(opens in a new tab)](https://docs.aws.amazon.com/config/latest/developerguide/remediation.html)

## 

**AWS Config managed rules for Amazon S3**

- **s3-bucket-logging-enabled**: Checks whether logging is enabled for your S3 buckets.
- **s3-bucket-public-read-prohibited**: Checks that your Amazon S3 buckets do not allow public read access.
- **s3-bucket-public-write-prohibited**: Checks that your Amazon S3 buckets do not allow public write access.
- **s3-bucket-ssl-requests-only**: Checks whether S3 buckets have policies that require requests to use Secure Socket Layer (SSL).
- **s3-bucket-versioning-enabled**: Checks whether versioning is enabled for your S3 buckets. Optionally, the rule checks whether MFA delete is enabled for your S3 buckets.

  

**Additional information**

For an up to date list of AWS Config managed rules, choose the button.

[MANAGED RULES(OPENS IN A NEW TAB)](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html)

## Setting up AWS Config

To learn more, use the arrow keys to navigate through. 

START

Step 1

![Console- AWS Config settings.](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/PQ50hOE2yiH_72U5_YVefjrAlRIiEF14q.png)

On the AWS Config console, select **Settings**.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

Step 2

![Null](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/i2E1-sdtwQzPPcQn_lwWHm0_hzo3LPZz2.png)

Specify the resource types that you want AWS Config to record.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

Step 3

![Null](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/D4aWZnFega563sR0_xzrBH2Y0TX7qPkBj.png)

Set up an Amazon S3 bucket to receive a configuration snapshot on the request and configuration history.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

Step 4

![Null](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/1x2-yLHa6TTM3kso_aAxBzH-0DsxGd53O.png)

Set up an Amazon Simple Notification Service (Amazon SNS) topic to send configuration stream notifications.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

Step 5

![Null](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/D4XSQ7i9dwWwd5iR_oVYF63NLMw3UOk69.png)

Grant AWS Config the permissions it needs to access the Amazon S3 bucket and the SNS topic.

Select **Next**.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6

Step 6

![Console- AWS Config rules](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/xz753ooCHh5lK8zi_5t6b7sFEZCG0eTqH.png)

Specify the rules that you want AWS Config to use to evaluate compliance information for the recorded resource types.

Select **Next**.

Review your choices and then select **Confirm**.

1. 1
2. 2
3. 3
4. 4
5. 5
6. 6


![[Pasted image 20260422174946.png]]


---
Lesson 10 of 15

# Introduction to AWS IAM Access Analyzer

You now know how to get notified of public access to your Amazon S3 buckets, but you might also want to get notified of S3 buckets that get accessed from other AWS accounts.

To learn more, select the buttons to interact with the scenario until you reach the **Start over** text.

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/dCkkuyPmzWrAWpu4_242_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/4-m6ZryGcAK7-Wxf_248_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/HLBSQBvot_DfA9Db_280_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/0hbKnR3-RXN3kQ49_164_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/yddh7WNI4TjEI9b0_211_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/26wHvJLpZVE6i3Ap_244_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/vqfvt-4IUM-uN7g3_162_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/cMkvtqcIJijzIgzn_236_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/vSB8SVzqaqEeGD8c_256_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/O9_92UVqCnlSjebr_271_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/dCkkuyPmzWrAWpu4_242_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/iRUCGma2YfBaoqEP_285_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/9deQWmqqbx97HOBS_225_full.png)

![](https://skillbuilder.aws/cds/04db0f12-fa2b-4cd1-a5b8-d62cf0024f28/assets/sm9jz5kvu45XknFG_278_full.png)


![[Pasted image 20260422175308.png]]


By the end of this section, you will be able to:

- bullet
    
    Set up AWS IAM Access Analyzer for Amazon S3.
    
- bullet
    
    Use Access Analyzer to review your policies, block public access, and receive an S3 report.
    

## 

**What is Access Analyzer?**

AWS IAM Access Analyzer helps you identify the resources in your organization and accounts that are shared with an external entity. This lets you identify unintended access to your resources and data. For each instance of a resource that is shared outside of your account, Access Analyzer generates a finding. Findings include information about the access and the external principal that it is granted to. You can review findings to determine whether the access is intended and safe, or the access is unintended and poses a security risk.

## 

**Why use Access Analyzer for monitoring access in Amazon S3?**

Access Analyzer for S3 alerts you to S3 buckets that are configured to allow access to anyone on the internet or other AWS accounts, including AWS accounts outside of your organization.

![[Pasted image 20260422175337.png]]


---

Lesson 11 of 15

# Using Access Analyzer for Amazon S3

## 

**Requirements for using Access Analyzer**

In order to use AWS IAM Access Analyzer, you need to:

- Enable Access Analyzer.
- Give Access Analyzer the proper permissions.

### 

**IAM permissions for Access Analyzer**

To successfully configure and use Access Analyzer, the account you use must be granted the required permissions. To access and use all Access Analyzer features, you can apply the **IAMAccessAnalyzerFullAccess** managed policy to the account.

**Additional information**

For a full list of the different permissions required for all Access Analyzer features, choose the button.

[PERMISSIONS(OPENS IN A NEW TAB)](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#access-analyzer-permissions)

**Additional information**

For additional details on setting up your account or AWS Organization organization to use Access Analyzer, choose the button.

[SETTING UP ACCESS...(OPENS IN A NEW TAB)](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html)

## 

****Access Analyzer findings****

For each public or shared bucket, you receive findings into the source and level of public or shared access. Each time a resource-based policy is modified, Access Analyzer analyzes the policy. If the updated policy shares a resource that is already identified in a finding, but with different permissions or conditions, a new finding is generated for that instance of the resource sharing. If the access in the first finding is removed, that finding is updated to Resolved status.

### 

**Components of an Access Analyzer for S3 finding**

To learn more, select the + symbol next to each category.

Bucket name

–

The resource (S3 bucket) of the finding.

Discovered by Access Analyzer

–

When Access Analyzer for S3 discovered the public or shared bucket access.

Shared through

–

How the bucket is shared—through a bucket policy, a bucket ACL, or an access point policy. A bucket can be shared through both policies and ACLs.

Status

–

The status of the bucket finding. Access Analyzer for S3 displays findings for all public and shared buckets.

- Active ‐ Finding has not been reviewed.
    
- Archived ‐ Finding has been reviewed and confirmed as intended.
    
- Resolved - Finding has been reviewed and unintended access has been resolved. (Does not show up in Amazon S3 console).
    
- All ‐ All findings for buckets that are public or shared with other AWS accounts, including AWS accounts outside of your organization.
    

Access level

–

Access permissions granted for the bucket:

- List ‐ List resources.
    
- Read ‐ Read but not edit resource contents and attributes.
    
- Write ‐ Create, delete, or modify resources.
    
- Permissions ‐ Grant or modify resource permissions.
    
- Tagging ‐ Update tags associated with the resource.
    

## 

****Reviewing access policies****

When using Access Analyzer to analyze Amazon S3 resources, findings can be found both in the AWS IAM console under **Access Analyzer**, and in the Amazon S3 console under **Access Analyzer for S3**. Resolved findings will not show up in the Amazon S3 console, but you can view them in the AWS IAM console.

You should review all active findings in your account to determine whether the permissions are intended. 

Select a finding to view the permissions that are causing the alert.


![[Pasted image 20260422175523.png]]

### 

**Changing bucket access**

To learn about a category, select the appropriate tab.

BUCKET ACLBUCKET POLICYACCESS POINT POLICY

1. In the Amazon S3 console, select the bucket you would like to update.
    
2. Select **Permissions**.
    
3. Select **Edit** in the **Access Control List** box.
    
4. Review your bucket ACL, and make changes as required.
    
    For more information, see [How do I set ACL bucket permissions?(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/set-bucket-permissions.html).

BUCKET  POLICY
### 

**Changing bucket access**

To learn about a category, select the appropriate tab.

BUCKET ACLBUCKET POLICYACCESS POINT POLICY

1. In the Amazon S3 console, select the bucket you would like to update.
    
2. Select **Permissions**.
    
3. Select **Edit** in the **Access Control List** box.
    
4. Review your bucket ACL, and make changes as required.
    
    For more information, see [How do I set ACL bucket permissions?(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/set-bucket-permissions.html).


ACCESS POINT  POLICY

1. In the Amazon S3 console, select the bucket you would like to update.
2. Select **Access points**.
    
3. Choose the access point name.
    
4. Select **Edit policy**.
    
5. Review or change access as required.
    
    For more information, see [Managing and using Amazon S3 access points(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/access-points-manage.html).


Once you update the resource, the status for the finding will update to **Resolved**. Once you get to zero active findings, you know that any new active findings that are generated are from a recent change in your environment.

### 

**Blocking public access**

Access Analyzer for Amazon S3[(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/access-analyzer.html#blocking-public-access-access-analyzer) also lets you quickly and easily block all public access for an S3 bucket. In the Amazon S3 console, select **Access analyzer for S3** under **Dashboards**. There, choose the S3 bucket and then select **Block all public access.**

**Additional information**

For further information on using Access Analyzer to block all public access, choose the button.

[BLOCK PUBLIC ACCE...(OPENS IN A NEW TAB)](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/access-analyzer.html#blocking-public-access-access-analyzer)

![[Pasted image 20260422180048.png]]


https://www.youtube.com/watch?v=5ipJtR7uKUs

Lesson 12 of 15

# Introduction to AWS Trusted Advisor

You now know how to log events from your Amazon S3 account and how to be notified of potential security risks to your Amazon S3 buckets. The next step would be to make sure your Amazon S3 account compares well against AWS best practice checks.

![[Pasted image 20260422180236.png]]

By the end of this section, you will be able to:

- bullet
    
    Use AWS Trusted Advisor to scan your configuration and give you recommendations.
    
- bullet
    
    Integrate Trusted Advisor with Amazon CloudWatch to detect and react to changes.
    

## 

**What is Trusted Advisor?**

AWS Trusted Advisor is an online tool that gives you guidance to ensure you are following AWS best practices from security, performance, fault tolerance, service limits, and cost optimization perspectives.

AWS Trusted Advisor draws upon best practices learned from serving hundreds of thousands of AWS customers. Trusted Advisor inspects your AWS environment, and makes recommendations when opportunities exist to save money, improve system availability and performance, or help close security gaps.

Trusted Advisor checks compare your AWS configuration to best practices related to:

- Cost optimization
- Security
- Fault tolerance
- Performance
- Service limits

## 

**Why use Trusted Advisor?**

Trusted Advisor scans your configuration and provides recommendations based on best practices, from security, performance, and cost savings perspectives. The tool contains a dashboard with findings that give you detailed descriptions of how to improve your AWS configuration.

You can also sign up for weekly email notifications summarizing your saving estimates and the current status of your Trusted Advisor checks. Sign up for these notifications by navigating to the Trusted Advisor console and selecting **Preferences**.

![[Pasted image 20260422180330.png]]


## 

**Integration of Trusted Advisor with CloudWatch**

You can use Amazon CloudWatch Events to detect and react to changes in the status of Trusted Advisor checks. Then, based on the rules that you create, CloudWatch Events invokes one or more target actions when a check status changes to the value you specify in a rule. Depending on the type of status change, you might want to send notifications, capture status information, take corrective action, initiate events, or take other actions.

You can select the following types of targets when using CloudWatch Events as a part of your Trusted Advisor workflow:

- AWS Lambda functions
    
- Amazon Kinesis streams
    
- Amazon Simple Queue Service (Amazon SQS) queues
    
- Built-in targets (CloudWatch alarm actions)
    
- Amazon Simple Notification Service (Amazon SNS) topics
    

  

**Additional information**

For information on how to set up Amazon CloudWatch Events to react to Trusted Advisor checks, choose the button.


---


Lesson 13 of 15

# Using Trusted Advisor for Amazon S3

AWS Trusted Advisor has best practice checks that are specific to Amazon S3.

To learn more, select the + symbol next to each category.

Amazon S3 bucket permissions

–

Amazon S3 bucket permissions check for buckets in Amazon S3 that have open access permissions. 

  

Bucket permissions that grant List access to everyone can result in higher than expected charges if objects in the bucket are listed by unintended users at a high frequency. Bucket permissions that grant Upload/Delete access to everyone create potential security vulnerabilities by allowing anyone to add, modify, or remove items in a bucket. This check examines explicit bucket permissions and associated bucket policies that might override the bucket permissions.

Amazon S3 bucket logging

–

Amazon S3 bucket logging checks the logging configuration of Amazon S3 buckets. 

  

When server access logging is enabled, detailed access logs are delivered hourly to a bucket that you choose. An access log record contains details about each request, such as the request type, the resources specified in the request, and the time and date the request was processed. By default, bucket logging is not enabled. You should enable logging if you want to perform security audits or learn more about users and usage patterns.

Amazon S3 bucket versioning

–

Amazon S3 bucket versioning checks for Amazon S3 buckets that do not have versioning enabled, or have versioning suspended. 

  

When versioning is enabled, you can easily recover from both unintended user actions and application failures. Versioning allows you to preserve, retrieve, and restore any version of any object stored in a bucket. You can use lifecycle rules to manage all versions of your objects as well as their associated costs by automatically archiving objects to the Glacier storage class or removing them after a specified time period. You can also choose to require multi-factor authentication (MFA) for any object deletions or configuration changes to your buckets.



