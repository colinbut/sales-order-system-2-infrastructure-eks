provider "aws" {
    region = "eu-west-2"
}

resource "aws_ecr_repository" "ecr_repositories" {
    for_each    = toset(var.repos_to_create)
    name        = each.value
}