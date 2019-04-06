# Terraform security

Create one or more AWS security groups

Note: your AWS credentials will automatically be retrieved by Terraform as long as there are located in `~/.aws/credentials` (under `[default]` section).

Don't forget to setup your sensitive information inside a `variables.tf`
e.g.
```terraform
variable "aws-region" {
  default     = "ap-southeast-1"
  description = "AWS region"
}

variable "aws-vpc-id" {
  default = "[YOUR-PREVIOUSLY-CREATED-AWS-VPC-ID]" // https://github.com/minus-et-cortex/terraform-network
  description = "AWS VPC ID"
}
```

Base on this [article](https://hackernoon.com/manage-aws-vpc-as-infrastructure-as-code-with-terraform-55f2bdb3de2a) by [Mohamed Labouardy](https://hackernoon.com/@mlabouardy).