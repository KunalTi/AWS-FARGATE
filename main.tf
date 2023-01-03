module "Fargate" {
  source                              = "./module/Fargate"
  repo_name                           = var.repo_name
  image_tag_mutability                = var.image_tag_mutability
  encryption_type                     = var.encryption_type
  scan_on_push                        = var.scan_on_push
  family_name                         = var.family_name
  requires_compatibilities            = var.requires_compatibilities
  network_mode                        = var.network_mode
  cpu                                 = var.cpu
  memory                              = var.memory
  skip_destroy                        = var.skip_destroy
  container_definitions               = file("definition.tpl")
  cluster_name                        = var.cluster_name
  setting_name                        = var.setting_name
  value                               = var.value
  service_name                        = var.service_name
  desired_count                       = var.desired_count
  deployment_maximum_percent          = var.deployment_maximum_percent
  deployment_minimum_healthy_percent  = var.deployment_minimum_healthy_percent
  enable_ecs_managed_tags             = var.enable_ecs_managed_tags
  enable_execute_command              = var.enable_execute_command
  health_check_grace_period_seconds   = var.health_check_grace_period_seconds
  launch_type                         = var.launch_type
  platform_version                    = var.platform_version
  security_groups                     = module.vpc.public_sg
  subnets                             = [module.vpc.public_subnet1, module.vpc.public_subnet2]
  propagate_tags                      = var.propagate_tags
  execution_role_arn                  = var.execution_role_arn
  scheduling_strategy                 = var.scheduling_strategy
  wait_for_steady_state               = var.wait_for_steady_state
  tags                                = var.tags
  deployment_circuit_breaker_enable   = var.deployment_circuit_breaker_enable
  deployment_circuit_breaker_rollback = var.deployment_circuit_breaker_rollback
  deployment_controller_type          = var.deployment_controller_type
  assign_public_ip                    = var.assign_public_ip

  depends_on = [
    module.vpc
  ]
}

module "vpc" {
  source                  = "./module/vpc"
  vpc_cidr_block          = var.vpc_cidr_block
  enable_dns_hostnames    = var.enable_dns_hostnames
  enable_dns_support      = var.enable_dns_support
  instance_tenancy        = var.instance_tenancy
  subnetcidr_block1       = var.subnetcidr_block1
  map_public_ip_on_launch = var.map_public_ip_on_launch
  subnetcidr_block2       = var.subnetcidr_block2
  destination_cidr_block  = var.destination_cidr_block
  egress_ports            = var.egress_ports
  security_groups         = local.security_groups
  egress_protocol         = var.egress_protocol
  egresscidr_blocks       = var.egresscidr_blocks
}
