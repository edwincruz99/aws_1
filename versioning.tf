resource "aws_s3_bucket" "example" {
  bucket = "test-bucket"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_test-bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_test-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
