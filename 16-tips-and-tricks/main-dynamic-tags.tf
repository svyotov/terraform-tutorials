# resource "aws_elastic_beanstalk_application" "app" {
#   name = "tf-test-name" # can use expressions here
#   description = "tf-test-desc"
# }

# resource "aws_elastic_beanstalk_environment" "app_dynamic_environment" {
#   name                = "tf-test-name-env"
#   application         = aws_elastic_beanstalk_application.app.name
#   # aws elasticbeanstalk list-available-solution-stacks --region us-east-1
#   solution_stack_name = "64bit Amazon Linux 2 v3.4.4 running Go 1"

#   dynamic "setting" {
#     for_each = var.settings
#     content {
#       namespace = setting.value.namespace
#       name      = setting.value.name
#       value     = setting.value.value
#     }
#   }
# }
