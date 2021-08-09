resource "aws_security_group" "sg" {
  name                   = var.security_group_name
  description            = var.security_group_description
  vpc_id                 = var.vpc_id
  revoke_rules_on_delete = var.revoke_rules_on_delete
  tags = merge(
    {
      Name = var.security_group_name
    },
    local.common_tags,
    var.sg_tags
  )
}
