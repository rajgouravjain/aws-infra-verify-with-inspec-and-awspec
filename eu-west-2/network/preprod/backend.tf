#********* backend ***************
terraform {
  backend "s3" {
    bucket = "devops-bucket"
    key    = "terraform/eu-west-2/network/preprod.tfstate"
    region = "eu-west-2"
  }
}
