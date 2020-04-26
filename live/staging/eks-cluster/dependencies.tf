data "terraform_remote_state" "roles" {
    backend = "s3"
    config = {
        bucket  = "sales-order-system-eks-state-s3-bucket"
        key     = "mgmt/roles/cluster-roles/terraform.tfstate"
        region  = "eu-west-2"
    }
}

data "terraform_remote_state" "app_vpc" {
    backend = "s3"
    config = {
        bucket  = "sales-order-system-eks-state-s3-bucket"
        key     = "live/dev/app-network/terraform.tfstate"
        region  = "eu-west-2"
    }
}

