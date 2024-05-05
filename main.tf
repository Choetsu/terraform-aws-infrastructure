resource "aws_security_group" "vm_ssh" {
  name        = var.security_group_name
  description = "Allow SSH, HTTP, and HTTPS access to VM"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.cidr_ingress]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = [var.cidr_ingress]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr_egress]
  }
}

module "ec2_instance" {
  source = "./modules/ec2"

  security_group_id = aws_security_group.vm_ssh.id
}
