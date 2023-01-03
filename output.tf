output "task_definition_id" {
  value = module.Fargate.task_definition_id
}

output "repository_url" {
  value = module.Fargate.repository_url
}

output "registry_id" {
  value = module.Fargate.registry_id
}

output "service_id" {
  value = module.Fargate.service_id
}

output "task_revision" {
  value = module.Fargate.task_revision
}
