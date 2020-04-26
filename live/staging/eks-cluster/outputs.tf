output "eks_cluster_endpoint" {
    value = aws_eks_cluster.sales-order-system-eks-cluster.endpoint
}

output "eks_cluster_name" {
    value = aws_eks_cluster.sales-order-system-eks-cluster.id
}