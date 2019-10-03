#*****************preprod VPC *****************************
module "preprod" {
  source              = "../../../modules/vpc"
  vpc_name            = "preprod"
  vpc_cidr            = "10.11.0.0/16"
  public_subnets  = { "eu-west-2a" = "10.11.0.0/20", "eu-west-2b" = "10.11.16.0/20" }
  private_subnets = { "eu-west-2a" = "10.11.32.0/20", "eu-west-2b" = "10.11.48.0/20" }
  domain_name =  "eu-west-2.compute.internal"
  name_servers = ["8.8.8.8", "4.4.2.2"]
}
