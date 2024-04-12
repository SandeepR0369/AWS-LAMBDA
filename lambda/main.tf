resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda_execution_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "lambda.amazonaws.com",
      },
    }],
  })
}

resource "aws_lambda_function" "my_lambda" {
  function_name = "MyGoLambdaFunction"
  handler       = "main"
  runtime       = "go1.x"
  role          = aws_iam_role.lambda_exec_role.arn

  filename         = "lambda_function.zip" # The path is relative to the working directory for Terraform commands
  source_code_hash = filebase64sha256("lambda_function.zip")

  # Other configurations like environment variables, memory, timeout, etc.
}
