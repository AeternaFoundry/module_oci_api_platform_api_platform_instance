variable "api_platform_api_platform_instances" {
  description = <<EOT
Map of api_platform_api_platform_instances, attributes below
Required:
    - compartment_id
    - name
Optional:
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    compartment_id = string
    name           = string
    defined_tags   = optional(map(string))
    description    = optional(string)
    freeform_tags  = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

