module "lambda_function" {
  source = "./lambda"
  
  # Pass any required variables to the lambda module.
  # Example:
  # function_name = "MyGoLambdaFunction"
}
