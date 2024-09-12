module "vpc" {
  source = "./modules/VPC"
#   version = "1.0"
  cidr_block = var.cidr_block
  azs = "eu-west-1a"
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}