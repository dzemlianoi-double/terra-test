provider "aws" {
  profile    = "terraform-test"
  version    = "~> 2.43"
  region     = "eu-west-2"
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rg-test"

    workspaces {
      prefix = "backend-"
    }
  }
}
