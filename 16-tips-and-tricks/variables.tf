variable "region" {
  description = "AWS region to create resources"
  default     = "us-east-1"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = { "owner" : "terraform" }
}

variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "high_availability" {
  type    = bool
  default = true
}

variable "amis" {
  type = map(string)

  default = {
    "us-west-1" = "ami-08949fb6466dd2cf3"
    "us-east-2" = "ami-05220ffa0e7fce3d1"
    "us-east-1" = "ami-098bb5d92c8886ca1"
  }
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "ec2_instances" {
  type = map(map(string))

  default = {
    "ec2-1" = { "owner" : "ec2-1-owner" }
    "ec2-2" = { "owner" : "ec2-2-owner" }
  }
}

variable "settings" {
  type = list(map(string))
  default = []
}
