output "vm_public_ip" {
  description = "L'adresse IP publique de l'instance EC2"
  value       = aws_instance.vm.public_ip
}
