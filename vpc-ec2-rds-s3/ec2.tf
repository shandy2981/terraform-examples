module "ec2" {
    source = "./modules/EC2"
    ami_id = var.ami_id
    instance_type = var.instance_type
}