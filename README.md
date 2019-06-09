# AWS Elastic Load Balancer (ELB) Terraform module

Terraform module which creates ELB resources on AWS.

These types of resources are supported:

* [ELB](https://www.terraform.io/docs/providers/aws/r/elb.html)
* [ELB Attachment](https://www.terraform.io/docs/providers/aws/r/elb_attachment.html)

Root module calls these modules which can also be used separately to create independent resources:

* [elb](https://github.com/terraform-aws-modules/terraform-aws-elb/tree/master/modules/elb) - creates ELB
* [elb_attachment](https://github.com/terraform-aws-modules/terraform-aws-elb/tree/master/modules/elb_attachment) - creates ELB attachment

## Terraform versions

Terraform 0.12. Pin module version to `~> v2.0`. Submit pull-requests to `master` branch.

Terraform 0.11. Pin module version to `~> v1.0`. Submit pull-requests to `terraform011` branch.

## Usage

```hcl
module "elb_http" {
  source  = "terraform-aws-modules/elb/aws"
  version = "~> 2.0"

  name = "elb-example"

  subnets         = ["subnet-12345678", "subnet-87654321"]
  security_groups = ["sg-12345678"]
  internal        = false

  listener = [
    {
      instance_port     = "80"
      instance_protocol = "HTTP"
      lb_port           = "80"
      lb_protocol       = "HTTP"
    },
    {
      instance_port     = "8080"
      instance_protocol = "http"
      lb_port           = "8080"
      lb_protocol       = "http"
      ssl_certificate_id = "arn:aws:acm:eu-west-1:235367859451:certificate/6c270328-2cd5-4b2d-8dfd-ae8d0004ad31"
    },
  ]

  health_check = {
    target              = "HTTP:80/"
    interval            = 30
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
  }

  access_logs = {
    bucket = "my-access-logs-bucket"
  }

  // ELB attachments
  number_of_instances = 2
  instances           = ["i-06ff41a77dfb5349d", "i-4906ff41a77dfb53d"]
  
  tags = {
    Owner       = "user"
    Environment = "dev"
  }
}
```

## Examples

* [Complete ELB example](https://github.com/terraform-aws-modules/terraform-aws-elb/tree/master/examples/complete)

## Note about SSL

* Valid SSL certificate has to be specified as `ssl_id_certificate` argument for secure listener. Use [terraform-aws-acm module](https://github.com/terraform-aws-modules/terraform-aws-acm) to create one. See [ELB example](https://github.com/terraform-aws-modules/terraform-aws-elb/blob/master/examples/complete/main.tf) for details.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| access_logs | An access logs block | list | `<list>` | no |
| connection_draining | Boolean to enable connection draining | string | `false` | no |
| connection_draining_timeout | The time in seconds to allow for connections to drain | string | `300` | no |
| cross_zone_load_balancing | Enable cross-zone load balancing | string | `true` | no |
| health_check | A health check block | list | - | yes |
| idle_timeout | The time in seconds that the connection is allowed to be idle | string | `60` | no |
| instances | List of instances ID to place in the ELB pool | list | `<list>` | no |
| internal | If true, ELB will be an internal ELB | string | - | yes |
| listener | A list of listener blocks | list | - | yes |
| name | The name of the ELB | string | - | yes |
| number_of_instances | Number of instances to attach to ELB | string | `0` | no |
| security_groups | A list of security group IDs to assign to the ELB | list | - | yes |
| subnets | A list of subnet IDs to attach to the ELB | list | - | yes |
| tags | A mapping of tags to assign to the resource | string | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_elb_arn | The ARN of the ELB |
| this_elb_dns_name | The DNS name of the ELB |
| this_elb_id | The name of the ELB |
| this_elb_instances | The list of instances in the ELB |
| this_elb_name | The name of the ELB |
| this_elb_source_security_group_id | The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances |
| this_elb_zone_id | The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record) |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Anton Babenko](https://github.com/antonbabenko).

## License

Apache 2 Licensed. See LICENSE for full details.
