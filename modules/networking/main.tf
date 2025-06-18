module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = var.vpc_name
  cidr = var.cidr_block

  azs             = var.availability_zones
  public_subnets  = var.public_subnet_ips
  private_subnets = var.private_subnet_ips

  single_nat_gateway = true
  enable_nat_gateway = true
  enable_vpn_gateway = false 
  enable_dns_support   = true
  enable_dns_hostnames = true 

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}
