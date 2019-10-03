#---------------------------------------------------------------------------
output "prod_VPC" {
  value       = module.prod.route_table
  description = "VPC Details"
}
output "prod-Public-subnet-id" {
  value = module.prod.public_subnet_id
}
output "prod-Private-subnet-id" {
  value = module.prod.private_subnet_id
}
