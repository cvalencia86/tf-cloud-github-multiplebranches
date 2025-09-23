#create an S3 bucket
resource "aws_s3_bucket" "terraform-github-bucket" {
  bucket = "multiplebranches-19863008"
}

#to upload data to the bucket
resource "aws_s3_object" "terraform-github-object" {
  bucket  = aws_s3_bucket.terraform-github-bucket.id
  key     = "multiplebranches.txt"
  content = "this is a sample file to test multiple branches in github with terraform cloud"
}

resource "aws_tag" "s3-bucket-tag" {
  resource_id = aws_s3_bucket.terraform-github-bucket.id
  key         = "BillingCode"
  value       = var.aws_tags
}