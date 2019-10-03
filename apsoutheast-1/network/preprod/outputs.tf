#------------------------------------------------------------------------------
output "preprod_vpc" {
  value       = module.preprod.vpc_id
  description = "Preprod VPC Details"
}
output "preprod_public_subnet_id" {
  value = module.preprod.public_subnet_id
}

output "preprod_private_subnet_id" {
  value = module.preprod.private_subnet_id
}
