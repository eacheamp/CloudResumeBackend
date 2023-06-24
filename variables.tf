variable "region" {
    type    = string
    default = "us-east-1"
}
variable "domain_name" {
    type        = string
    description = "site domain of s3 hosted website"
}
variable "s3_bucket" {
  type        = string
  description = "The name of the S3 bucket to store the Lambda function code"
  default     = "terraform-api-gateway-lambda-bucket-eacheampong" // must be unique - change this to something unique
}
variable "account_id" {
  type        = string
  description = "The account number for AWS account"
  sensitive   = true
}
variable "dynamotablename" {
  type        = string
  description = "The table name for site visitor counter table"
  sensitive   = true
}
variable "api_name" {
    type        = string
    description = "Name of api gateway rest_api to fetch data from dynamo table"
    default     = "cloud-resume-api-gateway"
}
variable "api_gateway_region" {
  type        = string
  description = "The region in which to create/manage resources"
  default     = "us-east-1"
}
variable "api_gateway_account_id" {
  type        = string
  description = "The account ID in which to create/manage resources"
}
variable "lambda_function_name" {
  type        = string
  description = "The name of the Lambda function"
}
variable "lambda_function_arn" {
  type        = string
  description = "The ARN of the Lambda function"
}
variable "http_api_stage_name" {
  type        = string
  description = "The name of the API Gateway stage"
  default     = "prod"
}