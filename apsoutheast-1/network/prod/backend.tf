#********* backend ***************
terraform {
  backend "s3" {
    bucket = "devops-system"
    key    = "terraform/eu-west-2/network/prod.tfstate"
    region = "us-west-2"
  }
}
