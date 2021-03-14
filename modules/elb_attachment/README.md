# aws_elb_attachment

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| aws | >= 2.20 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.20 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_elb_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb_attachment) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_attachment | Create the elb attachment or not | `bool` | `true` | no |
| elb | The name of the ELB | `string` | n/a | yes |
| instances | List of instances ID to place in the ELB pool | `list(string)` | n/a | yes |
| number\_of\_instances | Number of instances ID to place in the ELB pool | `number` | n/a | yes |

## Outputs

No output.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
