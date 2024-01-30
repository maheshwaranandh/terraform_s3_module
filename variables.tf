variable "bucket_name" {
  description = "The name of the S3 bucket"
}
variable "bucket_acl" {
  description = "Access control list of the s3 bucket"
  default = "private"
}
variable "versioning" {
  description = "versioning is enabled when set to true else not enabled"
  default = false
  type = bool
}
