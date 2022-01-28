resource "aws_instance" "ec2_by_for_each" {
  for_each = var.ec2_instances # create an ec2 instance for each key in ${var.ec2_instances}

  ami           = lookup(var.amis, var.region)
  instance_type = var.instance_type

  tags = merge({
    Name = "ec2-by-for-each-${each.key}", # reference the keys as each.key
    Owner = each.value.owner # reference the value(s) as each.value[.<name>]
  }, var.tags)
}
