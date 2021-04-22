module "main" {
  source = "git://github.com/hadenlabs/terraform-uptimerobot-monitor.git?ref=0.0.0"
  monitors = [
    {
      friendly_name = "test-url"
      url           = "https://google.com"
    },
  ]
}
