variable "ecrpublic_repositories" {
  description = <<EOT
Map of ecrpublic_repositories, attributes below
Required:
    - repository_name
Optional:
    - force_destroy
    - region
    - tags
    - tags_all
    - catalog_data (block):
        - about_text (optional)
        - architectures (optional)
        - description (optional)
        - logo_image_blob (optional)
        - operating_systems (optional)
        - usage_text (optional)
EOT

  type = map(object({
    repository_name = string
    force_destroy   = optional(bool)
    region          = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
    catalog_data = optional(object({
      about_text        = optional(string)
      architectures     = optional(set(string))
      description       = optional(string)
      logo_image_blob   = optional(string)
      operating_systems = optional(set(string))
      usage_text        = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ecrpublic_repositories : (
        v.catalog_data == null || (v.catalog_data.about_text == null || (length(v.catalog_data.about_text) >= 0 && length(v.catalog_data.about_text) <= 10240))
      )
    ])
    error_message = "must be between 0 and 10240 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ecrpublic_repositories : (
        v.catalog_data == null || (v.catalog_data.usage_text == null || (length(v.catalog_data.usage_text) >= 0 && length(v.catalog_data.usage_text) <= 10240))
      )
    ])
    error_message = "must be between 0 and 10240 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

