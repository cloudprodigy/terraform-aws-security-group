# Security Group

This module creates a Security Group in a given VPC along with ingress & egress rules.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.53.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.egress_with_cidr_blocks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.egress_with_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.egress_with_self](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ingress_with_cidr_blocks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ingress_with_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ingress_with_self](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_egress_rules_with_cidr_blocks"></a> [egress\_rules\_with\_cidr\_blocks](#input\_egress\_rules\_with\_cidr\_blocks) | List of egress rules to create where 'cidr\_blocks' is used | `list(map(string))` | `[]` | no |
| <a name="input_egress_rules_with_security_group_id"></a> [egress\_rules\_with\_security\_group\_id](#input\_egress\_rules\_with\_security\_group\_id) | List of egress rules to create where 'source\_security\_group\_id' is used | `list(map(string))` | `[]` | no |
| <a name="input_egress_rules_with_self"></a> [egress\_rules\_with\_self](#input\_egress\_rules\_with\_self) | List of egress rules to create where 'self' is used as source | `list(map(string))` | `[]` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Provide appropriate environment name | `string` | n/a | yes |
| <a name="input_ingress_rules_with_cidr_blocks"></a> [ingress\_rules\_with\_cidr\_blocks](#input\_ingress\_rules\_with\_cidr\_blocks) | List of ingress rules to create where 'cidr\_blocks' is used | `list(map(string))` | `[]` | no |
| <a name="input_ingress_rules_with_security_group_id"></a> [ingress\_rules\_with\_security\_group\_id](#input\_ingress\_rules\_with\_security\_group\_id) | List of ingress rules to create where 'source\_security\_group\_id' is used | `list(map(string))` | `[]` | no |
| <a name="input_ingress_rules_with_self"></a> [ingress\_rules\_with\_self](#input\_ingress\_rules\_with\_self) | List of ingress rules to create where 'self' is used as source | `list(map(string))` | `[]` | no |
| <a name="input_revoke_rules_on_delete"></a> [revoke\_rules\_on\_delete](#input\_revoke\_rules\_on\_delete) | Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself | `bool` | `false` | no |
| <a name="input_security_group_description"></a> [security\_group\_description](#input\_security\_group\_description) | Security Group description | `string` | n/a | yes |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | Security Group name | `string` | n/a | yes |
| <a name="input_sg_tags"></a> [sg\_tags](#input\_sg\_tags) | Additional tags for Security Group | `map(string)` | `{}` | no |
| <a name="input_tag_application"></a> [tag\_application](#input\_tag\_application) | Application tag | `string` | n/a | yes |
| <a name="input_tag_team"></a> [tag\_team](#input\_tag\_team) | Team tag | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID to create Security Group | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_arn"></a> [security\_group\_arn](#output\_security\_group\_arn) | Security Group ARN |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | Security Group ID |
