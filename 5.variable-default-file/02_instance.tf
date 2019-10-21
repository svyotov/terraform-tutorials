resource "aws_instance" "ec2" {
  ami           = "${lookup(var.amis, var.region)}"
  instance_type = var.instance_type

  tags = {
    Name = var.tags
  }
}
