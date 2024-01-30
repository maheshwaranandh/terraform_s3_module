variable "region" {
  description = "The name of the aws region to be used"
  default = "us-east-1"
}
variable "acl" {
  description = "Access control list of the bucket"
  default = "private"
}
variable "name" {
  description = "globally unique name for the bucket"
  default = "maheshwar1811terramodulle"
}
variable "versioning" {
  description = "wheather versioning is enabled or not"
  default = true
}