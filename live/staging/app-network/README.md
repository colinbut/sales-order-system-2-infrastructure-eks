# App Network

```bash
terraform init -backend-config=../../../config/backend.hcl
terraform plan -var eks_cluster_name=[your eks cluster name]
terraform apply -var eks_cluster_name=[your eks cluster name]
```