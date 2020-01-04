resource "aws_s3_bucket" "test-bucket-staging" {
  bucket = "my-test-bucket-staging"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
