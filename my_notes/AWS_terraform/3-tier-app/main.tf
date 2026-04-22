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

provider "aws" {
  region = "us-east-1"
}