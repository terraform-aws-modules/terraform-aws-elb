# aws_elb

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_logs | An access logs block | `map(string)` | `{}` | no |
| connection\_draining | Boolean to enable connection draining | `bool` | `false` | no |
| connection\_draining\_timeout | The time in seconds to allow for connections to drain | `number` | `300` | no |
| create\_elb | Create the elb or not | `bool` | `true` | no |
| cross\_zone\_load\_balancing | Enable cross-zone load balancing | `bool` | `true` | no |
| health\_check | A health check block | `map(string)` | n/a | yes |
| idle\_timeout | The time in seconds that the connection is allowed to be idle | `number` | `60` | no |
| internal | If true, ELB will be an internal ELB | `bool` | n/a | yes |
| listener | A list of listener blocks | `list(map(string))` | n/a | yes |
| name | The name of the ELB | `string` | `null` | no |
| name\_prefix | The prefix name of the ELB | `string` | `null` | no |
| security\_groups | A list of security group IDs to assign to the ELB | `list(string)` | n/a | yes |
| subnets | A list of subnet IDs to attach to the ELB | `list(string)` | n/a | yes |
| tags | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_elb\_arn | The ARN of the ELB |
| this\_elb\_dns\_name | The DNS name of the ELB |
| this\_elb\_id | The name of the ELB |
| this\_elb\_instances | The list of instances in the ELB |
| this\_elb\_name | The name of the ELB |
| this\_elb\_source\_security\_group | The name of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances. Use this for Classic or Default VPC only. |
| this\_elb\_source\_security\_group\_id | The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances. Only available on ELBs launched in a VPC. |
| this\_elb\_zone\_id | The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record) |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
