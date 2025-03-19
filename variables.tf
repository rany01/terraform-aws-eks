# definição de variáveis que o módulo espera receber

variable "cluster_name" {
    description = "Nome do cluster EKS"
    type        = string
}

variable "cluster_version" {
    description = "Versão do kubernetes"
    type        = string
    default     = "1.32"
}

variable "subnet_ids" {
    description = "IDs das subnets onde o cluster EKS será criado"
    type        = list(string)
}

variable "desired_size" {
    description = "Quantidade de nós no node group"
    type        = number
    default     = 2
}

variable "max_size" {
    description = "máxima de nós no node group"
    type        = number
    default     = 3
}

variable "min_size" {
    description = "mínima de nós no node group"
    type        = number
    default     = 1
}

variable "instance_types" {
    description = "Tipos de instâncias para o node group"
    type        = list(string)
    default     = ["t3.medium"]
}