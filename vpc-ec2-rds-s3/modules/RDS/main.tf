resource "aws_db_instance" "rds_instance" {
    instance_class       = var.db_instance_class
    allocated_storage    = 20
    engine               = "mysql"
    engine_version       = "8.0"
    db_name              = var.db_name
    username             = var.db_username
    password             = var.db_password
    skip_final_snapshot  = true

    tags = {
        Name = "MyDatabase"
    }
}
