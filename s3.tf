#create an S3 bucket
resource "aws_s3_bucket" "terraform-github-bucket" {
  bucket = "multiplebranches-19863008"
  tags = {
    Name        = "terraform-github-multiplebranches"
    Owner       = var.aws_tags["Owner"]
    Environment = var.aws_tags["Environment"]
    Project     = var.aws_tags["Project"]
}
}

#to upload data to the bucket
resource "aws_s3_object" "terraform-github-object" {
  bucket  = aws_s3_bucket.terraform-github-bucket.id
  key     = "multiplebranches.txt"
  content = "this is a sample file to test multiple branches in github with terraform cloud"
}