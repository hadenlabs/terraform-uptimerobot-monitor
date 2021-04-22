locals {
  defaults = {
    monitor = {
      type          = "http"
      sub_type      = null
      port          = null
      interval      = 300
      http_password = null
      http_username = null
    }
  }

  inputs = {
    monitors = var.monitors
  }

  generated = {
    monitors = [for v in local.inputs.monitors : merge(local.defaults.monitor, v)]
  }

  outputs = {
    monitors = local.generated.monitors
  }
}

resource "uptimerobot_monitor" "this" {
  for_each = { for m in local.outputs.monitors : m.friendly_name => m }

  friendly_name = lookup(each.value, "friendly_name")
  type          = lookup(each.value, "type")
  sub_type      = lookup(each.value, "sub_type")
  url           = lookup(each.value, "url")
  port          = lookup(each.value, "port")
  interval      = lookup(each.value, "interval")
  http_password = lookup(each.value, "http_password")
  http_username = lookup(each.value, "http_username")

}
