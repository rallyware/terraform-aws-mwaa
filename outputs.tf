output "s3_bucket_arn" {
  value       = local.s3_bucket_arn
  description = "ARN of the S3 bucket"
}

output "execution_role_arn" {
  value       = local.execution_role_arn
  description = "IAM Role ARN for Amazon MWAA Execution Role"
}

output "arn" {
  value       = one(aws_mwaa_environment.default[*].arn)
  description = "The ARN of the Amazon MWAA Environment"
}

output "created_at" {
  value       = one(aws_mwaa_environment.default[*].created_at)
  description = "The Created At date of the Amazon MWAA Environment"
}

output "logging_configuration" {
  value       = try(aws_mwaa_environment.default[0].logging_configuration, [])
  description = "The Logging Configuration of the Amazon MWAA Environment"
}

output "service_role_arn" {
  value       = one(aws_mwaa_environment.default[*].service_role_arn)
  description = "The Service Role ARN of the Amazon MWAA Environment"
}

output "status" {
  value       = one(aws_mwaa_environment.default[*].status)
  description = "The status of the Amazon MWAA Environment"
}

output "tags_all" {
  value       = try(aws_mwaa_environment.default[0].tags_all, [])
  description = "A map of tags assigned to the resource, including those inherited from the provider for the Amazon MWAA Environment"
}

output "webserver_url" {
  value       = one(aws_mwaa_environment.default[*].webserver_url)
  description = "The webserver URL of the Amazon MWAA Environment"
}

output "security_group_id" {
  value       = one(module.mwaa_security_group[*].id)
  description = "The ID of the created security group"
}

output "security_group_arn" {
  value       = one(module.mwaa_security_group[*].arn)
  description = "The ARN of the created security group"
}

output "security_group_name" {
  value       = one(module.mwaa_security_group[*].name)
  description = "The name of the created security group"
}
