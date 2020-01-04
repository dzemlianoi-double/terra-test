provider "aws" {
  profile    = "terraform-test"
  version    = "~> 2.43"
  region     = "eu-west-2"
}

resource "aws_s3_bucket" "terraform_test_remote_state" {
  bucket = "terraform-test-remote-state-bucket"
  acl    = "private"
  tags = {
    Name = "terraform-test"
  }
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "terraform_test_remote_state_lock" {
  name           = "terraform-test-remote-state-lock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  lifecycle {
    prevent_destroy = true
  }
}
