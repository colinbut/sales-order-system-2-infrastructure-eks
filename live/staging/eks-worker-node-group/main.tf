terraform {
    backend "s3" {
        key = "live/staging/eks-worker-node-group/terraform.tfstate"
    }
}

provider "aws" {
    region = "ap-southwest-2"
}

resource "aws_eks_node_group" "sales_order_system_aws_eks_node_group" {
    cluster_name    = data.terraform_remote_state.cluster.outputs.eks_cluster_name
    node_group_name = var.worker_node_group_name
    node_role_arn   = data.terraform_remote_state.worker_group_roles.outputs.eks_worker_node_group_role.arn
    subnet_ids      = data.terraform_remote_state.app_network.outputs.subnet_ids

    scaling_config {
        desired_size    = var.desired_size
        max_size        = var.max_size
        min_size        = var.min_size
    }
}

