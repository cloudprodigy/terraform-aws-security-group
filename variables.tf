variable "ingress_rules_with_cidr_blocks" {
  description = "List of ingress rules to create where 'cidr_blocks' is used"
  type        = list(map(string))
  default     = []
}

variable "ingress_rules_with_security_group_id" {
  description = "List of ingress rules to create where 'source_security_group_id' is used"
  type        = list(map(string))
  default     = []
}

variable "ingress_rules_with_self" {
  description = "List of ingress rules to create where 'self' is used as source"
  type        = list(map(string))
  default     = []

}

variable "revoke_rules_on_delete" {
  description = "Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself"
  type        = bool
  default     = false

}

variable "egress_rules_with_cidr_blocks" {
  description = "List of egress rules to create where 'cidr_blocks' is used"
  type        = list(map(string))
  default     = []
}

variable "egress_rules_with_security_group_id" {
  description = "List of egress rules to create where 'source_security_group_id' is used"
  type        = list(map(string))
  default     = []
}

variable "egress_rules_with_self" {
  description = "List of egress rules to create where 'self' is used as source"
  type        = list(map(string))
  default     = []

}


variable "vpc_id" {
  description = "VPC ID to create Security Group"
  type        = string
}

variable "security_group_name" {
  description = "Security Group name"
  type        = string
}

variable "security_group_description" {
  description = "Security Group description"
  type        = string
}

variable "sg_tags" {
  description = "Additional tags for Security Group"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "Provide appropriate environment name"
  type        = string

  validation {
    condition = contains([
      "dev",
      "development",
      "uat",
      "production",
      "prod",
      "sandbox"
    ], var.environment)

    error_message = "The environment value is not valid. Valid values are dev/development/uat/prod/production/sandbox."
  }
}


variable "tag_application" {
  description = "Application tag"
  type        = string

}

variable "tag_team" {
  description = "Team tag"
  type        = string

}

locals {
  common_tags = {
    Application = var.tag_application
    Team        = var.tag_team
    environment = var.environment
  }
}
