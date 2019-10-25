resource "aws_instance" "ec2" {
  ami           = data.aws_ami.rhel.id
  instance_type = var.instance_type
  key_name = "2019-aws-class"
  user_data     = "${file("scripts/userdata-nginx.sh")}"
  tags = {
    Name = var.tags
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
