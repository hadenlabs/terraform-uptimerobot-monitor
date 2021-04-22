<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_uptimerobot"></a> [uptimerobot](#requirement\_uptimerobot) | >=0.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_uptimerobot"></a> [uptimerobot](#provider\_uptimerobot) | >=0.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [uptimerobot_monitor.this](https://registry.terraform.io/providers/louy/uptimerobot/latest/docs/resources/monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_monitors"></a> [monitors](#input\_monitors) | The list of UptimeRobot monitors | `list(map(string))` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->