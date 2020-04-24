# EKS Cluster

As noted in the `dependencies.tf` this module depends on the mgmt/roles/cluster-roles module and the app-network module as explicit pre-requisites so need to provision that module first before apply this one.

```bash
terraform init -backend-config=../../../config/backend.hcl
terraform plan
terraform apply
```