variable "aws_region" {
  type = string
  default = "eu-west-1"
}
variable "amazon_side_asn" {
  type = string
  default = "64512"
}

variable "auto_accept_shared_attachments" {
  type = bool
  default = true
}

variable "default_route_table_association" {
  type = bool
  default = false
}

variable "default_route_table_propagation" {
  type = bool
  default = false
}

variable "dns_support" {
  type = bool
  default = true
}

variable "vpn_ecmp_support" {
  type = bool
  default = true
}