variable "region" {
  description = "AWS region to create resources"
  type        = string
}

variable "tags" {
  description = "AWS tags for resource annotation"
  type        = map(string)
  default     = { "owner" : "terraform" }
}

variable "instance_type" {
  description = "AWS instance type to use for the EC2 creation"
  type        = string
}

variable "amis" {
  description = "The per region AMI to use for the EC2"
  type        = map(string)
}
