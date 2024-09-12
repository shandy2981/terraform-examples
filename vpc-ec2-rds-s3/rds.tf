module "rds" {
    source = "./modules/RDS"
    db_name = var.db_name
    db_instance_class = var.db_instance_class
    db_username = var.db_username
    db_password = var.db_password
}