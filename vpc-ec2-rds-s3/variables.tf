#### VPC Variables ####
variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
    type = string
    default = "10.0.1.0/24"
    description = "Public subnet CIDR range"
}

variable "private_subnet_cidr" {
    type = string
    default = "10.0.2.0/24"
    description = "Private subnet CIDR range"
}

variable "azs" {
    type = string
    default = "eu-west-1a"
}

variable "standard_tags" {
  type = map(string)
  default = {
    "name"        = "learning_terraform",
    "cost_center" = "1000000"
  }
}

##### EC2 Variables ####
variable "ami_id" {
    type = string
    default = "ami-12232424"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

#### RDS Variables ####
variable "db_instance_class" {
  type        = string
  description = "RDS instance type"
  default = "t2.micro"
}

variable "db_name" {
  type        = string
  description = "Database name"
  default = "Gaurav test DB"
}

variable "db_username" {
  type        = string
  description = "shandy"
}

variable "db_password" {
  type        = string
  description = "shandy"
}

#### S3 variables ####
variable "bucket_name" {
    type = string
    default = "gaurav-s3-bucket"
}