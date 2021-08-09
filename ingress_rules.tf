resource "aws_security_group_rule" "ingress_with_cidr_blocks" {
  count             = length(var.ingress_rules_with_cidr_blocks)
  security_group_id = aws_security_group.sg.id
  type              = "ingress"

  cidr_blocks = [lookup(var.ingress_rules_with_cidr_blocks[count.index], "cidr_block")]
  from_port   = lookup(var.ingress_rules_with_cidr_blocks[count.index], "from_port")
  to_port     = lookup(var.ingress_rules_with_cidr_blocks[count.index], "to_port")
  protocol    = lookup(var.ingress_rules_with_cidr_blocks[count.index], "protocol")
  description = lookup(var.ingress_rules_with_cidr_blocks[count.index], "description")

}


resource "aws_security_group_rule" "ingress_with_security_group" {
  count             = length(var.ingress_rules_with_security_group_id)
  security_group_id = aws_security_group.sg.id
  type              = "ingress"

  source_security_group_id = lookup(var.ingress_rules_with_security_group_id[count.index], "security_group_id")
  from_port                = lookup(var.ingress_rules_with_security_group_id[count.index], "from_port")
  to_port                  = lookup(var.ingress_rules_with_security_group_id[count.index], "to_port")
  protocol                 = lookup(var.ingress_rules_with_security_group_id[count.index], "protocol")
  description              = lookup(var.ingress_rules_with_security_group_id[count.index], "description")

}


resource "aws_security_group_rule" "ingress_with_self" {
  count             = length(var.ingress_rules_with_self)
  security_group_id = aws_security_group.sg.id
  type              = "ingress"

  self        = lookup(var.ingress_rules_with_self[count.index], "self")
  from_port   = lookup(var.ingress_rules_with_self[count.index], "from_port")
  to_port     = lookup(var.ingress_rules_with_self[count.index], "to_port")
  protocol    = lookup(var.ingress_rules_with_self[count.index], "protocol")
  description = lookup(var.ingress_rules_with_self[count.index], "description")

}

