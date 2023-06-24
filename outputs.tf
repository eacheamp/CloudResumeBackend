output "visitor_countLambdaName" {
    value = aws_lambda_function.visitor_count_lambda.function_name
}

output "visitor_countLambdarn" {
    value = aws_lambda_function.visitor_count_lambda.invoke_arn
}

output "dynamoDBLambdaPolicyarn" {
    value = aws_iam_policy.dynamoDBLambdaPolicy.arn
}

output "db_table" {
    value = aws_dynamodb_table.site-stats-dynamodb-table
}

output "http_api_url" {
  value = "${aws_apigatewayv2_api.http_api.api_endpoint}"
}

