resource "aws_security_group_rule" "egress_with_cidr_blocks" {
  count             = length(var.egress_rules_with_cidr_blocks)
  security_group_id = aws_security_group.sg.id
  type              = "egress"

  cidr_blocks = [lookup(var.egress_rules_with_cidr_blocks[count.index], "cidr_block")]
  from_port   = lookup(var.egress_rules_with_cidr_blocks[count.index], "from_port")
  to_port     = lookup(var.egress_rules_with_cidr_blocks[count.index], "to_port")
  protocol    = lookup(var.egress_rules_with_cidr_blocks[count.index], "protocol")
  description = lookup(var.egress_rules_with_cidr_blocks[count.index], "description")

}


resource "aws_security_group_rule" "egress_with_security_group" {
  count             = length(var.egress_rules_with_security_group_id)
  security_group_id = aws_security_group.sg.id
  type              = "egress"

  source_security_group_id = lookup(var.egress_rules_with_security_group_id[count.index], "security_group_id")
  from_port                = lookup(var.egress_rules_with_security_group_id[count.index], "from_port")
  to_port                  = lookup(var.egress_rules_with_security_group_id[count.index], "to_port")
  protocol                 = lookup(var.egress_rules_with_security_group_id[count.index], "protocol")
  description              = lookup(var.egress_rules_with_security_group_id[count.index], "description")

}


resource "aws_security_group_rule" "egress_with_self" {
  count             = length(var.egress_rules_with_self)
  security_group_id = aws_security_group.sg.id
  type              = "egress"

  self        = lookup(var.egress_rules_with_self[count.index], "self")
  from_port   = lookup(var.egress_rules_with_self[count.index], "from_port")
  to_port     = lookup(var.egress_rules_with_self[count.index], "to_port")
  protocol    = lookup(var.egress_rules_with_self[count.index], "protocol")
  description = lookup(var.egress_rules_with_self[count.index], "description")

}

