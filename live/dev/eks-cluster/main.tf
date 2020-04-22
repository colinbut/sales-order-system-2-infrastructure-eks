terraform {
    backend "s3" {
        key = "live/dev/eks-cluster/terraform.tfstate"
    }
}

provider "aws" {
    region = "eu-west-2"
}

resource "aws_eks_cluster" "sales-order-system-eks-cluster" {
    name        = var.eks_cluster_name
    role_arn    = data.terraform_remote_state.roles.outputs.eks_cluster_role.arn
    
    vpc_config  {
        subnet_ids = data.terraform_remote_state.app_vpc.outputs.subnet_ids
    }

    depends_on = [
        data.terraform_remote_state.roles.outputs.sales-order-system-AmazonEKSClusterPolicy,
        data.terraform_remote_state.roles.outputs.sales-order-system-AmazonEKSServicePolicy
    ]
}