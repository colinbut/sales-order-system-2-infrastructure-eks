terraform {
    backend "s3" {
        key = "live/dev/eks-worker-node-group/terraform.tfstate"
    }
}

provider "aws" {
    region = "eu-west-2"
}

resource "aws_eks_node_group" "sales_order_system_aws_eks_node_group" {
    cluster_name    = data.terraform_remote_state.cluster.outputs.id
    node_group_name = var.worker_node_group_name
    node_role_arn   = data.terraform_remote_state.worker_group_roles.outputs.eks_worker_node_group_role.arn
    subnet_ids      = data.terraform_remote_state.app_network.outputs.subnet_ids

    scaling_config  = var.scaling_config

    depends_on      = [
        data.terraform_remote_state.worker_group_roles.sales-order-system-AmazonEKSWorkerNodePolicy,
        data.terraform_remote_state.worker_group_roles.sales-order-system-AmazonEKS_CNI_Policy,
        data.terraform_remote_state.worker_group_roles.sales-order-system-AmazonEC2ContainerRegistryReadOnly
    ]
}

