

Lesson 2 of 18

# 

Overview of Amazon S3

### 

**What is Amazon S3?**

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/icon_s3.png)

Amazon S3 is an object storage service that stores data as objects inside buckets. An object is a file and any metadata that describes the file. A bucket is a container for objects.  
  
To store data in Amazon S3, create a bucket and specify a bucket name and AWS Region. Then, upload data to that bucket as objects in Amazon S3. Each object has a key (or key name), which is the unique identifier for the object in the bucket.  
  

  
Buckets and the objects in them are private and can be accessed only through explicit grant access permissions. Use bucket policies, AWS Identity and Access Management (IAM) policies, access control lists (ACLs), and S3 Access Points to manage access.

### 

****What are some benefits of **Amazon S3**?**  
**

Amazon S3 provides a simple web service interface that you can use to store and retrieve any amount of data, at any time, from anywhere. Using this service, you can quickly build applications that make use of cloud-native storage. Amazon S3 is highly scalable, and you only pay for what you use. This means that you can start small and grow your application as you wish, with no compromise on performance or reliability.

### 

**What are the important concepts and terminology?**

## 

Buckets

Buckets are containers for objects stored in Amazon S3. You can store any number of objects in a bucket, with up to 100 buckets in your account.

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/2tp2bo/icon_s3.png)

## 

Objects
Objects are entities stored in Amazon S3. Objects consist of object data and metadata. The metadata is a set of name-value pairs that describe the object. Object keys are the unique identifiers for an object inside a bucket. Every object in a bucket has exactly one key. The combination of a bucket, object key, and, optionally, version ID (if Amazon S3 versioning is activated for the bucket) uniquely identifies each object.
## 

ACLs
ACLs grant read/write permissions for individual buckets and objects to authorized users. Each bucket and object has an ACL attached as a subresource. The ACL defines which AWS accounts or groups are granted access and the type of access.
## 

Access points
Access points are named network endpoints with dedicated access policies that describe how data can be accessed using that endpoint. They can help manage data access at scale for shared datasets in Amazon S3. Access points are named network endpoints attached to buckets that you can use to perform Amazon S3 object operations.

---

Lesson 4 of 18

# 

Monitoring Amazon S3

### 

**How can I monitor the activity of my Amazon S3 object storage?**

Several automatic and manual features are available to monitor Amazon S3 object storage.

1. 1
    
    Amazon CloudWatch Alarms – Monitor a specific metric over a time period, and perform one or more actions based on the value of the metric relative to a given threshold over a number of time periods.
    
2. 2
    
    AWS CloudTrail Log Monitoring – Share log files between accounts, monitor CloudTrail log files in real time by sending them to Amazon CloudWatch Logs, write log processing applications, and validate that log files have not changed after delivery by CloudTrail.
    
3. 3
    
    Amazon S3 dashboard – View your buckets, including the objects and properties they contain.
    
4. 4
    
    CloudWatch home page – Access current alarms and status, graphs of alarms and resources, and service health status. Using this page, you can create customized dashboards, locate graphs of metric data to troubleshoot issues and discover trends, search and browse all your AWS resource metrics, and create and edit alarms.
    
5. 5
    
    AWS Trusted Advisor – Monitor AWS resources, including checks of the logging configuration of S3 buckets, security checks for S3 buckets that have open access permissions, and fault tolerance checks for S3 buckets that do not have versioning activated or have versioning suspended.
    

### 

What are some basic metrics I can gather?

Here is an example of basic metrics measured through Amazon S3. To learn about available metrics, choose each of the following three tabs.

RESPONSE TIMES



The following screenshot shows how you can investigate the difference between p99 (99th percentile) and p100 (100th percentile). Latency metrics often have a long tail, and p100 metrics can give an unclear picture of what the majority of your customers are experiencing.  
  
Here, in the p99 case, the total request latency is staying around 140ms, although the p100 shows spikes of 36 seconds. Before you might have seen a max latency like this without knowing that 99 percent (or 99.9 percent) of users experienced significantly better results. Customers with bad network connections, downloading of very large files, or unexpected latency within Amazon S3 could be the cause of spikes in this graph

![[Pasted image 20260422165224.png]]


FILTERING
To view metrics based on filters, select the BucketName and FilterId.
![[Pasted image 20260422165243.png]]


ALARMS

To set up an alarm against a given metric, choose the bell icon next to the metric. This takes you to a screen that shows the metric, where you can set up conditions.

![[Pasted image 20260422165257.png]]


### 

**How can I monitor the activity of my Amazon S3 object storage?**

You can record the actions that are taken by users, roles, or AWS services on Amazon S3 resources and maintain log records for auditing and compliance purposes. To do this, you can use server access logging, CloudTrail logging, or a combination of both. We recommend that you use CloudTrail to log bucket and object-level actions for your Amazon S3 resources.  
  
The following table lists the key properties of CloudTrail logs and Amazon S3 server access logs. Review the table and notes to ensure that CloudTrail meets your security requirements.

|Log Properties|CloudTrail|Amazon S3 server logs|
|---|---|---|
|Can be forwarded to other systems (CloudWatch Logs, CloudWatch Events)|Yes||
|Deliver logs to more than one destination (for example, send the same logs to two different buckets)|Yes||
|Turn on logs for a subset of objects (prefix)|Yes||
|Cross-account log delivery (target and source bucket owned by                            different accounts)|Yes||
|Integrity validation of log file using digital signature/hashing|Yes||
|Default/choice of encryption for log files|Yes||
|Object operations (using Amazon S3 APIs)|Yes|Yes|
|Bucket operations (using Amazon S3 APIs)|Yes|Yes|
|Searchable UI for logs|Yes||
|Fields for Object Size, Total Time, Turn-Around Time, and HTTP Referer for log records||Yes|
|Lifecycle transitions, expirations, restores||Yes|
|Logging of keys in a batch delete operation||Yes|
|Authentication failures||Yes|
|Accounts where logs get delivered|Bucket owner, and requester|Bucket owner only|

---

### 

**Monitoring tool documentation**

To view the documentation for each monitoring tool, choose from the following links.

  
**Amazon CloudWatch Alarms for your S3 object storage**  
To learn more about CloudWatch Alarms, choose the following button.

[GO TO PAGE](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cloudwatch-monitoring.html)

  
**AWS CloudTrail Log Monitoring for your S3 object storage**  
To learn more about CloudTrail Log Monitoring, choose the following button.

[GO TO PAGE](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cloudtrail-logging.html)

**Amazon S3 dashboard for your S3 object storage**  
To learn more about the Amazon S3 dashboard, choose the following button.

[GO TO PAGE](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html)

  
**Amazon CloudWatch home page for your S3 object storage**  
To learn more about the CloudWatch home page, choose the following button.

[GO TO PAGE](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Dashboards.html)

  
**AWS Trusted Advisor for your S3 object storage**  
To learn more about AWS Trusted Advisor, choose the following button.

[GO TO PAGE](https://aws.amazon.com/premiumsupport/trustedadvisor/)

### 

**Logging options for Amazon S3**

**Logging requests using server access logging**  
To learn more about logging requests, choose the following button.

[GO TO PAGE](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerLogs.html)

**Logging Amazon S3 API calls using AWS CloudTrail**  
To learn more about logging Amazon S3 API calls, choose the following button.


---

Lesson 5 of 18

# 

General Problem Determination

### 

How do I determine my problem?

To learn about the general steps to follow for problem determination, choose each of the following seven tabs.

## Problem determination 

Many problems are common and well documented so that identification of the issue based on symptoms and the solution are straightforward. Here are the first steps to follow when troubleshooting a problem.

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/8FZ_PPEKJYy9gXmd_UWrYmcaFZJTm4Koh.png)

## 

Step 1: Identify problem

Try to categorize the problem based on characteristic symptoms:

- What error message is the administrator seeing on the console or in log files?
- Are customers getting error messages in their browsers? 
- What messages or error codes are users getting?

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/81KRQ1LHZGsAAyNZ_a58WCZlvhHWP9LtW.png)

## 

Step 2: Collect data

Gather diagnostic data after the fact or reproduce the problem to gather logs, trace data, and so forth. If you have various logging, tracing, and monitoring features turned on for your service, then you will have diagnostic data available when a problem occurs.

  

Otherwise, you might have to set up these diagnostic features and reproduce the problem, if possible.

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/kRTtFN0ayLStkJMX_BCvSX9OWFEMHLjXN.png)

## 

Step 3: Analyze data

Analyze data to pinpoint one or more possible root causes. Sometimes you can manually search the relevant log files and tracing data.

  

For Amazon S3, you can configure Amazon CloudWatch alarms or AWS CloudTrail logging. For more information, see [Monitoring metrics with Amazon CloudWatch(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cloudwatch-monitoring.html).

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/bYYyUhZOg1-O1xyg_rHSJcbljLcufwV1k.png)

## 

Step 4: Review documentation

Search the product and service documentation for known issues and solutions. Start by exploring the multiple resources provided throughout this course.

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/BJ5Egh/bYYyUhZOg1-O1xyg_rHSJcbljLcufwV1k.png)

## 

Step 5: Try known solutions

