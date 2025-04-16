# Este módulo cria um cluster EKS na AWS com um node group associado.

module "eks" {
  source = "github.com/rany01/terraform-aws-eks?ref=v1.0.0"

  cluster_name    = "giropops-cluster"
  cluster_version = "1.21"
  subnet_ids     = ["subnet-12345678", "subnet-87654321"]
  desired_size   = 2
  max_size      = 3
  min_size      = 1
  instance_type = "t3.medium"
}