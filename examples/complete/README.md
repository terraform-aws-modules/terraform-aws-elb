# Complete ELB example

Configuration in this directory creates ELB, EC2 instances and attach them together.

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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| number_of_instances | Number of instances to create and attach to ELB | string | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_elb_dns_name | The DNS name of the ELB |
| this_elb_id | ELB |
| this_elb_instances | The list of instances in the ELB (if may be outdated, because instances are attached using elb_attachment resource) |
| this_elb_name | The name of the ELB |
| this_elb_source_security_group_id | The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances |
| this_elb_zone_id | The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record) |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
