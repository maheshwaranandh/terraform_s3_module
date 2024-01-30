provider "aws" {
  region = var.region
}
module "s3_bucket" {
  source = "github.com/maheshwaranandh/terraform_s3_module"
  bucket_name = var.name
  bucket_acl = var.acl
  versioning = var.versioning
}