variable "profile" {
  description = "Profil AWS"
  type        = string
  default     = "default"
}

variable "aws_region" {
  description = "La région AWS"
  type        = string
  default     = "eu-west-3"
}

variable "security_group_name" {
  description = "Nom du groupe de sécurité"
  type        = string
  default     = "node_ssh"
}

variable "cidr_ingress" {
  description = "CIDR pour les règles d'entrée"
  type        = string
  default     = "0.0.0.0/0"
}

variable "cidr_egress" {
  description = "CIDR pour les règles de sortie"
  type        = string
  default     = "0.0.0.0/0"
}




