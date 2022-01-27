# terraform-tutorials

This repository contains the tutorials for terraform

1. You can get the terraform binary [here](https://www.terraform.io/downloads)

## Quick start

! Please note that this example will deploy real resources into your AWS account. We have made every effort to ensure all the resources qualify for the AWS Free Tier, but we are not responsible for any charges you may incur.

```sh
# Configure your AWS access by either setting up
# an AWS profile
export AWS_SECRET_ACCESS_KEY=(your secret access key)
# or configuring AWS access key id and secret
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)


cd <one of the sample terraform directories>

# Deploy the code

terraform init
terraform apply


# Clean up when you're done, to destroy the resources
# and stop paying for them!

terraform destroy
```
