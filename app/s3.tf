resource "aws_s3_bucket" "test-bucket" {
  bucket = "my-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
