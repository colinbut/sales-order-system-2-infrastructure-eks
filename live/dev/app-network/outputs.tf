output "subnet_ids" {
    value = aws_subnet.app_subnets[*].id
}