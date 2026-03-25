provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-s3-bucket-test-scalr-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}


# terraform {
#   cloud {
#     hostname     = "mohamedaboudeif.scalr.io"
#     organization = "Environment-A"

#     workspaces {
#       name = "test-s3"
#     }
#   }
# }
