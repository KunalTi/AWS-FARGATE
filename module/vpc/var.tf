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

variable "security_groups" {
}

variable "egress_ports" {
  type = list(string)
}

variable "egress_protocol" {
  type = string
}

variable "egresscidr_blocks" {
}
