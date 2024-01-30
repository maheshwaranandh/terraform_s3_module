# S3 bucket module
## Purpose:
#### This terraform module will help you create a new s3 bucket in your aws account based on the inputs you provide.
## How to use in code?
``` hcl
module "s3_bucket" {
  source = "github.com/maheshwaranandh/terraform_s3_module"
  bucket_name = var.name
  bucket_acl = var.acl
  versioning = var.versioning
}
```
## Input variables:
### name: globally unique name for your aws S3 bucket
#### Type=String
### acl: access control list of your S3 bucket
#### Type=String
### versioning: wheather you want to store versions of your S3 bucket
#### Type=Bool

## Output variables
### bucket_id: name of the bucket
### bucket_arn: amazon resource number of the bucket
### domain_name: domain name to access the bucket

