output "task_definition_id" {
  value = aws_ecs_task_definition.test.id
}

output "repository_url" {
  value = aws_ecr_repository.ecs.repository_url
}

output "registry_id" {
  value = aws_ecr_repository.ecs.registry_id
}

output "service_id" {
  value = aws_ecs_service.yu.id
}

output "task_revision" {
  value = aws_ecs_task_definition.test.revision
}
