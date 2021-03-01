
module "s3_bucket" {
  source             = "cloudposse/s3-bucket/aws"
  acl                = "public-read"
  enabled            = true
  versioning_enabled = true
  stage              = "dev"
  namespace          = "game-bucket"
}

module "s3_user_developer" {
  name         = "game-bucket-dev"
  source       = "cloudposse/iam-s3-user/aws"
  namespace    = "game-bucket"
  stage        = "dev"
  s3_actions   = ["*"]
  s3_resources = [module.s3_bucket.bucket_arn]
}

# module "s3_user_client" {
#   name         = "game-bucket-client"
#   source       = "cloudposse/iam-s3-user/aws"
#   namespace    = "game-bucket"
#   stage        = "dev"
#   s3_actions   = ["s3:GetObject"]
#   s3_resources = [module.s3_bucket.bucket_arn]
# }
