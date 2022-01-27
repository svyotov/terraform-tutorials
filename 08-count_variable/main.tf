resource "aws_instance" "ec2" {
  ami           = data.aws_ami.rhel.id
  instance_type = var.instance_type
  count         = 5
  tags = {
    Name = var.tags
  }
}

data "aws_ami" "rhel" {

  most_recent = true

  filter {
    name   = "name"
    values = ["suse-sles-15-v20180816-hvm-ssd-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["013907871322"] # Canonical

}
