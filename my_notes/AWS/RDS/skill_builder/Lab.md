# Building with Amazon RDS Databases

**SPL-TF-200-DBWARD-1 - Version 1.0.14**

© 2025 Amazon Web Services, Inc. or its affiliates. All rights reserved. This work may not be reproduced or redistributed, in whole or in part, without prior written permission from Amazon Web Services, Inc. Commercial copying, lending, or selling is prohibited. All trademarks are the property of their owners.

Note: Do not include any personal, identifying, or confidential information into the lab environment. Information entered may be visible to others.

Corrections, feedback, or other questions? Contact us at [_AWS Training and Certification_](https://support.aws.amazon.com/#/contacts/aws-training).

## Lab overview

Amazon Elastic Compute Cloud (Amazon EC2) is a web service that provides secure, resizable compute capacity for databases in the cloud. Hosting a database on Amazon EC2 allows for a high degree of customization and control over the database and its environment. It maintains the long standing tradition of manual database management including managing replication, failover, monitoring, notifications, and backups. AWS managed database solutions, such as Amazon Relational Database Service (Amazon RDS), provide fully automated solutions for these tasks.

**Amazon RDS:** Amazon RDS configures synchronous replication quickly. In the event of a failure, Amazon RDS automatically fails over to a secondary server in 60-120 seconds. Using a DNS endpoint prevents any complicated routing, IP reassignment, or DNS propagation delays. Understanding how an automatic failover affects applications is vital to successfully implement this service.

Amazon RDS makes it easy to set up, operate, and scale a relational database in the cloud. The service provides cost-efficient and resizable capacity while automating time-consuming administration tasks such as hardware provisioning, database setup, patching, and backups. In this lab, you replicate a failover event and visualize how the application responds.

**AWS Secrets Manager:** Managing user access is another key consideration when working with a database service. Changing passwords regularly is important to ensure the continued security of your databases. However, the complexity of updating a root-level password in every location that needs it is often cumbersome. You can use AWS Secrets Manager to safely manage and store these passwords known as secrets.

Secrets Manager helps protect secrets needed to access your applications, services, and IT resources. The service enables you to easily rotate, manage, and retrieve database credentials, API keys, and other secrets throughout their life cycles. Users and applications retrieve secrets with a call to Secrets Manager APIs, eliminating the need to hard code sensitive information in plain text. Secrets Manager offers secret rotation with built-in integration for Amazon RDS. In this lab, you configure Secrets Manager and add an AWS Lambda function to automatically rotate the database user’s password on a set frequency.

### Objectives

By the end of this lab, you should be able to do the following:

- Set up and configure an Amazon RDS instance with Multi-AZ failover and encryption.
- Create and store secrets through Secrets Manager.
- Enable automatic rotation of secrets through Secrets Manager.
- Set up encryption in transit with SSL.
- Test Multi-AZ failover and data synchronization.

### Technical knowledge prerequisites

To successfully complete this lab, you should be familiar with:

- Basic navigation of the AWS Management Console.
- An understanding of database concepts, MySQL, and database availability.
- An understanding of the functional role of secrets when integrated with other services and applications.

### Icon Key

Various icons are used throughout this lab to call attention to different types of instructions and notes. The following list explains the purpose for each icon:

-  **Caution:** Information of special interest or importance (not so important to cause problems with the equipment or data if you miss it, but it could result in the need to repeat certain steps).
-  **Warning:** An action that is irreversible and could potentially impact the failure of a command or process (including warnings about configurations that cannot be changed after they are made).
-  **Command:** A command that you must run.
-  **Expected output:** A sample output that you can use to verify the output of a command or edited file.
-  **Note:** A note, tip, or important guidance.
-  **Copy edit:** A time when copying a command, script, or other text to a text editor (to edit specific variables within it) might be easier than editing directly in the command line or terminal.
-  **Learn more:** Where to find more information.
-  **Task complete:** A conclusion or summary point in the lab.

## Start lab

1. To launch the lab, at the top of the page, choose Start Lab.
    
     **Caution:** You must wait for the provisioned AWS services to be ready before you can continue.
    
2. To open the lab, choose Open Console .
    
    You are automatically signed in to the AWS Management Console in a new web browser tab.
    
     **Warning:** Do not change the **Region** unless instructed.
    

### Common sign-in errors

#### Error: Choosing Start Lab has no effect

In some cases, certain pop-up or script blocker web browser extensions might prevent the **Start Lab** button from working as intended. If you experience an issue starting the lab:

- Add the lab domain name to your pop-up or script blocker’s allow list or turn it off.
- Refresh the page and try again.

---

### Lab environment

The following diagram shows the basic architecture of the lab environment:

!['The architecture diagram of the lab environment.'](https://us-west-2-tcprod.s3.us-west-2.amazonaws.com/courses/SPL-TF-200-DBWARD/v1.0.14.prod-15923581/instructions/en_us/images/rds-diagram.png)

_Image description: The preceding diagram depicts the data flow from an external user to an internet gateway to a CommandHost EC2 instance configured to communicate with a database instance located in a private subnet via port 3306. The instance has been added to a Secrets Manager role, which is configured for automatic secret rotation. The initialization of an Amazon RDS instance can take a while. For this reason, a pre-configured Amazon RDS instance has been created that mirrors the instance you configure as part of the lab. This allows you to continue with the lab without having to wait._

### AWS services not used in this lab

AWS service capabilities used in this lab are limited to what the lab requires. Expect errors when accessing other services or performing actions beyond those provided in this lab guide.

---

## Task 1: Configure and deploy an Amazon RDS database

In this task, you create an Amazon RDS database.

3. At the top of the AWS Management Console, in the search bar, search for and choose 
    
    Aurora and RDS
    
    .
    
4. Scroll to the **Create a database** section and choose Create a database.
    

On the **Create database** page, configure the following:

5. In the **Choose a database creation method** section, choose **Standard create**.
    
6. In the **Engine options** section, for **Engine type**, choose **MySQL**.
    
7. In the **Templates** section, choose **Production**.
    
8. In the **Availability and durability** section, choose **Multi-AZ DB instance deployment (2 instances)**.
    

 **Note:** Choosing this option ensures that Amazon RDS maintains a synchronous standby replica in a different Availability Zone than the database instance. Amazon RDS automatically fails over to the standby in the case of a planned or unplanned outage of the primary. By choosing a Multi-AZ deployment, the maintenance downtime is reduced. Amazon RDS updates the secondary instance first, fails over to it, and then updates the former primary.

9. In the **Settings** section, configure the following:

- For **DB instance identifier**, enter 
    
    RDSLabDB
    
    .
- For **Master username**, copy and paste the value of **mydbAdminUser** provided to the left of these instructions.
- For **Credentials management**, choose **Self managed**.
    - For **Master password**, copy and paste the value of **mydbAdminPassword** provided to the left of these instructions.
    - For **Confirm master password**, copy and paste the value of **mydbAdminPassword** provided to the left of these instructions.

 **Note:** The master user is the Amazon RDS equivalent to a root user. You should only use it for specific tasks such as creating and managing databases or adding users.

 **Learn more:** Refer to _Master user account privileges_ in the **Additional resources** section for more information about specific privileges in Amazon RDS.

10. In the **Instance configuration** section, configure the following:

- For **DB instance class**, choose **Burstable classes (includes t classes)**.
- Use the dropdown menu and select **db.t3.micro**.

11. In the **Storage** section, configure the following:

- For **Storage type**, use the dropdown menu and select **General Purpose SSD (gp3)**.

 **Note:** For more intensive workloads, Provisioned IOPS could be used here to reduce latency with a higher cost.

12. In the **Connectivity** section, configure the following:

- For **Virtual private cloud (VPC)**, use the dropdown menu and select **RDSVPC**.
- For **DB subnet group**, use the dropdown menu and select the group name that contains **mydbsubnetgroup** in its name.
- For **Public access**, choose **No**.

 **Note:** This ensures that your Amazon RDS instance is not assigned a public IP address, which could allow direct access to the database.

- For **VPC security group (firewall)**, choose **Choose existing**.
- For **Existing VPC security groups**, use the dropdown menu and select the group name that contains **DBSecurityGroup** in its name.
    - Choose the **X** to remove any security groups listed except the one that contains **DBSecurityGroup**.

 **Warning:** The list may not disappear when you select the VPC security group. Choose out of the drop-down menu to close it.

13. In the **Monitoring** section, configure the following:

- Uncheck **Enable Enhanced Monitoring**.
- In the **Log exports** sub-section:
    - For **Select the log types to publish to Amazon CloudWatch Logs**, check all the boxes available. This ensures these logs are published to Amazon CloudWatch Logs.

14. Expand the **Additional configuration** section, and configure the following:

- In the **Database options** sub-section:
    
    - For **Initial database name**, enter 
        
        MyRDSLab
        
        .
- In the **Backup** sub-section:
    
    - Ensure that **Enable automated backups** is checked.
    - For **Backup retention period**, use the dropdown menu and select **10 days**.

 **Note:** With Amazon RDS, you can set the time window when backups are created as well as the number of days to store backups before they are deleted. RDS backup snapshots are created from the standby instance (when available) to minimize load on the primary instance.

 **Learn more:** Refer to _Introduction to backups_ in the **Additional resources** section for more information.

- In the **Maintenance** sub-section:
    - For **Maintenance window**, choose **Choose a window**.
    - For **Start day**, use the dropdown menu and select **Sunday**.
    - For **Start time**, use the dropdown menu and select **23:00** UTC.
    - For **Duration**, use the dropdown menu and select **1** hour.

 **Note:** Once you have created your database instance, modifications to its configuration could result in service interruption because the instances need to reboot.

15. Choose Create database.

 **Caution:** If you see the **Suggested add-ons for rdslabdb** pop-up window, choose Close.

You are taken to the Amazon RDS console. Here you can monitor the progress of your database instances.

 **Note:** The new Amazon RDS instance takes about 20 minutes to create. However, to allow you to continue with the lab activities, an identical RDS instance called _mydb_ has already been provisioned for you as part of the lab setup. You use that instance for the remainder of this lab.

 **Task complete:** You have successfully configured and deployed an Amazon RDS instance.

---

## Task 2: Create and verify a secret using Secrets Manager

In this task, you add a secret to Secrets Manager and rotate the credentials to your Amazon RDS database. Secrets Manager offers built-in integrations with Amazon RDS to automatically rotate database credentials on your behalf. Further customization using Lambda functions can enable management of API keys and AUTH tokens.

### Task 2.1: Create a secret

16. At the top of the AWS Management Console, in the search bar, search for and choose 
    
    Secrets Manager
    
    .
    
17. Choose Store a new secret.
    

On the **Choose secret type** step, configure the following:

18. In the **Secret type** section, choose **Credentials for Amazon RDS database**.
    
19. In the **Credentials** section:
    

- For **User name**, copy and paste the value of **mydbAdminUser** provided to the left of these instructions.
- For **Password**, copy and paste the value of **mydbAdminPassword** provided to the left of these instructions.

20. In the **Encryption key** section, use the dropdown menu and select **aws/secretsmanager**.
    
21. In the **Database** section, select **mydb**.
    
22. Choose Next.
    

On the **Configure secret** step, configure the following:

23. In the **Secret name and description** section, for **Secret name**, enter 
    
    mydbsecret-xxxx
    
     (replace x with random values).
    
24. Choose Next.
    
25. On the **Configure rotation - _optional_** step, in the **Configure automatic rotation** section, leave **Automatic rotation** disabled for now.
    

You enable automatic rotation later in the lab.

26. Choose Next.
    
27. On the **Review** step, in the **Sample code** section, review the sample code.
    
28. Choose Store.
    

### Task 2.2: Retrieve a secret using the AWS Management Console

You can retrieve your secret from the Secrets Manager console or from your EC2 **CommandHost** through the AWS Command Line Interface (AWS CLI). Depending on the method you choose, different details are provided about the secret.

29. On the **Secrets** page, choose the name of **mydbsecret-xxxx**. You may need to refresh the pane first.

 **Note:** This is the secret you just created.

30. On the **mydbsecret-xxxx** page, choose the **Overview** tab.
    
31. In the **Secret value** section, choose Retrieve secret value.
    

Here, you can view your secret details Key/value pairs. To view the details in JSON format, choose the **Plaintext** tab.

You have just created a secret that allows you to programmatically connect to the database without using a stored password. An API call to Secrets Manager is made to retrieve the current version of the secret rather than loading credentials from a local config file.

To simulate this, you connect to an Amazon EC2 instance and use the AWS CLI. The Amazon EC2 instance **CommandHost**, has an AWS Identity and Access Management (IAM) role with _SecretsManager:DescribeSecret_, _SecretsManager:ListSecret_, _SecretsManager:GetSecretValue_ attached to it that grants this access.

 **Learn more:** Refer to _Actions, resources, and condition keys for AWS Secrets Manager_ in the **Additional resources** section for more information.

### Task 2.3: Retrieve a secret using the Amazon EC2 CommandHost via AWS CLI

In this task, you connect to the **CommandHost** using the AWS CLI.

32. Copy the **CommandHostSessionUrl** value from the left side of the instructions, and paste it in a new browser tab. The terminal for the CommandHost instance opens.

 **Note:** If you encounter a problem connecting to Session Manager, [refer here](https://lab.builder-labs.skillbuilder.aws/sa/lab/arn%3Aaws%3Alearningcontent%3Aus-east-1%3A470679935125%3Ablueprintversion%2FSPL-TF-200-DBWARD-1%3A1.0.14-c5c5a5a1/en-US#ssh-instructions) for help connecting to the EC2 instance using an SSH client.

Now that you’ve successfully connected to the **CommandHost**, you can retrieve your secret.

33.  **Command:** To obtain the ARN for the secret, run the following command, only replacing **xxxx** at the end of the _secret-id_ parameter with the number you used when creating the secret:

```
cd ~
aws secretsmanager list-secret-version-ids --secret-id mydbsecret-xxxx
```

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

{
    "Versions": [
        {
            "VersionId": "c441f9ca-1361-4cf1-a8ad-0ad263b45f4d",
            "VersionStages": [
                "AWSCURRENT"
            ],
            "LastAccessedDate": "2024-07-17T00:00:00+00:00",
            "CreatedDate": "2024-07-17T16:04:09.765000+00:00",
            "KmsKeyIds": [
                "DefaultEncryptionKey"
            ]
        }
    ],
    "ARN": "arn:aws:secretsmanager:us-west-2:012345678910:secret:mydbsecret-1234-Qwzspw",
    "Name": "mydbsecret-1234"
}
```

 **Note:** Pay attention to **VersionStages** in the output. This contains a list of all active versions of the secret and the staging labels that are attached to each version. You should see one version ID (a UUID type value) that maps to a single staging label, **AWSCURRENT**.

 **Command:** To retrieve the _SecretARN_, run the following command after replacing the **xxxx** with the appropriate number:

```
aws secretsmanager list-secret-version-ids --secret-id mydbsecret-xxxx --output text --query ARN
```

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

arn:aws:secretsmanager:us-west-2:012345678910:secret:mydbsecret-1234-Qwzspw
```

34. Copy the _ARN_ value into a text editor to save the information for later.

 **Copy edit:** Copy the following command to a text editor:

```
aws secretsmanager get-secret-value --secret-id SECRET_ARN --version-stage AWSCURRENT
```

35. In the text editor, replace **SECRET_ARN** with the ARN you copied earlier in the task.
    
36.  **Command:** Run the updated command from the text editor into the terminal window.
    

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

{
    "ARN": "arn:aws:secretsmanager:us-west-2:062882822627:secret:mydbsecret-1234-Qwzspw",
    "Name": "mydbsecret-1234",
    "VersionId": "c441f9ca-1361-4cf1-a8ad-0ad263b45f4d",
    "SecretString": "{\"username\":\"admin\",\"password\":\"GxgASaIAw2BD\",\"engine\":\"mysql\",\"host\":\"mydb.cawamc5slv9j.us-west-2.rds.amazonaws.com\",\"port\":3306,\"dbname\":\"mydb\",\"dbInstanceIdentifier\":\"mydb\"}",
    "VersionStages": [
        "AWSCURRENT"
    ],
    "CreatedDate": "2024-07-17T16:04:09.765000+00:00"
}
```

### Task 2.4: Enable automatic rotation using Secrets Manager

In this section, you configure automatic rotation for the secret created in the previous task. The secret is attached to the Amazon RDS database. You use a MySQL client tool that has been preconfigured on your **CommandHost**, along with a Linux JSON parsing tool called _jq_.

 **Note:** For simplicity, this lab uses _jq_ to parse the secret value into environment variables to allow for easy CLI manipulation. This is **NOT** a security best practice for a production environment. In a production environment, AWS recommends not storing passwords in environment variables.

Start by validating your initial secret and use it to connect to the database, using the **CommandHost** instance.

 **Copy edit:** Copy the following code block to a text editor:

```
secret=$(aws secretsmanager get-secret-value --secret-id SECRET_ARN | jq .SecretString | jq fromjson)
user=$(echo $secret | jq -r .username)
password=$(echo $secret | jq -r .password)
endpoint=$(echo $secret | jq -r .host)
port=$(echo $secret | jq -r .port)
```

37. Replace **SECRET_ARN** with the value of **SECRET_ARN** you copied earlier in the task.

 **Warning:** Keep a copy of this updated code block in the text editor. You use this updated code block later in the lab.

38.  **Command:** Copy the updated code block from the text editor and enter into the terminal window to run the code.

 **Expected output:**

_None, unless there is an error._

 **Warning:** If you closed the terminal window tab or lost the connection, [refer here](https://lab.builder-labs.skillbuilder.aws/sa/lab/arn%3Aaws%3Alearningcontent%3Aus-east-1%3A470679935125%3Ablueprintversion%2FSPL-TF-200-DBWARD-1%3A1.0.14-c5c5a5a1/en-US#reconnect) for instructions on how to reconnect.

39.  **Command:** To retrieve the secret and stores it temporarily within an environment variable, run the following command:

```
mysql -h $endpoint -u $user -P $port -p$password mydb
```

The command retrieves the secret and stores it temporarily within an environment variable. Next, you run a command the uses the parsed details of your secret to access your database.

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 42
Server version: 8.0.35 Source distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [mydb]>
```

40.  **Command:** To view the details of your current connection, run the following command:

```
STATUS;
```

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

--------------
mysql  Ver 15.1 Distrib 10.5.23-MariaDB, for Linux (x86_64) using  EditLine wrapper

Connection id:          42
Current database:       mydb
Current user:           admin@XX.X.X.XXX
SSL:                    Not in use
Current pager:          stdout
Using outfile:          ''
Using delimiter:        ;
Server:                 MySQL
Server version:         8.0.35 Source distributionProtocol version:       10
Connection:             mydb.cawamc5slv9j.us-west-2.rds.amazonaws.com via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb3
Conn.  characterset:    utf8mb3TCP port:               3306
Uptime:                 1 hour 16 min 12 sec

Threads: 3  Questions: 14411  Slow queries: 0  Opens: 365  Flush tables: 3  Open tables: 245  Queries per second avg: 3.152
--------------
```

 **Note:** Notice where the output shows **SSL: Not in use**. This is not preferred from a security standpoint. This is explained later in the lab, and you change the setting.

41.  **Command:** To close the current MySQL session, run the following command:

```
exit
```

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

Bye
```

42. Return to the browser tab with the **Secrets Manager** page within the **AWS Management Console**.
    
43. On the **mydbsecret-1234** page, choose the **Rotation** tab.
    
44. In the **Rotation configuration** section, choose Edit rotation.
    

On the **Edit rotation configuration** pop-up window, configure the following:

45. In the **Configure automatic rotation** section, use the toggle button to enable **Automatic rotation**.
    
46. In the **Rotation schedule** section, configure the following:
    

- For **Time unit**, use the dropdown menu and select **Days**.
- For **Days**, enter 
    
    30
    
    .

47. In the **Rotation function** section, configure the following:

- Choose **Use a rotation function from your account**.
- For **Lambda rotation function**, use the dropdown menu and select **rotation-lambda**.

 **Note:** The **rotation-lambda** function has been provided for you so that you can see how rotation works and understand the full benefit of using Secrets Manager. To view the sample code provided, [refer here](https://lab.builder-labs.skillbuilder.aws/sa/lab/arn%3Aaws%3Alearningcontent%3Aus-east-1%3A470679935125%3Ablueprintversion%2FSPL-TF-200-DBWARD-1%3A1.0.14-c5c5a5a1/en-US#lambdaCode).

48. Choose Save.

A green success banner displays at the top of the screen.

Secrets Manager begins to configure rotation for your secret, including attaching the **rotation-lambda** function and attaching a role that enables Secrets Manager to invoke the function. The secret should now be automatically rotated every 30 days.

 **Task complete:** You have successfully created a simple secret and then viewed and retrieved the secret via the console and AWS CLI. Then, you successfully accessed the MySQL database, verified the connection to the database, and enabled automatic rotation for the secret.

---

## Task 3: Secure the client to database connection in-transit

Connections to a DB instance can be encrypted using Secure Socket Layer (SSL) or Transport Layer Security (TLS) from your application. SSL/TLS connections provide one layer of security by encrypting data that moves between your client and a DB instance. Using a server certificate provides an extra layer of security by validating that the connection is being made to an Amazon RDS DB instance. It does so by checking the server certificate that is automatically installed on all DB instances that you provision.

To complete the following steps, the permissions on the **CommandHost** must be stored. A certificate bundle _global-bundle.pem_ file has already been downloaded to your **CommandHost**.

 **Learn more:** Refer to _Using SSL/TLS to encrypt a connection to a DB instance or cluster_ in the **Additional resources** section for more information.

In this task, you access your database using a SSL certificate to encrypt the data in transit. You then verify the SSL configuration.

### Task 3.1: Connect to the database using SSL encryption

49. Return to the tab with the **CommandHost** terminal window.

 **Note:** If you closed the terminal window tab or lost the connection, [refer here](https://lab.builder-labs.skillbuilder.aws/sa/lab/arn%3Aaws%3Alearningcontent%3Aus-east-1%3A470679935125%3Ablueprintversion%2FSPL-TF-200-DBWARD-1%3A1.0.14-c5c5a5a1/en-US#reconnect) for instructions on how to reconnect.

50.  **Command:** To update the permissions for the certificate, run the following commands:

```
cd ~
chmod 600 global-bundle.pem
```

 **Expected output:**

_None, unless there is an error._

51.  **Copy edit:** Copy and paste the updated version of the following code block from your text editor into the terminal window. Press ENTER to run the code. Remember that this code stores your secret into session variables.

```
secret=$(aws secretsmanager get-secret-value --secret-id SECRET_ARN | jq .SecretString | jq fromjson)
user=$(echo $secret | jq -r .username)
password=$(echo $secret | jq -r .password)
endpoint=$(echo $secret | jq -r .host)
port=$(echo $secret | jq -r .port)
```

 **Expected output:**

_None, unless there is an error._

52.  **Command:** To connect to the Amazon RDS database using the verified SSL cert, run the following command:

 **Note:** If you are connected with an SSH Client and not using Session Manager, change the **–ssl-ca** path to 

--ssl-ca=/home/ec2-user/global-bundle.pem

```
mysql -h $endpoint --ssl-ca=/home/ssm-user/global-bundle.pem --ssl-verify-server-cert -u $user -P $port -p$password mydb
```

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 52
Server version: 8.0.35 Source distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [mydb]>
```

 **Note:** The previous command associates the path to the SSL cert to the **global-bundle.pem** file, which is preloaded on the **CommandHost** instance.

 **Learn more:** The certificate bundles are available for download [here.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html#UsingWithRDS.SSL.RegionCertificates)

### Task 3.2: Verify the database connection is using SSL encryption

53.  **Command:** To view the details of your current connection, run the following command:

```
STATUS;
```

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

--------------
mysql  Ver 15.1 Distrib 10.5.23-MariaDB, for Linux (x86_64) using  EditLine wrapper

Connection id:          52
Current database:       mydb
Current user:           admin@XX.X.X.XXX
SSL:                    Cipher in use is TLS_AES_256_GCM_SHA384
Current pager:          stdout
Using outfile:          ''
Using delimiter:        ;Server:                 MySQL
Server version:         8.0.35 Source distribution
Protocol version:       10
Connection:             mydb.cawamc5slv9j.us-west-2.rds.amazonaws.com via TCP/IP
Server characterset:    utf8mb4
Db     characterset:    utf8mb4
Client characterset:    utf8mb3
Conn.  characterset:    utf8mb3
TCP port:               3306
Uptime:                 1 hour 33 min 3 sec

Threads: 3  Questions: 15552  Slow queries: 0  Opens: 366  Flush tables: 3  Open tables: 246  Queries per second avg: 2.785
--------------
```

54. Look for the **SSL:** line in the output. It should now say **Cipher in use is xxxxxxx**. This confirms that the SSL connection has been properly configured.
    
55.  **Command:** To close the current MySQL session, run the following command:
    

```
exit
```

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

Bye
```

 **Task complete:** You have successfully learned how to use an encrypted connection using SSL. This was accomplished by referencing the **global-bundle.pem** file, which had been downloaded on your **CommandHost**. You then logged into the database and verified that SSL was in use.

---

## Task 4: Test Multi-AZ failover

Multi-AZ failover mode works in a synchronous primary/secondary relationship. There are two servers running simultaneously. The primary is accessible by users, and the data is replicated in real time to a secondary instance (residing in a different Availability Zone), which is not accessible to users.

In this task, you run a preinstalled Python script (_failover_test.py_) from your CommandHost that inserts _heartbeat_ records into a database until the connection fails. The script then continues to check the connection until it comes back (when the database failover finishes). The script then outputs a summary of the event, detailing the failover.

56. Return to the tab with the **CommandHost** terminal window.
    
57.  **Command:** To change your working directory to the **home** directory, run the following command:
    

```
cd ~
```

 **Expected output:**

_None, unless there is an error._

 **Note:** This is the directory from which you run the _failover_test.py_ script.

Now that the testing environment is set up, you can start running the Python script to test the failover and data synchronization.

58.  **Command:** To run the Python script, run the following command:

```
python3 create_failover_sync_db.py
```

 **Note:** This script is run to create a temporary database and table to support _failover_test.py_. Each time this script is run, it creates the temporary database and then drops it when completed. After running the script, you are prompted to provide your **mydb** instance data and prompted whether to connect over SSL.

59.  **Command:** Enter the following in response to the prompts:

- For **This will destroy and recreate sync database and tracking table enter y to continue, n to exit [n]:**, enter 
    
    y
    
     and press ENTER.
- For **Connecting over SSL (y/n) [y]:**, enter 
    
    y
    
     and press ENTER.
- For **path to ssl cert [./global-bundle.pem]:**, enter 
    
    ./global-bundle.pem
    
    .

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

mydb.cawamc5slv9j.us-west-2.rds.amazonaws.com
Database db_test_meter created
Table db_test_meter.db_sync created
```

 **Note:** This has created the new database and table for the _failover_test.py_ script you will run to send the data and test the failover.

Before initiating the failover test, you open your database instance in the console.

60. Return to the AWS Management Console browser tab.
    
61. At the top of the AWS Management Console, in the search bar, search for and choose 
    
    Aurora and RDS
    
    .
    
62. In the left navigation pane, choose **Databases**.
    
63. Select the **mydb** database.
    

Now that everything is prepared, you start the test and initiate the failover.

Once you finish entering the metadata, the test begins running and performs a _heartbeat_ query to the MySQL database. When there is a connection disruption, the test continues to try connections every second. When connectivity returns, the test stops and reports the total time the database was not accessible. This can be used to measure the amount of time required for failover in database clusters with such capability.

64. Return to the tab with the **CommandHost** terminal window.
    
65.  **Command:** To initiate the test, run the following command:
    

```
python3 failover_test.py --test_run_id test_run_0
```

66.  **Command:** Enter the following in response to the prompts:

- For **Connecting over SSL (y/n) [y]:**, enter 
    
    y
    
     and press ENTER.
- For **path to ssl cert [./global-bundle.pem]:**, enter 
    
    ./global-bundle.pem
    
    .

 **Note:** After running the previous command, the test **begins running and performing a _heartbeat_ query to the MySQL database.**

Now that the script is running queries into the database, it is time to initiate failover.

67. Return to the RDS console with the **mydb** database selected.
    
68. Choose Actions  and choose **Reboot**.
    
69. Select the checkbox next to **Reboot With Failover?**.
    
70. Choose Confirm.
    
71. Return to the tab with the **CommandHost** terminal window.
    

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

...
Insert succeeded at Wed Jul 17 16:54:16 2024 test_run_id: test_run_0, index_id:171
Insert succeeded at Wed Jul 17 16:54:17 2024 test_run_id: test_run_0, index_id:172
Insert succeeded at Wed Jul 17 16:54:18 2024 test_run_id: test_run_0, index_id:173
Insert succeeded at Wed Jul 17 16:54:18 2024 test_run_id: test_run_0, index_id:174
Insert succeeded at Wed Jul 17 16:54:19 2024 test_run_id: test_run_0, index_id:175
Insert succeeded at Wed Jul 17 16:54:19 2024 test_run_id: test_run_0, index_id:176
Insert succeeded at Wed Jul 17 16:54:20 2024 test_run_id: test_run_0, index_id:177
Insert succeeded at Wed Jul 17 16:54:20 2024 test_run_id: test_run_0, index_id:178
Insert succeeded at Wed Jul 17 16:54:21 2024 test_run_id: test_run_0, index_id:179
Insert succeeded at Wed Jul 17 16:54:22 2024 test_run_id: test_run_0, index_id:180
Insert succeeded at Wed Jul 17 16:54:22 2024 test_run_id: test_run_0, index_id:181
Insert succeeded at Wed Jul 17 16:54:23 2024 test_run_id: test_run_0, index_id:182
Insert succeeded at Wed Jul 17 16:54:23 2024 test_run_id: test_run_0, index_id:183
Insert succeeded at Wed Jul 17 16:54:24 2024 test_run_id: test_run_0, index_id:184
Insert succeeded at Wed Jul 17 16:54:24 2024 test_run_id: test_run_0, index_id:185
(2013, 'Lost connection to MySQL server during query (The read operation timed out)')
There was an error: Db Connection failed
Connection succeeded at Wed Jul 17 16:56:26 2024

========================================
Total Db connection attempts: 188
Successful Db connections: 187
Failed Db connections: 1
failure_start_time: Wed Jul 17 16:54:26 2024
failure_end_time: Wed Jul 17 16:56:26 2024
failure condition duration: 120 seconds
Last inserted sync record id on initial primary db node: 185
Pre-failure Db node hostname: ip-172-19-2-239
Post-failure Db node hostname: ip-172-19-0-212
Newest 5 sync records in current primary db node:
[ {'created': 1721235264, 'index_id': 185, 'test_run_id': 'test_run_0'},
  {'created': 1721235264, 'index_id': 184, 'test_run_id': 'test_run_0'},
  {'created': 1721235263, 'index_id': 183, 'test_run_id': 'test_run_0'},
  {'created': 1721235263, 'index_id': 182, 'test_run_id': 'test_run_0'},
  {'created': 1721235262, 'index_id': 181, 'test_run_id': 'test_run_0'}]
```

 **Caution:** If you receive an output that looks different from the one above or gives a “traceback error”. Go back to the beginning of Task 4 and follow the steps again once your DB instance is back online.

Observe the following metrics in the output:

- **failure_start_time**
- **failure_end_time**
- **Last inserted sync record id on initial primary db node**
- **Pre-failure Db node hostname**
- **Post-failure Db node hostname**

This verifies the data was replicated to the secondary failover instance during the reboot.

Next, you log back into your MySQL database to review the **db_sync** table and see that the data replicated over.

72.  **Command:** Copy the updated version of the following code block from your text editor into the terminal window. Press ENTER to run the code.

```
secret=$(aws secretsmanager get-secret-value --secret-id SECRET_ARN | jq .SecretString | jq fromjson)
user=$(echo $secret | jq -r .username)
password=$(echo $secret | jq -r .password)
endpoint=$(echo $secret | jq -r .host)
port=$(echo $secret | jq -r .port)
```

 **Expected output:**

_None, unless there is an error._

73.  **Command:** Run the following command:

```
mysql -h $endpoint --ssl-ca=/home/ssm-user/global-bundle.pem --ssl-verify-server-cert -u $user -P $port -p$password mydb
```

 **Note:** If you are connected with an SSH Client and not using Session Manager, change the **–ssl-ca** path to 

--ssl-ca=/home/ec2-user/global-bundle.pem

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.35 Source distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [mydb]>
```

74.  **Command:** Run the following command:

```
SHOW DATABASES;
```

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

+--------------------+
| Database           |
+--------------------+
| db_test_meter      |
| information_schema |
| mydb               |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.001 sec)
```

75.  **Command:** To switch into your failover test database, run the following command:

```
USE db_test_meter;
```

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MySQL [db_test_meter]>
```

76.  **Command:** To query the table, run the following command:

```
SELECT * FROM db_sync;
```

 **Expected output:**

```
************************
**** EXAMPLE OUTPUT ****
************************

+-------------+----------+------------+
| test_run_id | index_id | created    |
+-------------+----------+------------+
| test_run_0  |        1 | 1721242293 |
| test_run_0  |        2 | 1721242294 |
| test_run_0  |        3 | 1721242294 |
| test_run_0  |        4 | 1721242295 |
| test_run_0  |        5 | 1721242295 |
| test_run_0  |        6 | 1721242296 |
| test_run_0  |        7 | 1721242296 |
| test_run_0  |        8 | 1721242297 |
| test_run_0  |        9 | 1721242297 |
| test_run_0  |       10 | 1721242298 |
| test_run_0  |       11 | 1721242298 |
| test_run_0  |       12 | 1721242299 |
| test_run_0  |       13 | 1721242299 |
| test_run_0  |       14 | 1721242300 |
| test_run_0  |       15 | 1721242300 |
| test_run_0  |       16 | 1721242301 |
| test_run_0  |       17 | 1721242302 |
| test_run_0  |       18 | 1721242302 |
| test_run_0  |       19 | 1721242303 |
| test_run_0  |       20 | 1721242303 |
| test_run_0  |       21 | 1721242304 |
| test_run_0  |       22 | 1721242304 |
| test_run_0  |       23 | 1721242305 |
| test_run_0  |       24 | 1721242305 |
| test_run_0  |       25 | 1721242306 |
| test_run_0  |       26 | 1721242306 |
| test_run_0  |       27 | 1721242307 |
| test_run_0  |       28 | 1721242307 |
| test_run_0  |       29 | 1721242308 |
| test_run_0  |       30 | 1721242308 |
| test_run_0  |       31 | 1721242309 |
| test_run_0  |       32 | 1721242309 |
| test_run_0  |       33 | 1721242310 |
| test_run_0  |       34 | 1721242311 |
| test_run_0  |       35 | 1721242311 |
| test_run_0  |       36 | 1721242312 |
| test_run_0  |       37 | 1721242312 |
| test_run_0  |       38 | 1721242313 |
| test_run_0  |       39 | 1721242313 |
| test_run_0  |       40 | 1721242314 |
| test_run_0  |       41 | 1721242314 |
| test_run_0  |       42 | 1721242315 |
| test_run_0  |       43 | 1721242315 |
| test_run_0  |       44 | 1721242316 |
| test_run_0  |       45 | 1721242316 |
+-------------+----------+------------+
45 rows in set (0.001 sec)
```

 **Note:** Observe the **db_test_meter** table and data synchronization information. This is the record of each heartbeat that was gathered during the test.

 **Task complete:** You have successfully ran the test in this task. You can infer that MySQL on RDS does synchronous primary/secondary replication. If the primary instance goes down, the secondary instance is made primary, all data available on the primary is replicated to the secondary instances, and the services can continue to operate.

---

## Conclusion

You have successfully done the following:

- Set up and configured an Amazon RDS instance with Multi-AZ failover and encryption.
- Created and stored secrets through Secrets Manager.
- Enabled automatic rotation of secrets through Secrets Manager.
- Set up encryption in transit with SSL.
- Tested Multi-AZ failover and data synchronization.

## End lab

Follow these steps to close the console and end your lab.

77. Return to the **AWS Management Console**.
    
78. At the upper-right corner of the page, choose **AWSLabsUser**, and then choose **Sign out**.
    
79. Choose **End Lab** and then confirm that you want to end your lab.
    

## Additional resources

- [Master user account privileges](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.MasterAccounts.html)
- [Introduction to backups](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html)
- [Actions, resources, and condition keys for AWS Secrets Manager](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awssecretsmanager.html)
- [Using SSL/TLS to encrypt a connection to a DB instance or cluster](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html)

## Appendix

### Access a Linux EC2 instance: Windows users

Access to an Amazon EC2 Linux instance requires a secure connection using an SSH client. The following directions walk you through the process of connecting to your Amazon Linux EC2 instance.

 **Note:** Only perform the following steps if you are connecting from a Windows machine. If you are connecting from a macOS or Linux machine, [refer here](https://lab.builder-labs.skillbuilder.aws/sa/lab/arn%3Aaws%3Alearningcontent%3Aus-east-1%3A470679935125%3Ablueprintversion%2FSPL-TF-200-DBWARD-1%3A1.0.14-c5c5a5a1/en-US#ssh-MACLinux) for instructions.

80. On the left side of the lab page, choose  **Download PPK**. Save the PPK file to the directory of your choice.
    
81. Open PuTTY (from the **Start** menu, choose **PuTTY** > **PuTTY**).
    

 **Note:** If PuTTY is not already installed on your computer, download and install it from the following URL: [https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html). If you already have an older version of PuTTY installed, we recommend that you download the latest version.

82. In the **Category** pane, choose **Session** and configure the following:

- For **Host Name**, enter 
    
    <user_name>@<CommandHost>
    
    , where 
    
    <CommandHost>
    
     is the IP value for the instance from the left side of the lab page.

 **Note:** For Amazon Linux 2 or the Amazon Linux AMI, the user name is 

ec2-user

. For an Ubuntu AMI, the user name is 

ubuntu

.

- For **Connection type**, select **SSH**.
- Ensure that the **Port** value is **22**.

83. (Optional) Configure PuTTY to automatically send ‘keepalive’ data at regular intervals to keep the session active. This is useful to avoid disconnecting from your instance due to session inactivity. To do this, in the **Category** pane, choose **Connection**. For **Seconds between keepalives**, enter 
    
    30
    
    .
    
84. In the **Category** pane, expand **Connection**, expand **SSH**, and then choose **Auth**. Complete the following:
    

- Choose **Browse**.
- Select the .ppk file that you downloaded earlier, and choose **Open**.

 **Note:** This .ppk file is usually located in the **Downloads** folder on your PC.

- (Optional) If you plan to start this session again later, you can save the session information for future use. Under **Category**, choose **Session**, enter a name for the session in **Saved Sessions**, and then choose **Save**.

85. To connect to the instance: In the **Category** pane, choose **Session**, and then choose **Open**.
    
86. If this is the first time you have connected to this instance, PuTTY displays a security alert dialog box that asks whether you trust the host to which you are connecting. Choose **Yes**. A window opens and you are connected to your instance.
    

 **Note:** If you receive an error while attempting to connect to your instance, see [Troubleshoot connecting to your Linux instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html).

### Access a Linux EC2 instance: macOS and Linux users

 **Note:** Only perform the following steps if you are connecting from a macOS or Linux machine. If you are connecting from a Windows machine, [refer here](https://lab.builder-labs.skillbuilder.aws/sa/lab/arn%3Aaws%3Alearningcontent%3Aus-east-1%3A470679935125%3Ablueprintversion%2FSPL-TF-200-DBWARD-1%3A1.0.14-c5c5a5a1/en-US#ssh-instructions) for instructions.

87. On the left side of the lab page, choose  **Download PEM**. Save the file to the directory of your choice.
    
88. Open the SSH client on your local computer.
    

 **Note:** Your local computer most likely has an SSH client installed by default. You can check for an SSH client by typing 

ssh

 at the command line. If your local computer doesn’t recognize the command, you can install an SSH client. For information about installing an SSH client on Linux or macOS X, see [http://www.openssh.com](http://www.openssh.com/).

Complete the remaining connection steps in the terminal window.

89. Change the directory to the folder where you downloaded the PEM file.

 **Note:** The PEM file is usually located in the **Downloads** folder on your computer. Access this directory by typing 

cd ~/Downloads

90. Your key must not be publicly viewable for SSH to work. Change the permissions on the PEM file by running the following command. Replace 
    
    <PEM_FILE>
    
     with the name of the PEM file you downloaded:

```
chmod 400 <PEM_FILE>
```

91. Log in to the remote instance by running the following command. Replace 
    
    <PEM_FILE>
    
     with the name of the PEM file you downloaded, 
    
    <user_name>
    
     with the user name for the instance type you are connecting to, and 
    
    <CommandHost>
    
     is the IP value for the instance from the left side of the lab page:

```
ssh -i <PEM_FILE> <user_name>@<CommandHost>
```

 **Note:** For Amazon Linux 2 or the Amazon Linux AMI, the user name is 

ec2-user

. For an Ubuntu AMI, the user name is 

ubuntu

.

92. If this is the first time you have connected to this instance, you see a response similar to the following:

```
************************
**** EXAMPLE OUTPUT ****
************************

The authenticity of host 'ec2-192-0-2-111.compute-1.amazonaws.com (192.0.2.111)'
can't be established.
RSA key fingerprint is 1f:51:ae:28:bf:89:e9:d8:1f:25:5d:37:2d:7d:b8:ca:9f:f5:f1:6f.
Are you sure you want to continue connecting (yes/no)?
```

93. When prompted, enter 
    
    yes
    

You are now connected to your instance.

 **Note:** If you receive an error while attempting to connect to your instance, see [Troubleshoot connecting to your Linux instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html).

### Reconnect to an Amazon EC2 instance in Session Manager

To reconnect to an instance in Session Manager, follow these steps:

- STEP 1: Copy the URL for the instance from the left side of the lab page and paste the URL in a new browser tab.
- STEP 2: To connect to the **home** directory, run the following command:

```
cd ~
```

### Rotation Lambda code

```
# Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

import boto3
import json
import logging
import os
import pymysql

logger = logging.getLogger()
logger.setLevel(logging.INFO)


def lambda_handler(event, context):
    """Secrets Manager RDS MySQL Handler

    This handler uses the single-user rotation scheme to rotate an RDS MySQL user credential. This rotation scheme
    logs into the database as the user and rotates the user's own password, immediately invalidating the user's
    previous password.

    The Secret SecretString is expected to be a JSON string with the following format:
    {
        'engine': <required: must be set to 'mysql'>,
        'host': <required: instance host name>,
        'username': <required: username>,
        'password': <required: password>,
        'dbname': <optional: database name>,
        'port': <optional: if not specified, default port 3306 will be used>
    }

    Args:
        event (dict): Lambda dictionary of event parameters. These keys must include the following:
            - SecretId: The secret ARN or identifier
            - ClientRequestToken: The ClientRequestToken of the secret version
            - Step: The rotation step (one of createSecret, setSecret, testSecret, or finishSecret)

        context (LambdaContext): The Lambda runtime information

    Raises:
        ResourceNotFoundException: If the secret with the specified arn and stage does not exist

        ValueError: If the secret is not properly configured for rotation

        KeyError: If the secret json does not contain the expected keys

    """
    arn = event['SecretId']
    token = event['ClientRequestToken']
    step = event['Step']

    # Setup the client
    service_client = boto3.client('secretsmanager', endpoint_url=os.environ['SECRETS_MANAGER_ENDPOINT'])

    # Make sure the version is staged correctly
    metadata = service_client.describe_secret(SecretId=arn)
    if "RotationEnabled" in metadata and not metadata['RotationEnabled']:
        logger.error("Secret %s is not enabled for rotation" % arn)
        raise ValueError("Secret %s is not enabled for rotation" % arn)
    versions = metadata['VersionIdsToStages']
    if token not in versions:
        logger.error("Secret version %s has no stage for rotation of secret %s." % (token, arn))
        raise ValueError("Secret version %s has no stage for rotation of secret %s." % (token, arn))
    if "AWSCURRENT" in versions[token]:
        logger.info("Secret version %s already set as AWSCURRENT for secret %s." % (token, arn))
        return
    elif "AWSPENDING" not in versions[token]:
        logger.error("Secret version %s not set as AWSPENDING for rotation of secret %s." % (token, arn))
        raise ValueError("Secret version %s not set as AWSPENDING for rotation of secret %s." % (token, arn))

    # Call the appropriate step
    if step == "createSecret":
        create_secret(service_client, arn, token)

    elif step == "setSecret":
        set_secret(service_client, arn, token)

    elif step == "testSecret":
        test_secret(service_client, arn, token)

    elif step == "finishSecret":
        finish_secret(service_client, arn, token)

    else:
        logger.error("lambda_handler: Invalid step parameter %s for secret %s" % (step, arn))
        raise ValueError("Invalid step parameter %s for secret %s" % (step, arn))


def create_secret(service_client, arn, token):
    """Generate a new secret

    This method first checks for the existence of a secret for the passed in token. If one does not exist, it will generate a
    new secret and put it with the passed in token.

    Args:
        service_client (client): The secrets manager service client

        arn (string): The secret ARN or other identifier

        token (string): The ClientRequestToken associated with the secret version

    Raises:
        ValueError: If the current secret is not valid JSON

        KeyError: If the secret json does not contain the expected keys

    """
    # Make sure the current secret exists
    current_dict = get_secret_dict(service_client, arn, "AWSCURRENT")

    # Now try to get the secret version, if that fails, put a new secret
    try:
        get_secret_dict(service_client, arn, "AWSPENDING", token)
        logger.info("createSecret: Successfully retrieved secret for %s." % arn)
    except service_client.exceptions.ResourceNotFoundException:
        # Generate a random password
        passwd = service_client.get_random_password(ExcludeCharacters='/@"\'\\')
        current_dict['password'] = passwd['RandomPassword']

        # Put the secret
        service_client.put_secret_value(SecretId=arn, ClientRequestToken=token, SecretString=json.dumps(current_dict), VersionStages=['AWSPENDING'])
        logger.info("createSecret: Successfully put secret for ARN %s and version %s." % (arn, token))


def set_secret(service_client, arn, token):
    """Set the pending secret in the database

    This method tries to login to the database with the AWSPENDING secret and returns on success. If that fails, it
    tries to login with the AWSCURRENT and AWSPREVIOUS secrets. If either one succeeds, it sets the AWSPENDING password
    as the user password in the database. Else, it throws a ValueError.

    Args:
        service_client (client): The secrets manager service client

        arn (string): The secret ARN or other identifier

        token (string): The ClientRequestToken associated with the secret version

    Raises:
        ResourceNotFoundException: If the secret with the specified arn and stage does not exist

        ValueError: If the secret is not valid JSON or valid credentials are found to login to the database

        KeyError: If the secret json does not contain the expected keys

    """
    # First try to login with the pending secret, if it succeeds, return
    pending_dict = get_secret_dict(service_client, arn, "AWSPENDING", token)
    conn = get_connection(pending_dict)
    if conn:
        conn.close()
        logger.info("setSecret: AWSPENDING secret is already set as password in MySQL DB for secret arn %s." % arn)
        return

    # Now try the current password
    conn = get_connection(get_secret_dict(service_client, arn, "AWSCURRENT"))
    if not conn:
        # If both current and pending do not work, try previous
        try:
            conn = get_connection(get_secret_dict(service_client, arn, "AWSPREVIOUS"))
        except service_client.exceptions.ResourceNotFoundException:
            conn = None

    # If we still don't have a connection, raise a ValueError
    if not conn:
        logger.error("setSecret: Unable to log into database with previous, current, or pending secret of secret arn %s" % arn)
        raise ValueError("Unable to log into database with previous, current, or pending secret of secret arn %s" % arn)

    # Now set the password to the pending password
    try:
        with conn.cursor() as cur:
            cur.execute("SET PASSWORD = PASSWORD(%s)", pending_dict['password'])
            conn.commit()
            logger.info("setSecret: Successfully set password for user %s in MySQL DB for secret arn %s." % (pending_dict['username'], arn))
    finally:
        conn.close()


def test_secret(service_client, arn, token):
    """Test the pending secret against the database

    This method tries to log into the database with the secrets staged with AWSPENDING and runs
    a permissions check to ensure the user has the correct permissions.

    Args:
        service_client (client): The secrets manager service client

        arn (string): The secret ARN or other identifier

        token (string): The ClientRequestToken associated with the secret version

    Raises:
        ResourceNotFoundException: If the secret with the specified arn and stage does not exist

        ValueError: If the secret is not valid JSON or valid credentials are found to login to the database

        KeyError: If the secret json does not contain the expected keys

    """
    # Try to login with the pending secret, if it succeeds, return
    conn = get_connection(get_secret_dict(service_client, arn, "AWSPENDING", token))
    if conn:
        # This is where the lambda will validate the user's permissions. Uncomment/modify the below lines to
        # tailor these validations to your needs
        try:
            with conn.cursor() as cur:
                cur.execute("SELECT NOW()")
                conn.commit()
        finally:
            conn.close()

        logger.info("testSecret: Successfully signed into MySQL DB with AWSPENDING secret in %s." % arn)
        return
    else:
        logger.error("testSecret: Unable to log into database with pending secret of secret ARN %s" % arn)
        raise ValueError("Unable to log into database with pending secret of secret ARN %s" % arn)


def finish_secret(service_client, arn, token):
    """Finish the rotation by marking the pending secret as current

    This method finishes the secret rotation by staging the secret staged AWSPENDING with the AWSCURRENT stage.

    Args:
        service_client (client): The secrets manager service client

        arn (string): The secret ARN or other identifier

        token (string): The ClientRequestToken associated with the secret version

    """
    # First describe the secret to get the current version
    metadata = service_client.describe_secret(SecretId=arn)
    current_version = None
    for version in metadata["VersionIdsToStages"]:
        if "AWSCURRENT" in metadata["VersionIdsToStages"][version]:
            if version == token:
                # The correct version is already marked as current, return
                logger.info("finishSecret: Version %s already marked as AWSCURRENT for %s" % (version, arn))
                return
            current_version = version
            break

    # Finalize by staging the secret version current
    service_client.update_secret_version_stage(SecretId=arn, VersionStage="AWSCURRENT", MoveToVersionId=token, RemoveFromVersionId=current_version)
    logger.info("finishSecret: Successfully set AWSCURRENT stage to version %s for secret %s." % (version, arn))


def get_connection(secret_dict):
    """Gets a connection to MySQL DB from a secret dictionary

    This helper function tries to connect to the database grabbing connection info
    from the secret dictionary. If successful, it returns the connection, else None

    Args:
        secret_dict (dict): The Secret Dictionary

    Returns:
        Connection: The pymysql.connections.Connection object if successful. None otherwise

    Raises:
        KeyError: If the secret json does not contain the expected keys

    """
    # Parse and validate the secret JSON string
    port = int(secret_dict['port']) if 'port' in secret_dict else 3306
    dbname = secret_dict['dbname'] if 'dbname' in secret_dict else None

    # Try to obtain a connection to the db
    try:
        conn = pymysql.connect(secret_dict['host'], user=secret_dict['username'], passwd=secret_dict['password'], port=port, db=dbname, connect_timeout=5, ssl={'ca': './global-bundle.pem'})
        return conn
    except pymysql.OperationalError:
        return None


def get_secret_dict(service_client, arn, stage, token=None):
    """Gets the secret dictionary corresponding for the secret arn, stage, and token

    This helper function gets credentials for the arn and stage passed in and returns the dictionary by parsing the JSON string

    Args:
        service_client (client): The secrets manager service client

        arn (string): The secret ARN or other identifier

        token (string): The ClientRequestToken associated with the secret version, or None if no validation is desired

        stage (string): The stage identifying the secret version

    Returns:
        SecretDictionary: Secret dictionary

    Raises:
        ResourceNotFoundException: If the secret with the specified arn and stage does not exist

        ValueError: If the secret is not valid JSON

    """
    required_fields = ['host', 'username', 'password']

    # Only do VersionId validation against the stage if a token is passed in
    if token:
        secret = service_client.get_secret_value(SecretId=arn, VersionId=token, VersionStage=stage)
    else:
        secret = service_client.get_secret_value(SecretId=arn, VersionStage=stage)
    plaintext = secret['SecretString']
    secret_dict = json.loads(plaintext)

    # Run validations against the secret
    if 'engine' not in secret_dict or secret_dict['engine'] != 'mysql':
        raise KeyError("Database engine must be set to 'mysql' in order to use this rotation lambda")
    for field in required_fields:
        if field not in secret_dict:
            raise KeyError("%s key is missing from secret JSON" % field)

    # Parse and return the secret JSON string
    return secret_dict
```

For more information about AWS Training and Certification, see [_https://aws.amazon.com/training/_](https://aws.amazon.com/training/).

_Your feedback is welcome and appreciated._  
If you would like to share any feedback, suggestions, or corrections, please provide the details in our [_AWS Training and Certification Contact Form_](https://support.aws.amazon.com/#/contacts/aws-training).