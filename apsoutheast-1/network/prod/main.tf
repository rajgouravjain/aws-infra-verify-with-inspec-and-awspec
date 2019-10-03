#***************** prod_VPC *****************************
module "prod" {
  source              = "../../../modules/vpc"
  vpc_name            = "prod"
  vpc_cidr            = "10.10.0.0/16"
  public_subnet_cidr  = ["10.10.0.0/22", "10.10.4.0/22", "10.10.8.0/22"]
  private_subnet_cidr = ["10.10.12.0/22", "10.10.16.0/22", "10.10.20.0/22"]
}