Apply the documented solutions one at a time, and test. For a series of proposed fixes, apply them one at a time, and then test until the problem is fixed.

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/jsZde5DYeQyhEo8x_gPO_MbPdSsDlByFh.png)

## 

What else can I try?

  

If you exhaust all the known issues and solutions without success, try the following:

- Post your issue to [AWS re:Post(opens in a new tab)](https://repost.aws/topics/TAgOdRefu6ShempO3dWPEofg/containers?sc_ichannel=ha%E2%89%BBilang=en%E2%89%BBisite=repost%E2%89%BBiplace=hp%E2%89%BBicontent=TAgOdRefu6ShempO3dWPEofg%E2%89%BBipos=2). AWS re:Post is a community-driven, question-and-answer service to help AWS customers remove technical roadblocks and troubleshoot problems.
- Engage with [AWS IQ(opens in a new tab)](https://iq.aws.amazon.com/) to post a request for help by an AWS Certified expert. Pay through AWS.
- Subscribe to an AWS Support Plan, and open a case.
    - Select a support plan that meets your needs. [Compare AWS Support Plans(opens in a new tab)](https://aws.amazon.com/premiumsupport/plans/).
    - Submit your case, along with any data you gathered.

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/B7Ya0UnbPH5DTlRk_IAkkKCU55S_2Ryx-.png)

In the remaining lessons, you will learn how to apply this methodology to Amazon S3 issues that you might encounter.


---

Lesson 6 of 18

# 

Troubleshooting 403 HTTP Errors

### 

**Troubleshooting** **HTTP Status Code 403: Error Message – Access Denied  
**

When you try to run an operation or API call on a bucket or its objects, Amazon S3 could return a 403 Access Denied error. This means that the requester does not have permission to perform that operation. The request operation could be performed using an IAM user, IAM role, or a service assuming a role defined in the account where it is running from. You would encounter a 403 error only when the request has reached Amazon S3, which performed an evaluation and did not permit that operation.

Examples of troubleshooting methods include the following:

1. 1
    
    Checking the IAM and bucket policies
    
2. 2
    
    Checking bucket settings
    
3. 3
    
    Checking AWS Organizations service control policy
    
4. 4
    
    Checking interface or gateway virtual private cloud (VPC) endpoints 
    
5. 5
    
    Other checks
    

### 

********Video demonstration: How do I troubleshoot 403 Access Denied errors from Amazon S3?********

To begin the video, choose the play button. A transcript is provided following the video.

Hello, I’m Sukdeb, a cloud support engineer here at the AWS office in Sydney, Australia. Today I’m going to show you how users can troubleshoot 403 Access Denied from Amazon Simple Storage Service, which is a common error, but there can be a wide variety of reasons you are denied while trying to access an object in Amazon S3. Let’s get started.  
  

As I told earlier, there can be a wide variety of reasons for 403 Access Denied error from Amazon S3. Here’s the list of possibilities to take a look at:

- Bucket and object ownership
- Bucket policy or AWS Identity and Access Management (IAM) user policies
- IAM permissions boundaries
- Amazon S3 block public access settings
- Credentials to access Amazon S3
- Temporary security credentials
- Amazon Virtual Private Cloud (Amazon VPC) endpoint policy
- Amazon S3 access point policy
- Missing object or object with a special character
- AWS Key Management Service (AWS KMS) encryption
- Requester Pays enabled on bucket
- AWS Organizations service control policy

1. Let’s check the bucket ownership first, By default, an S3 object is owned by the AWS account that uploaded it even when the bucket is owned by another account. If you run “aws s3api list-objects --bucket web-demo-dsukdeb” from terminal, you’ll see the details about the bucket, including the owner.  
      
    Make sure the canonical ID matches with the output of the command “aws s3api list-buckets --query Owner.ID”. If they match, then you know who is the bucket owner. After the object owner changes the object's ACL to bucket-owner-full-control, the bucket owner can then access the object. Note that other AWS accounts, such as a third AWS account, can't access this object until object owner update grants permission to third AWS account by updating the object ACL. Customer can use the S3 object ownership feature to change the object ownership or recopy the object will change the object ownership.
2. The next checklist to review is bucket policy attached to the bucket. Check for any incorrect deny statements, missing actions, or incorrect spacing in a policy.  
      
    Here is an example of a bucket policy that allows public access to download object from this S3 bucket from “DOC-EXAMPLE-BUCKET”. However, statement 2 explicitly denies everyone to download object from “DOC-EXAMPLE-BUCKET” unless the request is coming from vpce- 1a2b3c4d.  
      
    **{  
    "Id": "Policy1234567890123",  
    "Version": "2012-10-17",  
    "Statement": [  
    {  
    "Sid": "Statement1",  
    "Action": [  
    "s3:GetObject"  
    ],  
    "Effect": "Allow",  
    "Resource": "arn:aws:s3:::DOC-EXAMPLE-BUCKET/*",  
    "Principal": "*"  
    },  
    {  
    "Sid": "Statement2",  
    "Action": [  
    "s3:GetObject"  
    ],  
    "Effect": "Deny",  
    "Resource": "arn:aws:s3:::DOC-EXAMPLE-BUCKET/*",  
    "Condition": {  
    "StringNotEquals": {  
    "aws:SourceVpce": "vpce-1a2b3c4d"  
    }  
    },  
    "Principal": "*"  
    }  
    ]  
    }  
    **  
    Check what level of action the user is provided. Here S3:GetObject is allowed for all users' requests coming through vpce-1a2b3c4d. But remember, they aren’t allowed to run any other action like S3:PutObject if they aren’t in the policy actions.  
      
    In the following policy, user Dave from account 111122223333 is allowed to upload object into the S3 bucket. This means that he will be denied with 403 if he tries to download objects from S3 bucket.  
      
    **{  
    "Id": "Policy1234567890123",  
    "Version": "2012-10-17",  
    "Statement": [  
    {  
    "Sid": "Stmt1234567890123",  
    "Action": [  
    "s3:PutObject"  
    ],  
    "Effect": "Allow",  
    "Resource": "arn:aws:s3:::DOC-EXAMPLE-BUCKET/*",  
    "Principal": {  
    "AWS": [  
    "arn:aws:iam::111122223333:user/Dave"  
    ]  
    }  
    }  
    ]  
    }  
      
    **  
      
    Check for any syntax errors in the bucket describing AWS resources, such as "Resource": "arn:aws:s3::: DOC-EXAMPLE-BUCKET/*". In this example, the bucket ARN has extra spaces, so the bucket is evaluated incorrectly.
3. Go to the IAM service from the AWS Management Console, and then check if the user is allowed to access Amazon S3 in its IAM permissions boundary.
4. If your users are getting Access Denied errors on public read requests that should be allowed, check the bucket's Amazon S3 block public access settings. These settings can override permissions that allow public read access. Amazon S3 Block Public Access can apply to individual buckets or AWS accounts.
5. Check that the credentials that you’ve configured to access Amazon S3 are correct in your AWS SDKs and AWS CLI – they must be configured to your IAM user or role. You can run “aws configure list” to get the AWS CLI profile configurations. If you are not sure, you can run “aws sts get-caller-identity” to see who is the current AWS CLI sessions owner.
6. If users receive Access Denied errors from temporary security credentials granted using AWS Security Token Service, then review the associated policy. For example, the following snippet of a CloudTrail log shows that the temporary credentials include an inline session policy that grants s3:GetObject permissions to DOC-EXAMPLE-BUCKET:  
      
    **"requestParameters": {  
    "roleArn": "arn:aws:iam::123412341234:role/S3AdminAccess",  
    "roleSessionName": "s3rolesession",  
    "policy": "{\n \"Version\": \"2012-10-17\",\n \"Statement\": [\n {\n \"Effect\": \"Allow\",\n  
    \"Action\": [\n \"s3:GetObject\"\n ],\n \"Resource\": [\n \"arn:aws:s3:::DOC-EXAMPLE-BUCKET/*\"\n ]\n } }\n ]\n}\n"  
    }**  
      
      
    
7. If users access your bucket with an Amazon Elastic Compute Cloud instance routed through a VPC endpoint, then check the VPC endpoint policy. Make sure that the VPC endpoint policy includes the correct permissions to access your S3 buckets and objects.  
      
    For example, the following VPC endpoint policy allows access only to DOC-EXAMPLE-BUCKET. Users that send requests through this VPC endpoint can’t access any other bucket.  
    Note that because it’s a temporary credential that we used to access the object in S3, the credential has an expiration time.  
      
    **{  
    "Id": "Policy1234567890123",  
    "Version": "2012-10-17",  
    "Statement": [  
    {  
    "Sid": "Stmt1234567890123",  
    "Action": [  
    "s3:GetObject",  
    "s3:PutObject",  
    "s3:ListBucket"  
    ],  
    "Effect": "Allow",  
    "Resource": [  
    "arn:aws:s3:::DOC-EXAMPLE-BUCKET",  
    "arn:aws:s3:::DOC-EXAMPLE-BUCKET/*"  
    ],  
    "Principal": "*"  
    }  
    ]  
    }  
      
    **
8. If you use an Amazon S3 access point to manage access to your bucket, then review the access point's IAM policy. Confirm that the policy grants the correct permissions.
    
9. Check if the requested object exists in the bucket. Also note that an object that has a special character (such as a space) requires special handling to retrieve the object. Otherwise, the request doesn't find the object and Amazon S3 assumes that the object doesn't exist.  
      
    Run the head-object AWS CLI command to check if an object exists in the bucket:  
    **aws s3api head-object --bucket DOC-EXAMPLE-BUCKET --key exampleobject.jpg**  
    Note S3 permission isn’t granted to an IAM user/role, so if that IAM user/role tried to access object which doesn’t exist in the S3 bucket, then S3 will throw a 403 error to hide the object’s existence status to those users/role.
10. If an IAM user can’t access an object that the user has full permissions to, then check if the object is encrypted by Customer Managed Keys. You can use the S3 console to check the object encryption information. If object is CMK encrypted, you need to make sure that the CMK key policy grants permission to the IAM users with the following actions:  
    **  
    "Action": [  
    "kms:Encrypt",  
    "kms:Decrypt",  
    "kms:ReEncrypt*",  
    "kms:GenerateDataKey*",  
    "kms:DescribeKey"  
    ]**
    
11. Check if Requester Pays is enabled on the bucket. If it is true, then you must specify the request-payer parameter when you send a request to the S3 bucket:
    
12. Last checklist is to verify if any service control policies (SCP) are imposed from AWS Organizations. Make sure with your administrator if there is any S3 policy with an explicit deny. Here is an example of an SCP that blocks access to Amazon S3 from AWS Organizations.  
      
    **{  
    "Version": "2012-10-17",  
    "Statement": [  
    {  
    "Effect": "Deny",  
    "Action": "s3:*",  
    "Resource": "*"  
    }  
    ]  
    }**
    

Thanks for watching, and happy cloud computing from all of us here at AWS!


---
Lesson 7 of 18

# 

1. Checking IAM and Bucket Policies

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/icon_IAM.png)

To start, collect the IAM user or role policy of the IAM user or role principal used to perform the operation or API call. An AWS root account has all the permissions. An anonymous user has no permissions at all, unless permission is given in the bucket policy by specifying the principal as _*._  
  
You would also gather the S3 bucket policy, which is the resource policy of the S3 bucket. Then, if needed, you may require other entities that are placed in the path of access and its related information. To learn more about account access, choose from the following two tabs.

SAME-ACCOUNT ACCESS



If the IAM user or role belongs to the same account as the S3 bucket, then it is enough if the permissions are defined in either IAM policy or the resource or bucket policy. The first step is to check if both the policies have any explicit _Deny_ statements defined that would deny the action being performed. Then, check if the action for the operation being performed is explicitly allowed in either of these two policies.  
  
Having explicit _Allow_ for the action does not ensure permission to perform the operation since other policies could supersede same-account access permissions.

CROSS-ACCOUNT ACCESS

If the IAM user or role is from another account, define the explicit permission in the IAM policy and the explicit allow permission in the bucket policy.  
  
Look for any _Deny_ statements in both policies. Find out if these statements (if any) deny access to the bucket for the principal used or for the operation being made. Check for any conditions that could interfere with the operation being made. Explicit _Deny_ statements on the principal or action take precedence over any number of _Allow_ statements in both these policies combined. So, as a first step, look for _Deny_ statements in both policies.

  

In some cases, there could be a large number of _Deny_ statements that could confuse or make it complex to explain which exact _Deny_ statement actually denied the request. One of the methods to identify the exact _Deny_ statement that caused the 403 error is trial and error. Take a backup of the bucket policy. Then, remove the _Deny_ statement(s) one by one after each test, until you are able to successfully make the operation which was denied earlier. After that, put back the _Deny_ statements one by one to find the exact _Deny_ statement that is denying the request. In this case, test means to reinitiate the operation that is being denied to check if it succeeds now or not.

## 

**What are examples of _Deny_ statements?**

The following are examples of _Deny_ statements. Each _Deny_ statement is followed by a code example. To access the code example, expand each section.

### 

**Deny example 1**

The policy explicitly denies all actions on the bucket and objects when the request meets the condition "aws:SecureTransport": "false" (when the request is HTTP). To access a code example, expand the following section.

## 

Code example

{  
"Sid": "AllowSSLRequestsOnly",  
"Action": "s3:*",  
"Effect": "Deny",  
"Resource": [  
"arn:aws:s3:::mybucket",  
"arn:aws:s3::: mybucket/*"  
],  
"Condition": {  
"Bool": {  
"aws:SecureTransport": "false"  
}  
},  
"Principal": "*"  
}

### 

**Deny **example 2****

The policy denies all PutObject calls from the specified account to the bucket that do not have this canned acl "bucket-owner-full-control". To access a code example, expand the following section.

## 

Code example

{  
"Sid": "PolicyForAllowUploadWithACL",  
"Effect": "Allow",  
"Principal": {  
"AWS": "111122223333"  
},  
"Action": "s3:PutObject",  
"Resource": "arn:aws:s3::: mybucket/*",  
"Condition": {  
"StringEquals": {  
"s3:x-amz-acl": "bucket-owner-full-control"  
}  
}  
}

### 

**Deny example 3**

The policy denies all access to the bucket if the specified endpoint "vpce-1a2b3c4d" is not being used. To access a code example, expand the following section.

## 

Code example

{  
"Sid": "Access-to-specific-VPCE-only",  
"Principal": "*",  
"Action": "s3:*",  
"Effect": "Deny",  
"Resource": "arn:aws:s3:::mybucket/*",  
"Condition": {  
"StringNotEquals": {  
"aws:SourceVpce": "vpce-1a2b3c4d"  
}  
}  
}

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/3Wvf7V/backgroud_storageB.png)

