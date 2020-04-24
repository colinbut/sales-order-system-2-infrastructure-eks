# EKS Worker Node Group

This module provisions a group of worker nodes for the EKS cluster.

This module has a dependency on the mgmt/roles/worker-group-roles module, eks-cluster module, app-network module as defined in the `dependencies.tf`

```bash
terraform init -backend-config=../../../config/backend.hcl
terraform plan
terraform apply
```