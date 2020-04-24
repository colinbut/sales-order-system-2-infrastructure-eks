# EKS Cluster

As noted in the `dependencies.tf` this module depends on the app-network module as an explicit pre-requisite so need to provision that module first before apply this one.

```bash
terraform init -backend-config=../../../config/backend.hcl
terraform plan
terraform apply
```