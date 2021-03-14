# Complete ELB example

Configuration in this directory creates ELB, EC2 instances and attach them together.

This example also creates ACM SSL certificate which can be attached to a secure listener in ELB.

Data sources are used to discover existing VPC resources (VPC, subnet and security group).

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| aws | >= 2.20 |
| random | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.20 |
| random | >= 2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| acm | terraform-aws-modules/acm/aws | ~> 2.0 |
| ec2_instances | terraform-aws-modules/ec2-instance/aws | ~> 2.0 |
| elb | ../../ |  |

## Resources

| Name |
|------|
| [aws_elb_service_account](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/elb_service_account) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) |
| [aws_route53_zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) |
| [aws_s3_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) |
| [aws_subnet_ids](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet_ids) |
| [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) |
| [random_pet](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| number\_of\_instances | Number of instances to create and attach to ELB | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_elb\_dns\_name | The DNS name of the ELB |
| this\_elb\_id | The name of the ELB |
| this\_elb\_instances | The list of instances in the ELB (if may be outdated, because instances are attached using elb\_attachment resource) |
| this\_elb\_name | The name of the ELB |
| this\_elb\_source\_security\_group\_id | The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances |
| this\_elb\_zone\_id | The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record) |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
