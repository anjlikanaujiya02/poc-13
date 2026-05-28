module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = "eks-vpc"
  cidr = var.vpc_cidr

  azs            = ["us-east-1a", "us-east-1b"]
  public_subnets = var.public_subnets

  enable_nat_gateway = false
}
