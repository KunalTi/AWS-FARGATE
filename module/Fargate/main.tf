resource "aws_ecr_repository" "ecs" {
  name                 = var.repo_name
  image_tag_mutability = var.image_tag_mutability
  tags                 = var.tags

  encryption_configuration {
    encryption_type = var.encryption_type
  }

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
}

resource "aws_ecs_task_definition" "test" {
  family                   = var.family_name
  requires_compatibilities = var.requires_compatibilities
  network_mode             = var.network_mode
  cpu                      = var.cpu
  execution_role_arn       = var.execution_role_arn
  memory                   = var.memory
  skip_destroy             = var.skip_destroy
  tags                     = var.tags
  container_definitions    = var.container_definitions
}

resource "aws_ecs_cluster" "cluster" {
  name = var.cluster_name
  tags = var.tags
  setting {
    name  = var.setting_name
    value = var.value
  }

  depends_on = [
    aws_ecs_task_definition.test
  ]
}

resource "aws_ecs_service" "yu" {
  name                               = var.service_name
  cluster                            = aws_ecs_cluster.cluster.name
  task_definition                    = aws_ecs_task_definition.test.family
  desired_count                      = var.desired_count
  deployment_maximum_percent         = var.deployment_maximum_percent
  deployment_minimum_healthy_percent = var.deployment_minimum_healthy_percent
  enable_ecs_managed_tags            = var.enable_ecs_managed_tags
  enable_execute_command             = var.enable_execute_command
  health_check_grace_period_seconds  = var.health_check_grace_period_seconds
  launch_type                        = var.launch_type
  platform_version                   = var.platform_version
  propagate_tags                     = var.propagate_tags
  scheduling_strategy                = var.scheduling_strategy
  wait_for_steady_state              = var.wait_for_steady_state
  tags                               = var.tags

  deployment_circuit_breaker {
    enable   = var.deployment_circuit_breaker_enable
    rollback = var.deployment_circuit_breaker_rollback
  }

  deployment_controller {
    type = var.deployment_controller_type
  }

  network_configuration {
    assign_public_ip = var.assign_public_ip
    security_groups  = concat([var.security_groups])
    subnets          = var.subnets
  }

  depends_on = [
    aws_ecs_task_definition.test,
    aws_ecs_cluster.cluster,
    aws_ecr_repository.ecs
  ]
}
