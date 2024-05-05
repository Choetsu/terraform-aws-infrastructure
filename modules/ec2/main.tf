resource "aws_instance" "vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = var.vm_name
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y docker.io git",
      "sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose",
      "sudo chmod +x /usr/local/bin/docker-compose",
      "sudo systemctl enable --now docker",
      "sudo usermod -aG docker ubuntu",
      "mkdir -p ~/.ssh",
      "ssh-keyscan github.com >> ~/.ssh/known_hosts",
      "git clone git@github.com:Choetsu/incr_app.git /home/ubuntu/incr_app",
      "cd /home/ubuntu/incr_app && sudo docker-compose up --build -d"
    ]

    connection {
      type        = var.connection_type
      user        = var.connection_user
      private_key = file(var.private_key_path)
      host        = self.public_ip
    }
  }
}

