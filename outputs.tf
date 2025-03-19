# arquivos de definições de saídas do módulo, que podem ser usadas em outros modulos ou no projeto principal

output "cluster_name" {
    description = "Nome do cluster EKS"
    value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
    description = "Endpoint do cluster EKS"
    value       = aws_eks_cluster.this.endpoint
}

output "cluster_certificate_authority_data" {
    description = "Certificado do cluster EKS"
    value       = aws_eks_cluster.this.certificate_authority.0.data
}

output "node_group_name" {
    description = "Nome do node group"
    value       = aws_eks_node_group.this.node_group_name
}