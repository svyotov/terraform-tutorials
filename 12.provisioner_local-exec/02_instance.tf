resource "aws_instance" "ec2" {

  ami           = data.aws_ami.rhel.id

  instance_type = var.instance_type
  key_name = "aleti-london"
  user_data     = <<-EOF
            		#!/bin/bash
                sudo yum update
                yum -y install nginx
                systemctl start nginx
                echo "<h1>Welcome to DevOps Classes, Keep Learning</h1>" | tee /usr/share/nginx/html/index.html
                systemctl start nginx
                EOF
  tags = {
    Name = var.tags
  }

  provisioner "local-exec" {
    command = " echo ${aws_instance.ec2.public_ip} >> inventory.txt"
  }
}

data "aws_ami" "rhel" {

  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-8.0.0_HVM-20190618-x86_64-1-Hourly2-GP2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["309956199498"] # Canonical

}
