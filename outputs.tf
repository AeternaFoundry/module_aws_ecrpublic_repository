output "ecrpublic_repositories_id" {
  description = "Map of id values across all ecrpublic_repositories, keyed the same as var.ecrpublic_repositories"
  value       = { for k, v in aws_ecrpublic_repository.ecrpublic_repositories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecrpublic_repositories_arn" {
  description = "Map of arn values across all ecrpublic_repositories, keyed the same as var.ecrpublic_repositories"
  value       = { for k, v in aws_ecrpublic_repository.ecrpublic_repositories : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ecrpublic_repositories_catalog_data" {
  description = "Map of catalog_data values across all ecrpublic_repositories, keyed the same as var.ecrpublic_repositories"
  value       = { for k, v in aws_ecrpublic_repository.ecrpublic_repositories : k => one(v.catalog_data) if v.catalog_data != null && length(v.catalog_data) > 0 }
}
output "ecrpublic_repositories_force_destroy" {
  description = "Map of force_destroy values across all ecrpublic_repositories, keyed the same as var.ecrpublic_repositories"
  value       = { for k, v in aws_ecrpublic_repository.ecrpublic_repositories : k => v.force_destroy if v.force_destroy != null }
}
output "ecrpublic_repositories_region" {
  description = "Map of region values across all ecrpublic_repositories, keyed the same as var.ecrpublic_repositories"
  value       = { for k, v in aws_ecrpublic_repository.ecrpublic_repositories : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecrpublic_repositories_registry_id" {
  description = "Map of registry_id values across all ecrpublic_repositories, keyed the same as var.ecrpublic_repositories"
  value       = { for k, v in aws_ecrpublic_repository.ecrpublic_repositories : k => v.registry_id if v.registry_id != null && length(v.registry_id) > 0 }
}
output "ecrpublic_repositories_repository_name" {
  description = "Map of repository_name values across all ecrpublic_repositories, keyed the same as var.ecrpublic_repositories"
  value       = { for k, v in aws_ecrpublic_repository.ecrpublic_repositories : k => v.repository_name if v.repository_name != null && length(v.repository_name) > 0 }
}
output "ecrpublic_repositories_repository_uri" {
  description = "Map of repository_uri values across all ecrpublic_repositories, keyed the same as var.ecrpublic_repositories"
  value       = { for k, v in aws_ecrpublic_repository.ecrpublic_repositories : k => v.repository_uri if v.repository_uri != null && length(v.repository_uri) > 0 }
}
output "ecrpublic_repositories_tags" {
  description = "Map of tags values across all ecrpublic_repositories, keyed the same as var.ecrpublic_repositories"
  value       = { for k, v in aws_ecrpublic_repository.ecrpublic_repositories : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ecrpublic_repositories_tags_all" {
  description = "Map of tags_all values across all ecrpublic_repositories, keyed the same as var.ecrpublic_repositories"
  value       = { for k, v in aws_ecrpublic_repository.ecrpublic_repositories : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

