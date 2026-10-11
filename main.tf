resource "oci_api_platform_api_platform_instance" "api_platform_api_platform_instances" {
  for_each = var.api_platform_api_platform_instances

  compartment_id = each.value.compartment_id
  name           = each.value.name
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  freeform_tags  = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

