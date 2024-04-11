variable "aws_region" {
  description = "AWS region to deploy the resources into"
  type        = string
  default     = "us-east-1"
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
  default     = "MyGoLambdaFunction"
}

# Add more variables as needed
