resource "aws_lambda_function" "name" {
    function_name = "dev"
    runtime = "python3.9"
    role = "arn:aws:iam::897729113617:role/service-role/test-role-6yy0et5a"
    handler          = "lambda_function.lambda_handler" # Replace with your function handler
    s3_bucket        = aws_s3_bucket.lambda_bucket.id # calling code from s3 bucket 
    s3_key           = aws_s3_object.lambda_code.key # inside this folder
    
}