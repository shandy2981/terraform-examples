variable "cidr_block" {
  type = string
  default = ""
  description = "CIDR block for VPC"
}

variable "public_subnet_cidr" {
    type = string
    default = ""
    description = "Public subnet CIDR range"
}

variable "private_subnet_cidr" {
    type = string
    default = ""
    description = "Private subnet CIDR range"
}

variable "azs" {
    type = string
    default = ""
}

variable "standard_tags" {
  type = map(string)
  default = {}
}