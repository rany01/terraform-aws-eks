# Terraform AWS EKS Module

Este módulo cria um cluster EKS na AWS com node group associado.

## Como Usar

```hcl
module "eks" {
    source = "github.com/rany01/terraform-aws-eks?ref=v1.0.0"

    cluster_name    = "meu-cluster-eks"
    cluster_version = "1.32"
    subnet_ids      = ["subnet-", "subnet-"]
    desired_size    = 2
    max_size        = 3
    min_size        = 1
    instance_types  = ["t3.medium"]
}