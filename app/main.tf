provider "aws" {
  profile    = "terraform-test"
  version    = "~> 2.43"
  region     = var.AWS_REGION
}

terraform {
  backend "s3" {
    profile   = "terraform-test"

    bucket    = "terraform-test-remote-state-bucket"
    key       = "terraform/terraform.tfstate"
    region    = "eu-west-2"
    encrypt   = true
    dynamodb_table = "terraform-test-remote-state-lock"
  }
}
