variable "region" {
  description = "AWS region to create resources"
  type        = "string"
}

variable "tags" {
}

variable "instance_type" {
}

variable "amis" {
  type = "map"

  default = {
    "us-west-1" = "ami-08949fb6466dd2cf3"
    "us-east-2" = "ami-05220ffa0e7fce3d1"
    "us-east-1" = "ami-098bb5d92c8886ca1"
  }
}
