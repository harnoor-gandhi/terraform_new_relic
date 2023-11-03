resource "newrelic_synthetics_script_monitor" "api_monitor" {
    for_each = var.api
  status               = each.value.status
  name                 = each.value.name
  type                 = each.value.type
  locations_public     = each.value.locations_public
  period               = each.value.period

  script = file("${path.root}/${each.value.script}")

  script_language      = each.value.script_language
  runtime_type         = each.value.runtime_type
  runtime_type_version = each.value.runtime_type_version

  
}