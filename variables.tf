variable aws_region_name {}
variable s3_bucket_name {}
variable "s3_tags" {  type = map }
variable "s3_regions" { type = list }
output "bucket_domain_name" {
    value = aws_s3_bucket.main.bucket_domain_name
}
