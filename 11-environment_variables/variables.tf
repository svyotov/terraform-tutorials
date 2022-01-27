variable "region" {

}

variable "tags" {
  type    = map(string)
  default = { "owner" : "terraform" }
}

variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "amis" {
  type = map(string)

  default = {
    "us-west-1" = "ami-08949fb6466dd2cf3"
    "us-east-2" = "ami-05220ffa0e7fce3d1"
    "us-east-1" = "ami-098bb5d92c8886ca1"
  }
}
