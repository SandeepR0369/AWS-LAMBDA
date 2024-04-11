output "lambda_function_arn" {
  description = "The ARN of the deployed Lambda function"
  value       = aws_lambda_function.my_lambda.arn
}

output "lambda_function_name" {
  description = "The name of the deployed Lambda function"
  value       = aws_lambda_function.my_lambda.function_name
}
