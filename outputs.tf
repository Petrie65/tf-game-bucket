// Bucket
output "bucket_domain_name" {
  value       = module.s3_bucket.bucket_domain_name
  description = "FQDN of bucket"
}

output "bucket_id" {
  value       = module.s3_bucket.bucket_id
  description = "Bucket Name (aka ID)"
}

output "bucket_arn" {
  value       = module.s3_bucket.bucket_arn
  description = "Bucket ARN"
}

output "bucket_region" {
  value       = module.s3_bucket.bucket_region
  description = "Bucket region"
}

// User Dev
output "dev_user_name" {
  value       = module.s3_user_developer.user_name
  description = "Normalized IAM user name"
}

output "dev_user_arn" {
  value       = module.s3_user_developer.user_name
  description = "The ARN assigned by AWS for the user"
}

output "dev_user_unique_id" {
  value       = module.s3_user_developer.user_name
  description = "The user unique ID assigned by AWS"
}

output "dev_access_key_id" {
  sensitive   = true
  value       = module.s3_user_developer.user_name
  description = "Access Key ID"
}

output "dev_secret_access_key" {
  sensitive   = true
  value       = module.s3_user_developer.user_name
  description = "Secret Access Key. This will be written to the state file in plain-text"
}

// User Client
# output "client_user_name" {
#   value       = module.s3_user_client.user_name
#   description = "Normalized IAM user name"
# }

# output "client_user_arn" {
#   value       = module.s3_user_client.user_name
#   description = "The ARN assigned by AWS for the user"
# }

# output "client_user_unique_id" {
#   value       = module.s3_user_client.user_name
#   description = "The user unique ID assigned by AWS"
# }

# output "client_access_key_id" {
#   sensitive   = true
#   value       = module.s3_user_client.user_name
#   description = "Access Key ID"
# }

# output "client_secret_access_key" {
#   sensitive   = true
#   value       = module.s3_user_client.user_name
#   description = "Secret Access Key. This will be written to the state file in plain-text"
# }