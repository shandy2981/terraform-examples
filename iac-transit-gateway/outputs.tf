output "transit_gateway_arn" {
  description = "EC2 Transit Gateway Amazon Resource ARN"
  value = module.tgw.ec2_transit_gateway_arn
}

output "transit_gateway_id" {
  description = "EC2 Transit Gateway Identifier"
  value = module.tgw.ec2_transit_gateway_id
}