**An AWS root account has all the permissions. An anonymous user has no permissions at all, unless permission is given in the bucket policy by specifying the principal as _*._**

## 

****Anonymous access**  
**

When a request is not signed, it is called an anonymous request. That means the requester did not use IAM credentials, access key and secret key, to make a request to Amazon S3 by signing it (using the sigv4 method). By default, anonymous requests are denied. The only place where an anonymous requester is provided access is through the bucket policy. The bucket policy must have an explicit _Allow_ that provides access to the anonymous user.

### 

**Anonymous example 1**

The policy grants the s3:GetObject permission to any public anonymous users. To access a code example, expand the following section.

## 

Code example

{  
"Version": "2012-10-17",  
"Statement": [  
{  
"Sid": "PublicRead",  
"Effect": "Allow",  
"Principal": "*",  
"Action": [  
"s3:GetObject  
],  
"Resource": [  
"arn:aws:s3:::mybucket/*"  
]  
}  
]  
}

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/3Wvf7V/backgroud_storageB.png)

**The only place where an anonymous requester is provided access is through the bucket policy.** 

## 

****Permission boundaries**  
**

A permissions boundary is an advanced feature for using a managed policy to set the maximum permissions that an identity-based policy can grant to an IAM entity. An entity's permissions boundary allows it to perform only the actions that are allowed by both its identity-based policies and its permissions boundaries.  
Are any permission boundaries configured in the IAM policy? If yes, then make sure the permission boundaries allow that IAM user or role to perform the action being denied.

## 

****MFA restrictions****

Check if the IAM policy or bucket policy restricts access to the bucket or objects by requiring users to use a multi-factor authentication (MFA) device.

### 

**MFA Deny example 1**

The policy above explicitly denies access to the production bucket if the user has not signed in using MFA in the last 30 minutes. To access a code example, expand the following section.

## 

Code example

{  
"Sid": "RequireMFAForProductionBucket",  
"Effect": "Deny",  
"Action": "s3:*",  
"Resource": [  
"arn:aws:s3:::Production/*",  
"arn:aws:s3:::Production"  
],  
"Condition": {  
"NumericGreaterThanIfExists": {  
"aws:MultiFactorAuthAge": "1800"  
}  
}  
}


### 

**MFA Deny example 2**

This policy denies users from performing the s3:PutObject, s3:PutObjectAcl, and s3:DeleteObject actions without MFA. To access a code example, expand the following section.

## 

Code example

{  
"Sid": "Stmt201612130001ab",  
"Effect": "Deny",  
"Principal": {  
"AWS": "arn:aws:iam::111122223333:root"  
},  
"Action": [  
"s3:PutObject",  
"s3:PutObjectAcl",  
"s3:DeleteObject"  
],  
"Resource": "arn:aws:s3:::example.accounta.bucket/*",  
"Condition": {  
"BoolIfExists": {  
"aws:MultiFactorAuthPresent": "false"  
}  
}  
 }

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/3Wvf7V/backgroud_storageB.png)

**Check if the IAM policy or bucket policy restricts access to the bucket or objects by requiring users to use a multi-factor authentication (MFA) device.**

## 

****Session policy**  
**

It is possible to use a session policy while assuming an IAM role. A session policy is an inline policy that you can create on the fly and pass in the session during role assumption to further scope the permissions of the role session. The effective permissions of the session are the intersection of the role’s identity-based policies and the session policy. The maximum permissions that a session can have are the permissions that are allowed by the role’s identity-based policies.

