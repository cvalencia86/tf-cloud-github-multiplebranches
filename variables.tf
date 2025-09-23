#variable for aws tags
variable "aws_tags" {
    type = map(string)
    default = {
        Owner       = "DevOps Team"
        Environment = "Development"
        Project     = "Terraform Cloud with GitHub multiple bracnhes"
    }
    }