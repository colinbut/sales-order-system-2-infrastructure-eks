data "terraform_remote_state" "cluster" {
    backend = "s3"
    config  = {
        bucket  = "sales-order-system-eks-state-s3-bucket"
        key     = "live/dev/eks-cluster/terraform.tfstate"
        region  = "eu-west-2"
    }
}

data "terraform_remote_state" "worker_group_roles" {
    backend = "s3"
    config  = {
        bucket  = "sales-order-system-eks-state-s3-bucket"
        key     = "mgmt/roles/worker-group-roles/terraform.tfstate"
        region  = "eu-west-2"
    }
}

data "terraform_remote_state" "app_network" {
    backend = "s3"
    config  = {
        bucket  = "sales-order-system-eks-state-s3-bucket"
        key     = "live/dev/app-network/terraform.tfstate"
        region  = "eu-west-2"
    }
}