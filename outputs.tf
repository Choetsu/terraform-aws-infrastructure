output "application_url" {
  description = "URL de l'application"
  value       = "http://${module.ec2_instance.vm_public_ip}:5000"
}
