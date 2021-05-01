# AWS Elastic Load Balancer (ELB) Terraform module

Terraform module which creates Classic Load Balancer (also called ELB) resources on AWS.

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
      instance_port     = 80
      instance_protocol = "HTTP"
      lb_port           = 80
      lb_protocol       = "HTTP"
    },
    {
      instance_port     = 8080
      instance_protocol = "http"
      lb_port           = 8080
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

- [Complete ELB example](https://github.com/terraform-aws-modules/terraform-aws-elb/tree/master/examples/complete)

## Note about SSL

- Valid SSL certificate has to be specified as `ssl_certificate_id` argument for secure listener. Use [terraform-aws-acm module](https://github.com/terraform-aws-modules/terraform-aws-acm) to create one. See [ELB example](https://github.com/terraform-aws-modules/terraform-aws-elb/blob/master/examples/complete/main.tf) for details.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.20 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_elb"></a> [elb](#module\_elb) | ./modules/elb |  |
| <a name="module_elb_attachment"></a> [elb\_attachment](#module\_elb\_attachment) | ./modules/elb_attachment |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_logs"></a> [access\_logs](#input\_access\_logs) | An access logs block | `map(string)` | `{}` | no |
| <a name="input_connection_draining"></a> [connection\_draining](#input\_connection\_draining) | Boolean to enable connection draining | `bool` | `false` | no |
| <a name="input_connection_draining_timeout"></a> [connection\_draining\_timeout](#input\_connection\_draining\_timeout) | The time in seconds to allow for connections to drain | `number` | `300` | no |
| <a name="input_create_elb"></a> [create\_elb](#input\_create\_elb) | Create the elb or not | `bool` | `true` | no |
| <a name="input_cross_zone_load_balancing"></a> [cross\_zone\_load\_balancing](#input\_cross\_zone\_load\_balancing) | Enable cross-zone load balancing | `bool` | `true` | no |
| <a name="input_health_check"></a> [health\_check](#input\_health\_check) | A health check block | `map(string)` | n/a | yes |
| <a name="input_idle_timeout"></a> [idle\_timeout](#input\_idle\_timeout) | The time in seconds that the connection is allowed to be idle | `number` | `60` | no |
| <a name="input_instances"></a> [instances](#input\_instances) | List of instances ID to place in the ELB pool | `list(string)` | `[]` | no |
| <a name="input_internal"></a> [internal](#input\_internal) | If true, ELB will be an internal ELB | `bool` | `false` | no |
| <a name="input_listener"></a> [listener](#input\_listener) | A list of listener blocks | `list(map(string))` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the ELB | `string` | `null` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | The prefix name of the ELB | `string` | `null` | no |
| <a name="input_number_of_instances"></a> [number\_of\_instances](#input\_number\_of\_instances) | Number of instances to attach to ELB | `number` | `0` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | A list of security group IDs to assign to the ELB | `list(string)` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | A list of subnet IDs to attach to the ELB | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_elb_arn"></a> [elb\_arn](#output\_elb\_arn) | The ARN of the ELB |
| <a name="output_elb_dns_name"></a> [elb\_dns\_name](#output\_elb\_dns\_name) | The DNS name of the ELB |
| <a name="output_elb_id"></a> [elb\_id](#output\_elb\_id) | The name of the ELB |
| <a name="output_elb_instances"></a> [elb\_instances](#output\_elb\_instances) | The list of instances in the ELB |
| <a name="output_elb_name"></a> [elb\_name](#output\_elb\_name) | The name of the ELB |
| <a name="output_elb_source_security_group_id"></a> [elb\_source\_security\_group\_id](#output\_elb\_source\_security\_group\_id) | The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances |
| <a name="output_elb_zone_id"></a> [elb\_zone\_id](#output\_elb\_zone\_id) | The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record) |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module is maintained by [Anton Babenko](https://github.com/antonbabenko) with help from [these awesome contributors](https://github.com/terraform-aws-modules/terraform-aws-elb/graphs/contributors).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/terraform-aws-modules/terraform-aws-elb/tree/master/LICENSE) for full details.
