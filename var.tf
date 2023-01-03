variable "tags" {
  type = map(string)
}

variable "repo_name" {
  type = string
}

variable "image_tag_mutability" {
  type = string
}

variable "encryption_type" {
  type = string
}

variable "scan_on_push" {
  type = bool
}

variable "family_name" {
  type = string
}

variable "requires_compatibilities" {
  type = set(string)
}

variable "network_mode" {
  type = string
}

variable "cpu" {
  type = number
}

variable "memory" {
  type = number
}

variable "skip_destroy" {
  type = bool
}

variable "cluster_name" {
  type = string
}

variable "setting_name" {
  type = string
}

variable "value" {
  type = string
}

variable "service_name" {
  type = string
}

variable "desired_count" {
  type = number
}

variable "deployment_maximum_percent" {
  type = number
}

variable "deployment_minimum_healthy_percent" {
  type = number
}

variable "enable_ecs_managed_tags" {
  type = bool
}

variable "enable_execute_command" {
  type = bool
}

variable "health_check_grace_period_seconds" {
  type = number
}

variable "launch_type" {
  type = string
}

# variable "security_groups" {
#   type = list(string)
# }

# variable "subnets" {
#   type = list(string)
# }

variable "execution_role_arn" {
  type = string
}

variable "platform_version" {
  type = string
}

variable "propagate_tags" {
  type = string
}

variable "scheduling_strategy" {
  type = string
}

variable "wait_for_steady_state" {
  type = bool
}

variable "deployment_circuit_breaker_enable" {
  type = bool
}

variable "deployment_circuit_breaker_rollback" {
  type = bool
}

variable "deployment_controller_type" {
  type = string
}

variable "assign_public_ip" {
  type = bool
}

variable "vpc_cidr_block" {
}

variable "enable_dns_hostnames" {
  type = string
}

variable "enable_dns_support" {
  type = string
}

variable "instance_tenancy" {
  type = string
}

variable "subnetcidr_block1" {
  type = string
}

variable "subnetcidr_block2" {
  type = string
}

variable "map_public_ip_on_launch" {
  type = string
}

variable "destination_cidr_block" {
  type = string
}

variable "egress_ports" {
  type = list(string)
}

variable "egress_protocol" {
  type = string
}

variable "egresscidr_blocks" {
}

variable "access_ip" {
  type = string
}
