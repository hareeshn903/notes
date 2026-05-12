module "vpc" {
  source = "./modules/vpc"

  vpc_name = "vpc-dev"
  vpc_cidr = "10.0.0.0/16"

  azs = ["us-east-1a", "us-east-1b"]

  public_subnets   = ["10.0.101.0/24", "10.0.102.0/24"]
  private_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  database_subnets = ["10.0.151.0/24", "10.0.152.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Owner       = "kalyan"
    Environment = "dev"
  }
}