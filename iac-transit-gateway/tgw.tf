locals {
    name = "example-tgw-${replace(basename(path.cwd), "_", "-")}"
    region = var.aws_region

    tags = {

    }
}

module "tgw" {
    source = "./modules/TGW"

    name = local.name
    description = "Simple example to provision TGW and attache to VPC for multi-account connectivity"
    amazon_side_asn = var.amazon_side_asn

    # When "true" there is no need for RAM resources if using multiple AWS accounts
    enable_auto_accept_shared_attachments = var.auto_accept_shared_attachments

    vpc_attachments = {
        vpc = {
            vpc_id = module.vpc_vpc_id
            subnet_ids = module.vpc.private_subnets
            dns_support = var.dns_support
            default_route_table_association = var.default_route_table_association
            default_route_table_propagation = var.default_route_table_propagation
            vpn_ecmp_support = var.vpn_ecmp_support
        }
    } 
}