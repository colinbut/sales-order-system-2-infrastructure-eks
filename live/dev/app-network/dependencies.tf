data "terraform_remote_state" "eks_cluster" {
    backend = "s3"
    config = {
        bucket  = "sales-order-system-eks-state-s3-bucket"
        key     = "live/dev/eks-cluster/terraform.tfstate"
        region  = "eu-west-2"
    }
}

data "aws_availability_zones" "availability_zones" {
    state = "available"
}