# aws_elb_attachment

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
| create\_attachment | Create the elb attachment or not | `bool` | `true` | no |
| elb | The name of the ELB | `string` | n/a | yes |
| instances | List of instances ID to place in the ELB pool | `list(string)` | n/a | yes |
| number\_of\_instances | Number of instances ID to place in the ELB pool | `number` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
