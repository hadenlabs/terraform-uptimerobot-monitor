### basic

```hcl
  module "main" {
    source = "hadenlabs/monitor/uptimerobot"
    version   = "0.1.0"
    source = "git://github.com/hadenlabs/terraform-uptimerobot-monitor.git?ref=0.1.0"
    monitors = [
      {
        friendly_name = "test-url"
        url           = "https://google.com"
      },
    ]
  }
```
