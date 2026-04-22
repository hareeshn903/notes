``` hcl

terraform {
  #https://developer.hashicorp.com/terraform/install
  required_version = "~> 1.14.8"  # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx}
  
    required_providers {

        #https://registry.terraform.io/providers/hashicorp/aws/latest
        aws = {
        source  = "hashicorp/aws"
        version = "~> 6.4.0"   # which means any version equal & above 6.4 like 6.4.0, 6.4.1 etc and < 6.5
        }
    }   
}
```
``` hcl
provider "aws" {
  region = "us-east-1"
}
```

Authentication and Configuration

Configuration for the AWS Provider can be derived from several sources, which are applied in the following order:
1. Parameters in the provider configuration
2. Environment variables
3. Shared credentials files
4. Shared configuration files
5. Container credentials
6. Instance profile credentials and Region

This order matches the precedence used by the AWS CLI and the AWS SDKs.

Credentials can be provided by adding an access_key, secret_key, and optionally token, to the aws provider block.

``` hcl
provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}
```
Other settings related to authorization can be configured, such as:
profile
shared_config_files
shared_credentials_files

#### Environment Variables
Credentials can be provided by using the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and optionally AWS_SESSION_TOKEN environment variables. The Region can be set using the AWS_REGION or AWS_DEFAULT_REGION environment variables.

``` hcl
provider "aws" {}
```
```
% export AWS_ACCESS_KEY_ID="anaccesskey"
% export AWS_SECRET_ACCESS_KEY="asecretkey"
% export AWS_REGION="us-west-2"
% terraform plan
```

Other environment variables related to authorization are:
AWS_PROFILE
AWS_CONFIG_FILE
AWS_SHARED_CREDENTIALS_FILE

#### Shared Configuration and Credentials Files
The AWS Provider can source credentials and other settings from the shared configuration and credentials files. 
By default, these files are located at $HOME/.aws/config and $HOME/.aws/credentials on Linux and macOS, and "%USERPROFILE%\.aws\config" and "%USERPROFILE%\.aws\credentials" on Windows.
If no named profile is specified, the **default** profile is used. Use the profile parameter or AWS_PROFILE environment variable to specify a named profile.
The locations of the shared configuration and credentials files can be configured using either the parameters shared_config_files and shared_credentials_files or the environment variables AWS_CONFIG_FILE and AWS_SHARED_CREDENTIALS_FILE.

For example:
``` hcl
provider "aws" {
  shared_config_files      = ["/Users/tf_user/.aws/conf"]
  shared_credentials_files = ["/Users/tf_user/.aws/creds"]
  profile                  = "customprofile"
}
```
#### Container Credentials
If you're running Terraform on CodeBuild or ECS and have configured an IAM Task Role, Terraform can use the container's Task Role. This support is based on the underlying AWS_CONTAINER_CREDENTIALS_RELATIVE_URI and AWS_CONTAINER_CREDENTIALS_FULL_URI environment variables being automatically set by those services or manually for advanced usage.
If you're running Terraform on EKS and have configured IAM Roles for Service Accounts (IRSA), Terraform can use the pod's role. This support is based on the underlying AWS_ROLE_ARN and AWS_WEB_IDENTITY_TOKEN_FILE environment variables being automatically set by Kubernetes or manually for advanced usage.
#### Instance profile credentials and Region
When the AWS Provider is running on an EC2 instance with an IAM Instance Profile set, the provider can source credentials from the EC2 Instance Metadata Service. Both IMDS v1 and IMDS v2 are supported.
A custom endpoint for the metadata service can be provided using the ec2_metadata_service_endpoint parameter or the AWS_EC2_METADATA_SERVICE_ENDPOINT environment variable.
Assuming an IAM Role
If provided with a role ARN, the AWS Provider will attempt to assume this role using the supplied credentials.
Usage:
``` hcl
provider "aws" {
  assume_role {
    role_arn     = "arn:aws:iam::123456789012:role/ROLE_NAME"
    session_name = "SESSION_NAME"
    external_id  = "EXTERNAL_ID"
  }
}
```

To assume a role with role chaining, do the following:
``` hcl
provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::123456789012:role/INITIAL_ROLE_NAME"
  }
  assume_role {
    role_arn = "arn:aws:iam::123456789012:role/FINAL_ROLE_NAME"
  }
}
```
Hands-on: Try the Use AssumeRole to Provision AWS Resources Across Accounts tutorial.
Assuming an IAM Role Using A Web Identity
If provided with a role ARN and a token from a web identity provider, the AWS Provider will attempt to assume this role using the supplied credentials.
Usage:
``` hcl
provider "aws" {
  assume_role_with_web_identity {
    role_arn                = "arn:aws:iam::123456789012:role/ROLE_NAME"
    session_name            = "SESSION_NAME"
    web_identity_token_file = "/Users/tf_user/secrets/web-identity-token"
  }
}
```
Using an External Credentials Process
To use an external process to source credentials, the process must be configured in a named profile, including the default profile. The profile is configured in a shared configuration file.
For example:
``` hcl
provider "aws" {
  profile = "customprofile"
}
```
[profile customprofile]
credential_process = custom-process --username jdoe

