
provider "aws" {
	region = var.aws_region_name
	profile = "Bhanu-Terraform"
	shared_credentials_file = "/home/bhanu/.aws/credentials"
}

resource "aws_s3_bucket" "main" { 
  bucket = var.s3_bucket_name
  acl = "private"
  tags = {
    env = lookup(var.s3_tags,"environment")
  }
  region = var.s3_regions[0]
}

