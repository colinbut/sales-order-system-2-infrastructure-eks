output "sales-order-system-AmazonEKSClusterPolicy" {
    value = aws_iam_role_policy_attachment.sales-order-system-AmazonEKSClusterPolicy
}

output "sales-order-system-AmazonEKSServicePolicy" {
    value = aws_iam_role_policy_attachment.sales-order-system-AmazonEKSServicePolicy
}

output "eks_cluster_role" {
    value = aws_iam_role.eks_cluster_role
}