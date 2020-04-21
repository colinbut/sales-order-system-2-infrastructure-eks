terraform {
    backend "s3" {
        key = "global/state/terraform.tfstate"
    }
}

provider "aws" {
    region = "eu-west-2"
}

resource "aws_dynamodb_table" "s3-state-lock-table" {
    name = "sales-order-system-eks-s3-state-lock"

    hash_key        = "LockID"
    billing_mode    = "PAY_PER_REQUEST"

    attribute {
        name = "LockID"
        type = "S"
    }
}

resource "aws_s3_bucket" "terraform_state_s3_bucket" {
    bucket = "sales-order-system-eks-state-s3-bucket"

    lifecycle {
        prevent_destroy = true
    }

    versioning {
        enabled = true
    }

    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
}