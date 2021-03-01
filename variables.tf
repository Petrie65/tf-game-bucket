provider "aws" {
  region = "eu-west-1"
}

variable "region" {
  type        = string
  default     = ""
  description = "If specified, the AWS region this bucket should reside in. Otherwise, the region used by the callee"
}
