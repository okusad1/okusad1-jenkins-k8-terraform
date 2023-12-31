provider "aws" {
  region = var.region
}


terraform {
  backend "s3" {
    bucket = "okusad1-raycoy-aws-deploy-jenkins"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "raycoy-aws-deploy-jenkins-lock"
  }
}