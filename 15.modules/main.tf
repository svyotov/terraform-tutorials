module "ec2_instance" {
  source = "./instance"

  amis          = var.amis
  region        = var.region
  instance_type = var.instance_type
  tags          = var.tags
}
