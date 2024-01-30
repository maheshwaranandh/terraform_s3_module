output "bucket_id" {
  description = "The id of the bucket"
  value = aws_s3_bucket.example_bucket.id
}
output "bucket_arn" {
  description = "The arn value of the bucket"
  value = aws_s3_bucket.example_bucket.arn
}
output "domain_name" {
  description = "The domain name of the bucket"
  value = aws_s3_bucket.example_bucket.bucket_domain_name
}