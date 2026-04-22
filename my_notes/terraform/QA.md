https://www.youtube.com/playlist?list=PL184oVW5ERMCirZu6wRL2NmUENHixB4mt

### What is Terraform?

Terraform is an open-source Infrastructure as Code tool, it allows us to define and manage cloud infrastructure using code. It uses a declarative approach where we describe the desired state, and Terraform automatically provisions and maintains the resources. 

it works across multiple cloud providers like AWS,  Azure, and GCP, as well as on-premises environments. 

It is mainly used for automating infrastructure, ensuring consistency across environments, and managing multi-cloud deployments efficiently.

We write code to create things like:

* Servers (VMs)
* Networks
* Databases
* Load balancers
  across cloud providers like AWS, Microsoft Azure, and Google Cloud.

we describe what infrastructure we want as desired state. Terraform takes this desired state and figures out how to create or modify resources to match it. 


---



In Terraform, providers, resources, and data sources are the core building blocks that define how your infrastructure is created and managed.

### Providers
A provider in Terraform is a plugin that enables interaction with an API. This includes cloud providers, SaaS providers, and other APIs. The providers are specified in the Terraform configuration code. They tell Terraform which services it needs to interact with.

A provider in Terraform is a plugin it used to interact with an API of cloud providers, SaaS providers, and other APIs.
The providers are specified in the Terraform configuration code.
They tell Terraform which services it needs to interact with 

For example, if we  want to use Terraform to create a virtual machine on AWS, you would need to use the aws provider. The aws provider provides a set of resources that Terraform can use to create, manage, and destroy virtual machines on AWS.

```provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0" # Change the AMI 
  instance_type = "t2.micro"
}
```

A resource represents a real infrastructure component that Terraform will create, manage, or destroy. For example, a virtual machine, a storage bucket, a database, or a network are all resources. When you define a resource in your configuration, you are describing the desired state of that object, and Terraform ensures that the actual infrastructure matches that definition. In simple terms, resources are the “things” you build using Terraform.


data sources are used to fetch information about existing infrastructure that Terraform did not create (or that already exists outside your current configuration).
we can use a data source to retrieve its details and then use that information in our configuration
They are read-only, meaning they don’t create, update, or delete anything

For example, instead of hardcoding values like IDs, IPs, or names, you can dynamically fetch them from your cloud provider such as Amazon Web Services, Microsoft Azure, or Google Cloud Platform.


---
# What is null_resource?

null_resource is used to execute custom actions in Terraform without managing any real infrastructure.
it acts like a placeholder to run scripts or trigger actions inside the Terraform workflow.
It’s mainly used for running shell commands, calling scripts, or triggering operations that are not directly supported by Terraform providers.
it works with provisioners like local-exec or remote-exec. For example, we might use a null_resource to run a script after a VM is created or to perform some configuration step.
It also supports something called triggers, which allow you to re-run the null_resource whenever specific values change.

```
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello, Terraform!"
  }
}
```

```
resource "null_resource" "example" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "echo Running every time"
  }
}
```

---

What’s terraform init used for?

“terraform init initializes the working directory by downloading providers, setting up the backend, and preparing modules so Terraform can run the configuration.”

terraform init is the first command you run when working with a Terraform project. It initializes the working directory and prepares it for use.
When you run terraform init, Terraform downloads and installs the required providers, sets up the backend (like remote state storage if configured), and initializes any modules used in the configuration.
It essentially sets up all the dependencies Terraform needs before you can run commands like plan or apply.
So, without running terraform init, Terraform won’t be able to execute your configuration properly.

>
>```terraform init```
>
>Terraform performs a few key setup steps:
>Downloads providers
>>It fetches the required plugins (like AWS, Azure, GCP) defined in your configuration.
>
>Initializes backend
>>Sets up where Terraform state will be stored (local file, S3, remote backend, etc.).
>
>Downloads modules
>>If you’re using modules from external sources, it pulls them into your project.
Creates .terraform/ directory
This folder stores plugins, modules, and internal metadata.


---
### What does terraform validate do?

terraform validate is used to check whether the Terraform configuration is syntactically correct and internally consistent—without actually applying anything.
It verifies things like:
- Syntax correctness → no typos or formatting issues
- Valid arguments names → correct resource and provider configurations
- Internal consistency → proper references between resources
   
It does not connect to any cloud provider or check whether the infrastructure actually exists. It’s purely a local validation step to catch errors early before running plan or apply.

---
### When do you use terraform fmt?

“terraform fmt is used to automatically format Terraform configuration files according to standard style conventions. It improves readability and consistency across codebases but doesn’t change the logic or behavior of the configuration. It’s commonly used in development and CI/CD pipelines.”

What it does `terraform fmt`
Terraform will:
  Fix indentation
  Align arguments neatly
  Standardize spacing
  Make code follow Terraform style conventions

---

### What does terraform refresh do internally?

**`terraform refresh`** is used to update Terraform’s state file to match the real-world infrastructure.
It detects any changes made outside Terraform and updates the state accordingly.

Internally, Terraform goes through each resource defined in the state file and makes API calls to the provider (like AWS, Azure, etc.) to fetch the current state of those resources. It then compares this real-time information with what’s stored in the state file and updates the state accordingly.

This is useful when there are manual changes or drift in the infrastructure outside of Terraform. After refresh, Terraform has an accurate view of the current environment.

terraform refresh does not modify infrastructure—it only updates the state file.

### What it does

When you run:

```bash
terraform refresh
```

Terraform will:

* Query the provider (AWS, Azure, etc.)
* Compare real infrastructure with the state file
* Update the state file to reflect actual values


---

What happens internally during terraform apply?

“terraform apply is used to execute the changes defined in Terraform configuration. It provisions, updates, or deletes infrastructure based on the execution plan and then updates the state file. It’s the command that actually makes changes in the real environment.”

**What it does**
When you run:
```terraform apply```
Terraform will:
  >Read your .tf configuration
  Compare it with the current state
  Generate an execution plan
  Ask for approval (optional auto-approve)
  Provision or modify resources (VMs, networks, databases, etc.)

---
> When you run terraform apply, Terraform executes the changes required to match your infrastructure with the desired configuration.
Internally, it first refreshes the state to get the latest real-world infrastructure data. Then it compares your configuration with the current state and generates an execution plan (if not already provided).
Next, Terraform builds a dependency graph of all resources to determine the correct order of operations. Based on this graph, it performs actions like create, update, or delete resources in parallel where possible.
Terraform then makes API calls through the configured providers (like AWS or Azure) to apply those changes.
As each resource is successfully created or modified, Terraform updates the state file to reflect the new infrastructure.