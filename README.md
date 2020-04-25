# Sales Order System 2.0: Kubernetes (AWS EKS)

This project is a direct spin-off from the main [Sales Order System 2.0](https://github.com/colinbut/sales-order-system-2.git) project. Whereas that project showcases the theme of "Application Development" - this project demonstrates in particular the __Infrastructure as Code__ concept of __Infrastructure Provisioning__. 

This project show an alternative infrastructure platform to run the Sales Order System application. This particular project provisions a Kubernetes Cluster to manage a series of Docker Containers instead of running Docker Containers directly within EC2 instances as demonstrated in this sister project - [Sales Order System 2.0: Infrastructure (Docker on EC2)](https://github.com/colinbut/sales-order-system-2-infrastructure).

This project uses Terraform to provision a Kubernetes Cluster and a set of Worker Nodes to run inside the AWS Cloud using AWS's managed Kubernetes service (EKS).

# Table of Contents

  - [Provisioning Guide](#provisioning-guide)
    - [Prerequisites](#prerequisites)
    - [Provison App Network](#provison-app-network)
    - [Provision EKS Cluster](#provision-eks-cluster)
    - [Provision EKS Worker Node Group](#provision-eks-worker-node-group)


## Provisioning Guide

### Prerequisites

Require to provision the IAM roles required for creating both the EKS cluster and the EKS worker node groups:

__EKS Cluster Roles__

```bash
cd mgmt/roles/cluster-roles/
terraform init -backend-config=../../../config/backend.hcl
terraform plan
terraform apply
```

__Worker Node Group Roles__

```bash
cd mgmt/roles/worker-group-roles/
terraform init -backend-config=../../../config/backend.hcl
terraform plan
terraform apply
```

### Provison App Network

Require to create the App Network (VPC, Subnets etc) first. For simplicity, I've only provisioned a VPC with 3 Public Subnets with a mandatory Internet Gateway for access to/from the public internet. 

See `live/[environment]/app-network/README.md`

### Provision EKS Cluster

See `live/[environment]/eks-cluster/README.md`

### Provision EKS Worker Node Group

See `live/[environment]/eks-workder-node-group/README.md`