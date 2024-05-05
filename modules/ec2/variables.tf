variable "ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0326f9264af7e51e2"
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Nom de la clé SSH"
  type        = string
  default     = "node"
}

variable "security_group_id" {
  description = "ID du groupe de sécurité"
  type        = string
}

variable "vm_name" {
  description = "Nom de l'instance EC2"
  type        = string
  default     = "MyVM"
}

variable "connection_type" {
  description = "Type de connexion"
  type        = string
  default     = "ssh"
}

variable "connection_user" {
  description = "Nom d'utilisateur pour la connexion"
  type        = string
  default     = "ubuntu"
}

variable "private_key_path" {
  description = "Le chemin du fichier de clé privée SSH"
  type        = string
  default     = "~/.ssh/id_nodeapp"
}