resource "aws_s3_bucket" "test-bucket-staging" {
  bucket = "my-test-bucket-staging"
  acl    = "private"
  region = "eu-west-2"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
