# aws_elb_attachment

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| elb | The name of the ELB | string | n/a | yes |
| instances | List of instances ID to place in the ELB pool | list(string) | n/a | yes |
| number\_of\_instances | Number of instances ID to place in the ELB pool | number | n/a | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