When an administrator creates temporary security credentials using the AssumeRole API call, or the assume-role command, they can pass session-specific policies. This session policy could have a _Deny_ statement that could be denying the action for the IAM role used. To find the session policies associated with the Access Denied errors from Amazon S3, look for AssumeRole events in the AWS CloudTrail event history.  
  
Be sure to search for **AssumeRole** events in the same timeframe as the failed requests to access Amazon S3. Then, review the **requestParameters** field in the relevant CloudTrail logs for any policy or **policyArns** parameters. Confirm that the associated policy or policy ARN grants the necessary Amazon S3 permissions.

**Session Policy**  
To learn more about creating fine-grained session permissions using IAM managed policies , choose the documentation button.

[GO TO BLOG](https://aws.amazon.com/blogs/security/create-fine-grained-session-permissions-using-iam-managed-policies/)

**Assume Role**  
To learn more about assume-role command, choose the following button.

[GO TO REF](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/sts/assume-role.html)

**Assume-Role Command**  
To learn more about assume-role action, choose the following button.

[GO TO API REFEREN...](https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html)

**AWS CloudTrail Event History**  
To learn more about viewing events with CloudTrail Event history, choose the following button.

[GO TO USER GUIDE](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events.html)

### 

**Policy grant example 1**

### 

**Policy grant example 1  
**

Confirm that the associated policy or policy Amazon Resource Name (ARN) grants the necessary Amazon S3 permissions. To access a code example, expand the following section.

## 

Code example

"requestParameters": {  
"roleArn": "arn:aws:iam::123412341234:role/S3AdminAccess",  
"roleSessionName": "s3rolesession",  
"policy": "{\n \"Version\": \"2012-10-17\",\n \"Statement\": [\n {\n \"Effect\": \"Allow\",\n  
\"Action\": [\n \"s3:GetObject\"\n ],\n \"Resource\": [\n \"arn:aws:s3:::mybucket/*\"\n ]\n } }\n ]\n}\n"  
    }

### 

****Where can I find additional 403 HTTP error resources?**** 

To access additional resources about gathering information, choose the following button.

**AWS Knowledge Center**  
To learn more, choose the documentation button.

[GO TO DOC](https://aws.amazon.com/premiumsupport/knowledge-center/s3-troubleshoot-403/)

---

Lesson 8 of 18

# 

2. Checking Bucket Settings

## 

**What are the default bucket encryption settings?**

The bucket might be configured with an AWS Key Management Service (AWS KMS) key as a default bucket encryption key. If so, check whether the IAM policy has the necessary permissions to access the AWS KMS key to encrypt or decrypt objects corresponding to the action being performed. This also applies to the situation where a different AWS KMS key ID is used to upload an object(s) to the bucket.

To learn more about AWS KMS (SSE-KMS) encryption scenarios, choose from the following four tabs.

ENCRYPTED BY SSE-KMS




AWS KMS KEY POLICY 
If the object is SSE-KMS encrypted, then make sure that the AWS KMS key policy grants the IAM user the minimum required permissions for using the key. For example, if the IAM user is using the key only for downloading an Amazon S3 object, then the IAM user must have kms:Decrypt permissions. For more information, see [Allows access to the AWS account and activates IAM policies.](https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-default.html#key-policy-default-allow-root-enable-iam)

KMS:DECRYPT PERMISSIONS
If the IAM identity and key are in the same account, then kms:Decrypt permissions should be granted using the key policy. The key policy must reference the same IAM identity as the IAM policy.

IAM POLICY
If the IAM user belongs to a different account than the AWS KMS key, then these permissions must also be granted on the IAM policy, see . For example, to download the SSE-KMS encrypted objects, the kms:Decrypt permissions must be specified in both the key policy and IAM policy. For more information about cross-account access between the IAM user and AWS KMS key, see [Allowing users in other accounts to use a KMS key(opens in a new tab)](https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html).

### 

Where can I find additional information on AWS KMS (SSE-KMS) encryption?

To learn more about AWS KMS (SSE-KMS) encryption, choose from the following buttons.

**Viewing object properties in the Amazon S3 console**  
To learn more about the viewing object properties in the Amazon S3 console, choose the following button.

[GO TO USER GUIDE](https://docs.aws.amazon.com/AmazonS3/latest/userguide/view-object-properties.html)

**AWS KMS (SSE-KMS) encryption**  
To learn more about protecting data using server-side encryption with AWS Key Management Service (SSE-KMS), choose the following button.

[GO TO DOC](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html)

**Changing permissions for an IAM user**  
To learn more about changing permissions for an IAM user, choose the following button.

[GO TO USER GUIDE](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_change-permissions.html)

**Key policies in AWS KMS**   
To learn more about key policies, choose the following button.

[GO TO DEV GUIDE](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)

**How to change a key policy**  
To learn more about changing a key policy, choose the following button.

[GO TO DEV GUIDE](https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying.html#key-policy-modifying-how-to)

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/YhyDhI/backgroud_storageB.png)

**The bucket might be configured with an AWS Key Management Service (AWS KMS) key as a default bucket encryption key.**

## 

**What are some other bucket settings I should be aware of?**

To further investigate other bucket setting that could be causing errors, expand the following three sections.

## 

Bucket public access block settings

If you're getting _Access Denied_ errors on public read requests that are allowed, check the bucket's Amazon S3 Block Public Access settings. Check these settings at both the account and bucket level. The settings can override permissions that allow public read access. Amazon S3 Block Public Access can apply to individual buckets or AWS accounts. For more information on Blocking public access to your Amazon S3 storage, see [Amazon S3 Block Public Access(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html).

## 

Access point IAM policy

If you use an Amazon S3 access point to manage access to your bucket, then review the access point's IAM policy. Permissions granted in an access point policy are only effective if the underlying bucket policy also allows the same access. Confirm that the bucket policy and access point policy grant the correct permissions. For more information access points, see [Amazon S3 access points(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html) and [access point's IAM policy(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-access-points.html#access-points-policies).
##

## 

Request payer setting

## 

Request payer setting

If your bucket has Requester Pays activated, then users from other accounts must specify the request-payer parameter when they send requests to your bucket. To check whether Requester Pays is activated, use the Amazon S3 console to view your bucket’s properties. For more information on how to view your bucket's properties, see [Viewing the properties for an S3 bucket(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/view-bucket-properties.html) and [using Requester Pays buckets for storage transfers and usage(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html).

### 

**Requester pay example 1  
**

The following example AWS CLI command includes the correct parameter to access a cross-account bucket with Requester Pays. To access a code example for requester pay, expand the following section.

## 

Code example

aws s3 cp exampleobject.jpg s3://DOC-EXAMPLE-BUCKET/exampleobject.jpg --request-payer requester

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/YhyDhI/backgroud_storageB.png)

**If you're getting _Access Denied_errors on public read requests that are allowed, check the bucket's Amazon S3 Block Public Access settings.**

## 

**What are the Object Ownership settings for a bucket?**

Object Ownership settings on a bucket define how a bucket should treat ACLs when a request is evaluated for access. There are three settings:

1. 1
    
    ACLs inactive – Bucket owner enforced (recommended)
    
2. 2
    
    ACLs active – Bucket owner preferred
    
3. 3
    
    ACLs inactive – Object writer (default)
    

### 

What happens when the ACLs are inactive?

When ACLs are inactive, ACLs no longer affect permissions to data in the S3 bucket. This means you can ignore this check and move to the next one. To learn more about object ownership, see [Controlling ownership of objects and deactivating ACLs for your bucket(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).

****Note:**** When you create a bucket using the console, the ACLs inactive setting is selected automatically.

### 

**What happens when the ACL is activated?**

When ACL is activated for AccessDenied errors from GetObject or HeadObject requests, check whether the object is also owned by the bucket owner. Also, verify whether the bucket owner has read or full control access control list (ACL) permissions. To learn more about controlling ownership of objects and deactivating ACLs for your bucket, see the [user guide(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).  
  
Confirm the account that owns the objects. By default, an Amazon S3 object is owned by the AWS account that uploaded it. This is true even when the bucket is owned by another account. If other accounts can upload objects to your bucket, then verify the account that owns the objects that your users can't access.

******Note:****** If you receive errors when running AWS CLI commands, make sure you’re using the most recent version of the AWS CLI.

**Troubleshooting AWS CLI errors**   
To learn more about troubleshooting AWS CLI errors, choose the following button.

[GO TO USER GUIDE](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-troubleshooting.html)

### 

**Canonical ID example 1**

Run the list-buckets AWS CLI command to get the Amazon S3 canonical ID for your account by querying the Owner ID. To learn more about this AWS CLI command, see the [AWS CLI command reference(opens in a new tab)](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3api/list-buckets.html).

## 

Code example

aws s3api list-buckets --query "Owner.ID"

### 

**Canonical ID example 2  
**

Run the list-objects command to get the Amazon S3 canonical ID of the account that owns the object that users can't access. Replace DOC-EXAMPLE-BUCKET with the name of your bucket and example prefix with your prefix value. To learn more about this AWS CLI command, see the [AWS CLI command reference(opens in a new tab)](https://docs.aws.amazon.com/cli/latest/reference/s3api/list-objects.html). To access a code example for requester pay, expand the following section.

## 

Code example

aws s3api list-objects --bucket mybucket --prefix exampleprefix  
  
**Tip:** Use the list-objects command to check several objects

### 

**Canonical ID example 3  
**

If the canonical IDs don't match, then you don't own the object. The object owner can grant you full control of the object by running the put-object-acl command. Replace DOC-EXAMPLE-BUCKET with the name of the bucket that contains the objects. Replace _exampleobject.jpg_ with your key name. To learn more about this AWS CLI command, see the [AWS CLI command reference(opens in a new tab)](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3api/put-object-acl.html). To access a code example for requester pay, expand the following section.

## 

Code example

aws s3api put-object-acl --bucket DOC-EXAMPLE-BUCKET --key exampleobject.jpg --acl bucket-owner-full-control


### 

What happens when the object owner changes the ACL to full control?

After the object owner changes the object's ACL to bucket-owner-full-control, the bucket owner can access the object. However, the ACL change alone doesn't change ownership of the object. To change the object owner to the bucket's account, run the cp command from the bucket's account to copy the object over itself. To learn more about this AWS CLI command, see the [AWS CLI command reference(opens in a new tab)](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3api/put-object-acl.html).

1. 1
    
    Set a bucket policy that requires objects to be uploaded with the bucket-owner-full-control ACL. To learn more about bucket policy, see the [user guide(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html#ensure-object-ownership). 
    
2. 2
    
    Activate and set Amazon S3 Object Ownership to Bucket Owner Preferred in the AWS Management Console. To learn more about Amazon S3 object ownership, see the [user guide(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-ownership-existing-bucket.html).
    

[(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html#ensure-object-ownership)The object's owner is then automatically updated to the bucket owner when the object is uploaded with the bucket-owner-full-control ACL.  
  
You can also create an IAM role with permissions to your bucket for ongoing cross-account permissions. Then, grant another AWS account the permission to assume that IAM role. For more information, see [Tutorial: Delegate access across AWS accounts using IAM roles(opens in a new tab)](https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html).

### 

****Where can I find additional 403 HTTP error resources?**** 

To access additional resources about gathering information, choose the following link.

**AWS Knowledge Center**  
To learn more, choose the documentation button. 

[GO TO DOC](https://aws.amazon.com/premiumsupport/knowledge-center/s3-troubleshoot-403/)

---
Lesson 9 of 18

# 

3. Checking AWS Organizations Service Control Policy

## 

How do I check AWS Organizations service control policy?

If you are using AWS Organizations, check the service control policies to make sure that access to Amazon S3 is allowed. Service control policies specify the maximum permissions for the affected accounts.

To list all of the policies in your organization using the AWS Management Console:

1. 1
    
    Sign in to the AWS Organizations console. You must sign in as an IAM user, assume an IAM role, or sign in as the root user (not recommended) in the organization’s management account. 
    
2. 2
    
    On the Policies page, choose the policy type that you want to list. If the specified policy type is activated, the console displays a list of all of the policies of that type that are currently available in the organization.
    
3. 3
    
    Return to the Policies page, and repeat for each policy type.
    

### 

****Where can I find additional 403 HTTP error resources?**** 

To access additional resources about gathering information, choose the following button.

**AWS Knowledge Center**  
To learn more, choose the documentation button. 

[GO TO DOC](https://aws.amazon.com/premiumsupport/knowledge-center/s3-troubleshoot-403/)


---

Lesson 10 of 18

# 

4. Checking Interface or Gateway VPC Endpoints

## 

How do I check the interface or gateway VPC endpoints?

The entities that stand in the path of access depend on the source of the request. Where is the request made from? Is it from a server in an on-premises location? Is it from an Amazon Elastic Compute Cloud (Amazon EC2) instance or from an AWS Lambda function? The function could be associated with a VPC or other AWS service that is assigned an IAM role.  
  
On-prem requests could be hitting the public endpoint of the S3 bucket directly. The request could also be flowing through an interface VPC endpoint or gateway VPC endpoint. If the request is hitting the public endpoint directly, then there are no other policies to check.  
  
If the request is through either an interface VPC endpoint or a gateway VPC endpoint, check the VPC endpoint policy. If the policy is a full access policy, then the VPC endpoint is not affecting the request. If it is a custom policy, ensure that the policy explicitly allows the right action for this principal.  
  
To get the VPC endpoint policy, follow these steps:

1. 1
    
    Open the Amazon VPC console.
    
2. 2
    
    In the navigation pane, choose **Endpoints.**
    
3. 3
    
    Select the endpoint from the list.
    
4. 4
    
    Choose **Policy** to view the VPC endpoint policy.
    

### 

****Where can I find additional 403 HTTP error resources?**** 

To access additional resources about gathering information, choose the following button.

**AWS Knowledge Center**  
To learn more, choose the documentation button. 

[GO TO DOC](https://aws.amazon.com/premiumsupport/knowledge-center/s3-troubleshoot-403/)

**AWS Console**  
To go directly to the AWS Console, choose the following button.

[GO TO CONSOLE](https://console.aws.amazon.com/vpc/)


---

Lesson 11 of 18

# 

5. Other Checks

## 

**How do I confirm that the object isn't missing an object or contains special characters?**

Check whether the requested object exists in the bucket. Otherwise, the request doesn't find the object, and Amazon S3 assumes that the object doesn't exist. You receive an Access Denied error (instead of 404 Not Found errors) if you don't have proper s3:ListBucket permissions.  
  
An object that has a special character (such as a space) requires special handling to retrieve the object. To learn more about object key names, see [Working with object metadata(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingMetadata.html).

### 

**Head object example 1  
**

Run the head-object AWS CLI command to check if an object exists in the bucket. Replace DOC-EXAMPLE-BUCKET with the name of the bucket that you want to check. To learn more about the HEAD action, see [AWS CLI Command Reference head-object description(opens in a new tab)](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3api/head-object.html). To access a code example, expand the following section.

## 

Code example

aws s3api head-object --bucket mybucket --key exampleobject.jpg

### 

What happens after I run the code?

If the **object exists in the bucket**, then the Access Denied error isn't masking a 404 Not Found error. Check other configuration requirements to resolve the Access Denied error.

If the **object isn’t in the bucket**, then the Access Denied error is masking a 404 Not Found error. Resolve the issue related to the missing object.

### 

****Where can I find additional 403 HTTP error resources?**** 

To access additional resources about gathering information, choose the following button.

**AWS Knowledge Center**  
To learn more, choose the documentation button. 

[GO TO DOC](https://aws.amazon.com/premiumsupport/knowledge-center/s3-troubleshoot-403/)


---

Lesson 12 of 18

# 

Troubleshooting 500 HTTP Errors

## 

****Troubleshooting** **HTTP Status Code 500: Error Message – Internal Error**  
**

The error code 500 Internal Error indicates that Amazon S3 was not able to process the request at that particular time. Because Amazon S3 is a distributed system, a very small percentage of 5xx errors is expected during normal use of the service. All requests that return 5xx errors from Amazon S3 can be retried. Therefore, it's a best practice to have a fault-tolerance mechanism, or to implement retry logic for any application making requests to Amazon S3.  
  
If you continue to encounter 500 Internal Errors after repeated attempts consider the following potential solutions. To learn more about the possible cause for 500 errors, expand each of the following four sections.

## 

Use a retry mechanism in the application making requests

What if your application is not using AWS software development kits (AWS SDKs) to make requests to Amazon S3? In that case, you can build retry logic into applications that make requests to Amazon S3.  
  
All AWS SDKs have a built-in retry mechanism with an algorithm that uses exponential backoff. This algorithm implements increasingly longer wait times between retries for consecutive error responses. Most exponential backoff algorithms use jitter (randomized delay) to prevent successive collisions. For more information, see [Error retries and exponential backoff in AWS(opens in a new tab)](https://docs.aws.amazon.com/general/latest/gr/api-retries.html).

## 

Configure your application to increase request rates gradually

To avoid the 503 Slow Down error, configure your application to start with a lower request rate (transactions per second). Then, increase the application's request rate exponentially. Amazon S3 automatically scales to handle a higher request rate.

## 

Monitor the number of 500 Internal Error responses

To monitor the number of 500 Internal Error responses that you're getting, you can use one of these options:

- Activate Amazon CloudWatch metrics. Amazon S3 CloudWatch request metrics include a metric for 5xx server errors.
- Activate Amazon S3 server access logging. Because server access logging captures all requests, you can filter and review all requests that received a 500 Internal Error response. You can also parse logs using Amazon Athena.

## 

Copy your data using alternative methods

For other ways to copy data between Regions, consider the following options:

- Use the S3DistCp operation on Amazon EMR. For more information, see [Seven Tips for Using S3DistCp on Amazon EMR to Move Data Efficiently Between HDFS and Amazon S3.(opens in a new tab)](https://aws.amazon.com/blogs/big-data/seven-tips-for-using-s3distcp-on-amazon-emr-to-move-data-efficiently-between-hdfs-and-amazon-s3/)  
    **Note:** Because this approach requires you use Amazon EMR, be sure to review Amazon EMR pricing.
- Try a GET operation from the source bucket, and then a PUT operation to the destination bucket.
- Allow cross-Region replication (CRR) on the source bucket. CRR automatically and asynchronously copies objects to the destination bucket.  
      
    **Note:** With CRR, new objects are automatically copied to the destination bucket. Objects that were in the source bucket before activating CRR are not automatically copied.

### 

****Where can I find additional 500 HTTP resources?**** 

To access additional resources about gathering information, choose the following button.

**AWS Knowledge Center**  
To learn more, choose the documentation button.

[GO TO DOC](https://aws.amazon.com/premiumsupport/knowledge-center/http-5xx-errors-s3/)


---


Lesson 13 of 18

# 

Troubleshooting 503 HTTP Errors

## 

******Troubleshooting** **HTTP Status Code 503: Error Message – Slow Down****  
**

The error code 503 Slow Down typically indicates that the number of requests to your S3 bucket is very high, exceeding the request rate limit per prefix. You can request up to 3,500 PUT/COPY/POST/DELETE or 5,500 GET/HEAD per second per prefix in an S3 bucket. In some cases, Amazon S3 can return a 503 Slow Down response if your requests exceed the amount of bandwidth available for cross-Region copying. To learn more about optimizing Amazon S3 performance, see [Best practices design patterns(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/optimizing-performance.html).  
  
All requests that return 5xx errors from Amazon S3 can be retried. Therefore, it's a best practice to have a fault-tolerance mechanism or to implement retry logic for any applications making requests to Amazon S3. That way, Amazon S3 can recover from these errors.

To learn more about each resolution for 503 errors, expand each of the following four sections.

## 

Use a retry mechanism in the application making requests

If your application is not using AWS SDKs to make requests to Amazon S3, it is a good idea to build retry logic into these applications. All AWS SDKs have a built-in retry mechanism with an algorithm that uses exponential backoff. This algorithm implements increasingly longer wait times between retries for consecutive error responses. Most exponential backoff algorithms use jitter (randomized delay) to prevent successive collisions. For more information, see [Error retries and exponential backoff in AWS(opens in a new tab)](https://docs.aws.amazon.com/general/latest/gr/api-retries.html).

## 

Configure your application to increase request rates gradually

To avoid the 503 Slow Down error, configure your application to start with a lower request rate (transactions per second). Then, increase the application's request rate exponentially. Amazon S3 automatically scales to handle a higher request rate.

## 

Distribute objects across multiple prefixes

The request rates described in [Request rate and performance guidelines (opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/optimizing-performance.html)apply per prefix in an S3 bucket. To set up your bucket to handle overall higher request rates and avoid 503 Slow Down errors, you can distribute objects across multiple prefixes. For example, if you're using your S3 bucket to store images and videos, you can distribute the files into two prefixes similar to the following:

- mybucket/images
- mybucket/videos

If the request rate on the prefixes increases gradually, Amazon S3 scales up to handle requests for each of the two prefixes. (Amazon S3 will scale up to handle 3,500 PUT/POST/DELETE or 5,500 GET requests per second.) As a result, the overall request rate handled by the bucket doubles.

## 

Check if the object requested has millions of versions

What if you notice a significant increase in the number of HTTP 503 Slow Down responses received for Amazon S3 PUT or DELETE object requests to a bucket that has Amazon S3 versioning activated? In that case, you might have one or more objects in the bucket for which there are millions of versions.

### 

****Where can I find additional HTTP 503 resources?**** 

To access additional resources about gathering information, choose the following button.

****AWS Knowledge Center****  
To learn more, choose the documentation button.

[GO TO DOC](https://aws.amazon.com/premiumsupport/knowledge-center/http-5xx-errors-s3/)


---

Lesson 14 of 18

# 

Troubleshooting Lifecycle Actions

### 

********How do I troubleshoot****** ******Lifecycle Policies Not Actioned******?  
**

To learn more about each lifecycle policy, expand each of the following four sections.

## 

Lifecycle configuration on MFA-enabled buckets is not supported

Lifecycle configuration on MFA-enabled buckets is not supported.


## 

Lifecycle rule action

Amazon S3 runs lifecycle rules once every day. However, the rules might take a few days to run before the objects are actioned upon, as the lifecycle actions are asynchronous steps.


## 

  
Storage class transition

Amazon S3 supports a waterfall model for transitioning between storage classes. To learn more about supported and unsupported lifecycle actions, see [Supported/unsupported transitions(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-transition-general-considerations.html).


## 

Storage class constraints

Lifecycle storage class transitions have size, timing, and transition constraints. To learn more about storage class transition constraints, see [Related constraints(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-transition-general-considerations.html#lifecycle-configuration-constraints).


### 

********Troubleshooting** Lifecycle Policies Not Actioned******

After configuring a lifecycle policy on all, or a subset of objects stored in your S3 bucket, if you don’t see the objects being actioned upon by lifecycle rule, proceed to investigate the cause and fix the problem. 

To learn about each step of the troubleshooting process, expand each of the following four sections.

## 

Be sure the status of your lifecycle rule is Enabled

Make sure the status of your lifecycle rule is _Enabled._ It’s under the Management tab of your bucket.

![Screenshot of the AWS Console for S3. Management tab is selected and lifecycle role is set to "Enabled"](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/Picture1.png)

![[Pasted image 20260422171336.png]]

## 

Check lifecycle rule scope

If the lifecycle rule is applied on a prefix, make sure the key name prefix is correct. For example, if you set the scope with the prefix _Tax,_ then only objects with key names such as Tax/document1 or Tax/document2 are actioned by the lifecycle rule. An object with the key name document3 is not considered for the lifecycle action.  
  
The same thing applies when the scope of the lifecycle rule is defined as Object Tags. The rule then applies only to a subset of objects with the specific tag.

![[Pasted image 20260422171408.png]]

## 

Multiple lifecycle rules

When you have multiple rules in an Amazon S3 lifecycle configuration, an object can become eligible for multiple lifecycle actions. In such cases, Amazon S3 follows these general rules:

- Permanent deletion takes precedence over transition.
- Transition takes precedence over creation of delete markers.
- When an object is eligible for both an Amazon S3 Glacier Flexible Retrieval and Amazon S3 Standard-IA (or S3 One Zone-IA) transition, Amazon S3 chooses the Amazon S3 Glacier Flexible Retrieval transition.


## 

Lifecycle expirations

If two expiration lifecycle policies overlap, the shorter expiration policy is honored so that data is not stored for longer than expected. Likewise, if two transition policies overlap, the Amazon S3 lifecycle transitions your objects to the lower-cost storage class. However, an exception to this general rule is with the Amazon S3 Intelligent-Tiering storage class.


### 

**Where can I find additional lifecycle action resources?  
**

To access additional resources about gathering information, choose the following button.

**Amazon S3 lifecycle configuration examples**  
To learn more about lifecycle configurations, choose the documentation button.

[GO TO DOC](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-configuration-examples.html)


---

Lesson 15 of 18

# 

Troubleshooting Replication

## 

****How do I troubleshoot Amazon S3 replication?****

Sometimes, replication between buckets does not replicate new objects. While checking the replication status can help you determine the current state of an object being replicated, there may be other reasons for nonreplication.  
  
To learn more about a possible cause, expand each of the following four sections.

## 

Replication time and status

The time it takes Amazon S3 to replicate an object depends on several factors, including source and destination Region pair, and the size of the object. The majority of objects replicate in 15 minutes or less. However, if the object being replicated is large, check the source object’s replication status. If the object replication status is _Pending,_ it means that Amazon S3 has not completed the replication. If the object replication status is _Failed,_ then follow the troubleshooting steps.

  

You can view the replication status of an object either under the object’s properties from the Amazon S3 console. You can also use the HeadObject API to get the x-amz-replication-status header in response. To learn more about the this command, see the [AWS CLI command reference(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadObject.html).

## 

Configuration

In the replication configuration on the source bucket, verify the following:

- The status is _Enabled._
- The ARNs of the destination buckets are correct.
- The key name prefix is correct. For example, if you set the configuration to replicate objects with the prefix _Tax,_ then only objects with key names such as Tax/document1 or Tax/document2 are replicated. An object with the key name document3 is not replicated.

## 

Versioning

Verify that versioning has not been suspended on any bucket. Both source and destination buckets must have versioning enabled.

## 

Replication constraints

By default, Amazon S3 doesn't replicate the following:

- Objects in the source bucket that are replicas that were created by another replication rule.
    
- Objects in the source bucket that have already been replicated to a different destination.
    
- Batch replication does not support re-replicating objects that were deleted with the version ID of the object from the destination bucket.
    
- Objects created with server-side encryption using customer-provided encryption keys (SSE-C).
    
- By default, when replicating from a different AWS account, delete markers added to the source bucket are not replicated.
    
- Objects that are stored in the Amazon S3 Glacier Flexible Retrieval or Amazon S3 Glacier Deep Archive storage class.
    
- Objects in the source bucket that the bucket owner doesn't have sufficient permissions to replicate.
    
- Updates to bucket-level subresources.
    
- Actions performed by lifecycle configuration.
    

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/wjuT6N/backgroud_storageB.png)

**Sometimes, replication between buckets does not replicate new objects.** 

## 

******Troubleshooting scenario: Objects replicas are not present  
******

After configuring replication between S3 buckets that are in the same or different accounts, if you don’t see the object replicas appearing in the destination bucket, use the following troubleshooting pointers to help identify and fix the issue.


### 

**IAM trust policy example  
**

Make sure that the IAM trust policy grants Amazon S3 service principal permissions to assume the role. To access a code example, expand the following section. 

## 

Code example

{  
"Version":"2012-10-17",  
"Statement":[  
{  
"Effect":"Allow",  
"Principal":{  
"Service":"s3.amazonaws.com"  
},  
"Action":"sts:AssumeRole"  
}  
]  
}

### 

Amazon S3 batch replication example

In case of the Amazon S3 batch replication of existing objects, the IAM trust policy must grant Amazon S3 service principal permissions to assume the role. To access a code example, expand the following section.

## 

Code example

{  


"Version":"2012-10-17",  
"Statement":[  
{  
"Effect":"Allow",  
"Principal":{  
"Service":"batchoperations.s3.amazonaws.com"  
},  
"Action":"sts:AssumeRole"  
}  
]  
}
**  
Make sure that the IAM trust policy grants Amazon S3 service principal permissions to assume the role.**

## 

Same and cross-account replication

Check the required permission based on the replication configuration. There are four scenarios to consider:[(opens in a new tab)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html)

1. 1
    
    Same account replication without AWS KMS included
    
2. 2
    
    Same account replication with AWS KMS included
    
3. 3
    
    Cross-account replication without AWS KMS included
    
4. 4
    
    Cross-account replication with AWS KMS included
    
5. 5
    
    Amazon S3 bucket keys
    

### 

**Same account replication without AWS KMS included example  
**

Review the source and destination bucket policies for any explicit _Deny_ statements that can block the Amazon S3 to replicate the objects. _Deny_ takes precedence over _Allow._

Minimum IAM permissions are required to configure the same account replication if the AWS KMS encryption method is not used. To access a code example, expand the following section.

## 

Code example

{  
"Version": "2012-10-17",  
"Statement": [  
{  
"Effect": "Allow",  
"Action": [  
"s3:GetObjectVersionForReplication",  
"s3:GetObjectVersionAcl",  
"s3:GetObjectVersionTagging"  
],  
"Resource": [  
"arn:aws:s3:::Source_Bucket/*"  
]  
},  
{  
"Effect": "Allow",  
"Action": [  
"s3:ListBucket",  
"s3:GetReplicationConfiguration"  
],  
"Resource": [  
"arn:aws:s3:::Source_Bucket"  
]  
},  
{  
"Effect": "Allow",  
"Action": [  
"s3:ReplicateObject",  
"s3:ReplicateDelete",  
"s3:ReplicateTags"  
],  
"Resource": "arn:aws:s3:::Destination_Bucket/*"  
}  
]  
}

### 

**Same account replication with AWS KMS included example  
**

Review the source and destination bucket policies for any explicit _Deny_ statements that can block the Amazon S3 to replicate the objects. _Deny_ takes precedence over _Allow._

The following permissions are required for the same account replication if the S3 bucket is encrypted with AWS KMS encryption. To access a code example, expand the following section. 

## 

Code example

{  
"Version": "2012-10-17",  
"Statement": [  
{  
"Action": [  
"s3:ListBucket",  
"s3:GetReplicationConfiguration",  
"s3:GetObjectVersionForReplication",  
"s3:GetObjectVersionAcl",  
"s3:GetObjectVersionTagging",  
"s3:GetObjectRetention",  
"s3:GetObjectLegalHold"  
],  
"Effect": "Allow",  
"Resource": [  
"arn:aws:s3:::source_bucket",  
"arn:aws:s3:::source_bucket/*"  
]  
},  
{  
"Action": [  
"s3:ReplicateObject",  
"s3:ReplicateDelete",  
"s3:ReplicateTags",  
"s3:GetObjectVersionTagging",  
"s3:ObjectOwnerOverrideToBucketOwner"  
],  
"Effect": "Allow",  
"Condition": {  
"StringLikeIfExists": {  
"s3:x-amz-server-side-encryption": [  
"aws:kms",  
"AES256"  
]  
}  
},  
"Resource": [  
"arn:aws:s3:::destination_bucket/*"  
]  
},  
{  
"Action": [  
"kms:Decrypt"  
],  
"Effect": "Allow",  
"Condition": {  
"StringLike": {  
"kms:ViaService": "s3.us-east-1.amazonaws.com",  
"kms:EncryptionContext:aws:s3:arn": [  
"arn:aws:s3:::source_bucket/*"  
]  
}  
},  
"Resource": [  
"arn:aws:kms:us-east-1:111111111111:key/cf08c3e3-b463-4c97-a5b3-16290b439c83"  
]  
},  
{  
"Action": [  
"kms:Encrypt"  
],  
"Effect": "Allow",  
"Condition": {  
"StringLike": {  
"kms:ViaService": [  
"s3.ap-southeast-2.amazonaws.com"  
],  
"kms:EncryptionContext:aws:s3:arn": [  
"arn:aws:s3:::destination_bucket/*"  
]  
}  
},  
"Resource": [  
"arn:aws:kms:ap-southeast-2:111111111111:key/f3571173-2b35-4a11-86da-a52da15bb88d"  
]  
}  
]  
}

![](https://skillbuilder.aws/cds/41ae4ea7-b2de-4068-8b23-60401ac5144b/assets/wjuT6N/backgroud_storageB.png)

**Review the source and destination bucket policies for any explicit _Deny_ statements that can block the Amazon S3 to replicate the objects. _Deny_ takes precedence over _Allow._**

## 

**Cross-account replication without AWS KMS included**

Setting up replication when source and destination buckets are owned by different AWS accounts is similar to setting up replication when both buckets are owned by the same account. The only difference is that the destination owner must grant the source bucket owner permission to replicate objects by adding a bucket policy.

Review the source and destination bucket policies for any explicit _Deny_ statements that can block the Amazon S3 to replicate the objects. _Deny_ takes precedence over _Allow._

### 

**Cross-account replication without AWS KMS example 1  
**

Minimum permissions are required on the IAM role. To access a code example, expand the following section. To access a code example, expand the following section. 

## 

Code example

{  
"Version": "2012-10-17",  
"Statement": [  
{  
"Action": [  
"s3:ListBucket",  
"s3:GetReplicationConfiguration",  
"s3:GetObjectVersionForReplication",  
"s3:GetObjectVersionAcl",  
"s3:GetObjectVersionTagging",  
"s3:GetObjectRetention",  
"s3:GetObjectLegalHold"  
],  
"Effect": "Allow",  
"Resource": [  
"arn:aws:s3:::source_bucket",  
"arn:aws:s3:::source_bucket/*",  
"arn:aws:s3:::destination_bucket",  
"arn:aws:s3:::destination_bucket/*"  
]  
},  
{  
"Action": [  
"s3:ReplicateObject",  
"s3:ReplicateDelete",  
"s3:ReplicateTags",  
"s3:ObjectOwnerOverrideToBucketOwner"  
],  
"Effect": "Allow",  
"Resource": [  
"arn:aws:s3:::source_bucket/*",  
"arn:aws:s3:::destination_bucket/*"  
]  
}  
]  
}

### 

****Cross-account replication without AWS KMS** example 2  
**

Minimum permissions are required on the destination bucket. To access a code example, expand the following section. 

## 

Code example

{  
"Version": "2012-10-17",  
"Id": "",  
"Statement": [  
{  
"Sid": "Set permissions for objects",  
"Effect": "Allow",  
"Principal": {  
"AWS": "arn:aws:iam::111111111111:role/service-role/s3crr_role"  
},  
"Action": [  
"s3:ReplicateObject",  
"s3:ReplicateDelete"  
],  
"Resource": "arn:aws:s3:::destination_bucket/*"  
},  
{  
"Sid": "Set permissions on bucket",  
"Effect": "Allow",  
"Principal": {  
"AWS": "arn:aws:iam::111111111111:role/service-role/s3crr_role"  
},  
"Action": [  
"s3:List*",  
"s3:GetBucketVersioning",  
"s3:PutBucketVersioning"  
],  
"Resource": "arn:aws:s3:::destination_bucket"  
}  
]  
}

### 

**Cross-account replication with KMS included**

In a cross-account scenario, where source and destination buckets are owned by different AWS accounts, you can use an AWS KMS key to encrypt object replicas. The AWS KMS key owner must grant the source bucket owner permission to use the AWS KMS key.

### 

****Cross-account replication with KMS** example 1  
**

Use the following IAM permission policy when the replication rule is configured to replicate objects created with SSE-KMS. To access a code example, expand the following section.

## 

Code example

{  
"Version": "2012-10-17",  
"Statement": [  
{  
"Action": [  
"s3:ListBucket",  
"s3:GetReplicationConfiguration",  
"s3:GetObjectVersionForReplication",  
"s3:GetObjectVersionAcl",  
"s3:GetObjectVersionTagging",  
"s3:GetObjectRetention",  
"s3:GetObjectLegalHold"  
],  
"Effect": "Allow",  
"Resource": [  
"arn:aws:s3:::source_bucket",  
"arn:aws:s3:::source_bucket/*"  
]  
},  
{  
"Action": [  
"s3:ReplicateObject",  
"s3:ReplicateDelete",  
"s3:ReplicateTags",  
"s3:GetObjectVersionTagging",  
"s3:ObjectOwnerOverrideToBucketOwner"  
],  
"Effect": "Allow",  
"Condition": {  
"StringLikeIfExists": {  
"s3:x-amz-server-side-encryption": [  
"aws:kms",  
"AES256"  
]  
}  
},  
"Resource": [  
"arn:aws:s3:::destination_bucket/*"  
]  
},  
{  
"Action": [  
"kms:Decrypt"  
],  
"Effect": "Allow",  
"Condition": {  
"StringLike": {  
"kms:ViaService": "s3.ap-southeast-2.amazonaws.com",  
"kms:EncryptionContext:aws:s3:arn": [  
"arn:aws:s3:::source_bucket/*"  
]  
}  
},  
"Resource": [  
"arn:aws:kms:ap-southeast-2:111111111111:key/f3571173-2b35-4a11-86da-a52da15bb88d"  
]  
},  
{  
"Action": [  
"kms:Encrypt"  
],  
"Effect": "Allow",  
"Condition": {  
"StringLike": {  
"kms:ViaService": [  
"s3.ap-southeast-2.amazonaws.com"  
],  
"kms:EncryptionContext:aws:s3:arn": [  
"arn:aws:s3:::destination_bucket/*"  
]  
}  
},  
"Resource": [  
"arn:aws:kms:ap-southeast-2:111111111111:key/e52d2b58-1032-4f55-9183-8fba3fc3aafb"  
]  
}  
]  
}

**  
The only difference is that the destination owner must grant the source bucket owner permission to replicate objects by adding a bucket policy.**

## 

S3 bucket keys

Things to consider with an AWS KMS bucket key:

****Note:**** When an S3 bucket key is enabled for the source and destination bucket, the encryption context will be the bucket ARN and not the object ARN, such as arn:aws:s3:::bucket_ARN. You need to update your IAM policies to use the bucket ARN for the encryption context. However, if an S3 bucket key is only enabled on the destination bucket and not the source bucket, you don't need to update your IAM policies to use the bucket ARN for the encryption context.

### 

**Bucket key example 1:  
**

When AWS KMS BucketKey is deactivated on both source and destination S3 buckets, the encryption context will be the object ARN. To access a code example, expand the following section.


## 

Code example

"kms:EncryptionContext:aws:s3:arn": [  
                        "arn:aws:s3:::Bucket_Name/*"

]


### 

**Bucket key example 2  
**

When the AWS KMS BucketKey is activated on both source and destination S3 buckets, the encryption context will be the bucket ARN. To access a code example, expand the following section. 

## 

Code example

kms:EncryptionContext:aws:s3:arn": [  
"arn:aws:s3:::Bucket_Name"  
                    ]

### 

**Bucket key example 3  
**

When the AWS KMS BucketKey is not on the source bucket and but is activated on the destination S3 bucket, the encryption context will be the object ARN. To access a code example, expand the following section.


## 

Code example

"kms:EncryptionContext:aws:s3:arn": [  
"arn:aws:s3:::Bucket_Name/*"  
                    ] 
                   ### 

**Bucket key example 4  
**

When the AWS KMS BucketKey is activated on the source bucket but not on the destination S3 bucket, the encryption context will be the bucket ARN. To access a code example, expand the following section. 

## 

Code example

"kms:EncryptionContext:aws:s3:arn": [  
"arn:aws:s3:::Bucket_Name"  
                    ]

### 

****Where can I find additional replication resources?**** 

To access additional resources about gathering information, choose from the following buttons.

**Protecting data using server-side encryption with AWS Key Management Service (SSE-KMS)**  
To learn more about server-side encryption with AWS KMS, choose the following button.

[GO TO DOC](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html)

**What isn't replicated with replication configurations**  
To learn more about replication configurations, choose the following button.


---

Lesson 16 of 18

# 

Resources

### 

**What support resources are available for troubleshooting Amazon S3?**

You may encounter issues outside of those covered in this course. AWS provides multiple resources that can further aid in your troubleshooting attempts. To explore each support resource, choose the following buttons.

**AWS Knowledge Center**  
To learn more about common customer questions to AWS Support, access AWS Knowledge Center content by choosing the following button.

[GO TO AWS KC](https://aws.amazon.com/premiumsupport/knowledge-center/#Amazon_Simple_Storage_Service_.28Amazon_S3.29)

**Amazon S3 user guide**   
To learn more about troubleshooting issues and solutions in the user guide, choose the following button.

[GO TO USER GUIDE](https://docs.aws.amazon.com/AmazonS3/latest/userguide)

**Official AWS YouTube channel**  
To access additional AWS information through video content, visit the AWS YouTube channel by choosing the following button.

[GO TO AWS YOUTUBE](https://www.youtube.com/channel/UCd6MoB9NC6uYN2grvUNT-Zg)

**Official AWS Twitch channel**  
To visit the channel page for the AWS Twitch schedule, previously recorded episodes, and links to resources, choose the following button.

[GO TO AWS TWITCH](https://www.twitch.tv/aws)

**AWS CLI Command Reference**   
The AWS Command Line Interface is a unified tool that provides a consistent interface for interacting with all parts of AWS. To learn more about the AWS CLI, choose the following button.

[GO TO AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/s3/)

**Amazon S3 API Guide**

The troubleshooting sections of the developer guide describe common issues and solutions. To learn more, choose the following button. 

[GO TO API REF](https://docs.aws.amazon.com/AmazonS3/latest/API/)

### 

**Where can I get complimentary direct engagement from peers?** 

AWS re:Post gives you access to a vibrant community that can help you become even more successful on AWS.

**AWS re:Post**   
To visit re:Post to ask questions of community experts about designing, building, deploying, and operating workloads on AWS, choose the following button.

[GO TO RE:POST](https://repost.aws/topics/TAgOdRefu6ShempO3dWPEofg/containers?sc_ichannel=ha%E2%89%BBilang=en%E2%89%BBisite=repost%E2%89%BBiplace=hp%E2%89%BBicontent=TAgOdRefu6ShempO3dWPEofg%E2%89%BBipos=2)

### 

**Where can I ask questions or get direct engagement for my Amazon S3 issues?**

There might be cases when you get stuck and are not able to figure out a particular problem. AWS provides ways to get help, either from AWS directly or from our AWS Partners. To learn more about AWS Support, AWS Partners, and AWS Certified consultants, choose from the following buttons.

**AWS IQ**

AWS IQ is a paid service designed to provide help from experts and consulting firms with the skills and experience you need. To learn more about AWS IQ, choose the following button. 

[GO TO AWS IQ](https://iq.aws.amazon.com/)

**Find an AWS Partner**

AWS Partners are a paid community of partners uniquely positioned to help you accelerate your journey to the cloud and take full advantage of all that AWS has to offer. To learn more about how AWS Partners can help you, choose the following button. 

[GO TO AWS PARTNERS](https://partners.amazonaws.com/)

**AWS Support**

AWS Support is a paid program that provides a mix of tools and technology, people, and programs designed to proactively help you optimize performance, lower costs, and innovate faster. To learn more about how AWS Support can help, choose the following button.

Lesson 17 of 18

# 

Support

### 

**What information should I gather before asking for help?**

When asking for help with an Amazon S3 issue, first gather all of the relevant configuration and diagnostic data. You will be able to get help faster and limit requests for more information that could greatly delay a response from the support team.

This information should include:

1. 1
    
    A clear description of the problem you are experiencing
    
2. 2
    
    Expected outcome: What behavior will you see when the problem is resolved?
    
3. 3
    
    Steps to reproduce the problem, if applicable and feasible
    
4. 4
    
    Your account number
    
5. 5
    
    Names and IDs of Amazon S3 resources
    
    Time frame of problematic behavior: (For example, every morning at 8 AM)
    
    AWS Region  
      
    S3 bucket(s) and object(s) name  
      
    Full response from Amazon S3, including request IDs
    
6. 6
    
    Any error messages produced, including output captured (if using AWS CLI tools) or console screenshots (if using the AWS Management Console) and logs produced by any tools such as Amazon CloudWatch, Amazon SNS, and AWS CloudTrail
    
7. 7
    
    Context about the issue: Additional details, such as what kind of application is running on the targets and what backend databases they must access, to help the engineer quickly test the solution, troubleshoot, and determine possible causes
    
8. 8
    
    Any attempted troubleshooting steps already taken and their results
    

### 

Best practice: Populate an effective support ticket

If you're currently subscribed to an AWS Support plan, you can open a ticket. The following sample support ticket exemplifies many good practices. For more information about the sections of this support ticket, choose the numbered markers.

![[Pasted image 20260422172458.png]]

![[Pasted image 20260422172800.png]]

![[Pasted image 20260422172824.png]]

