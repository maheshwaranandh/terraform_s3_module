resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name
}
resource "aws_s3_bucket_acl" "example_bicket_acl" {
  bucket = aws_s3_bucket.example_bucket.id
  acl = var.bucket_acl
}
resource "aws_s3_bucket_versioning" "example_bucket_versioning" {
  bucket = aws_s3_bucket.example_bucket.id
  versioning_configuration {
    status = var.versioning?"Enabled":"Disabled"
  }
}
