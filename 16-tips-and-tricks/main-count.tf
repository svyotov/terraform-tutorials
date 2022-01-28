resource "aws_instance" "ec2_by_count" {
  count = var.instance_count # create ${var.instance_count} similar EC2 instances

  ami           = lookup(var.amis, var.region)
  instance_type = var.instance_type

  tags = merge({
    Name = "ec2-by-count-${count.index}"
  }, var.tags)
}




resource "aws_instance" "ec2_ternary_count" {
  count  = (var.high_availability == true ? 3 : 1) # count based on logical ternary operation

  ami           = lookup(var.amis, var.region)
  instance_type = var.instance_type

  tags = merge({
    Name = "ec2-by-count-${count.index}"
  }, var.tags)
}
