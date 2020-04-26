terraform {
    backend "s3" {
        key = "live/prod/eks-cluster/terraform.tfstate"
    }
}

provider "aws" {
    region = "us-east-2"
}

resource "aws_eks_cluster" "sales-order-system-eks-cluster" {
    name        = var.eks_cluster_name
    role_arn    = data.terraform_remote_state.roles.outputs.eks_cluster_role.arn
    
    vpc_config  {
        subnet_ids = data.terraform_remote_state.app_vpc.outputs.subnet_ids
    }
}