variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

# Optionally define these if you're not using environment variables or IAM roles
# variable "aws_access_key" {
#   description = "AWS access key"
#   type        = string
# }
# 
# variable "aws_secret_key" {
#   description = "AWS secret key"
#   type        = string
# }
