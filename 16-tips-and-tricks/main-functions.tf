# https://learn.hashicorp.com/tutorials/terraform/functions?in=terraform/configuration-language
# https://www.terraform.io/language/functions

# Here the two function examples are `lookup` and `merge`
resource "aws_instance" "ec2_with_function_calls" {
  ami           = local.my_new_variable
  instance_type = var.instance_type

  tags = merge({
    Name = "ec2-by-count"
  }, var.tags)
}

locals {
  my_new_variable = lookup(var.amis, var.region) # accessible as 
}

# Other very useful examples how 
# to debug using the interactive console
# $ terraform console
#   > var.my_new_variable
#   > local.my_new_vrafiable
#   > format("Hello, %s!", "Ander")
#   > format("Hello, %s!", local.my_new_variable)
