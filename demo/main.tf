provider "aws" {
  region = var.region
}
module "s3_bucket" {
  source = "https://github.com/maheshwaranandh/terraform_s3_module/tree/master"
  bucket = var.name
  acl = var.acl
  versioning = var.versioning
}