output "instance" {
  description = "show instance"
  value       = uptimerobot_monitor.this
}

output "ids" {
  description = "show ids instance"
  value       = [for value in uptimerobot_monitor.this : value.id]
}