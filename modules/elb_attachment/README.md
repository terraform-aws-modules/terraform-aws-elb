# aws_elb_attachment

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.20 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.20 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_elb_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_attachment"></a> [create\_attachment](#input\_create\_attachment) | Create the elb attachment or not | `bool` | `true` | no |
| <a name="input_elb"></a> [elb](#input\_elb) | The name of the ELB | `string` | n/a | yes |
| <a name="input_instances"></a> [instances](#input\_instances) | List of instances ID to place in the ELB pool | `list(string)` | n/a | yes |
| <a name="input_number_of_instances"></a> [number\_of\_instances](#input\_number\_of\_instances) | Number of instances ID to place in the ELB pool | `number` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
