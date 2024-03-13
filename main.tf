provider "aws" {
  region = "us-east-2"
}
resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name
}
resource "aws_s3_bucket_versioning" "example_bucket_versioning" {
  bucket = aws_s3_bucket.example_bucket.id
  versioning_configuration {
    status = var.versioning?"Enabled":"Disabled"
  }
}
resource "aws_s3_bucket_ownership_controls" "example_controls" {
  bucket = aws_s3_bucket.example_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
resource "aws_s3_bucket_public_access_block" "example_blocks" {
  count = var.bucket_acl == "public-read" || var.bucket_acl == "public-read-write" ? 1:0
  bucket = aws_s3_bucket.example_bucket.id
  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false

}
resource "aws_s3_bucket_acl" "example_bucket_acl" {
  depends_on = [ aws_s3_bucket_ownership_controls.example_controls,aws_s3_bucket_public_access_block.example_blocks ]
  bucket = aws_s3_bucket.example_bucket.id
  acl = var.bucket_acl
}

