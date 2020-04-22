output "eks_worker_node_group_role" {
    value = aws_iam_role.eks_worker_node_group_role
}

output "sales-order-system-AmazonEKSWorkerNodePolicy" {
    value = aws_iam_role_policy_attachment.sales-order-system-AmazonEKSWorkerNodePolicy
}

output "sales-order-system-AmazonEKS_CNI_Policy" {
    value = aws_iam_role_policy_attachment.sales-order-system-AmazonEKS_CNI_Policy
}

output "sales-order-system-AmazonEC2ContainerRegistryReadOnly" {
    value = aws_iam_role_policy_attachment.sales-order-system-AmazonEC2ContainerRegistryReadOnly
}