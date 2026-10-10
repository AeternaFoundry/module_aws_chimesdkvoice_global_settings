output "chimesdkvoice_global_settings_id" {
  description = "Map of id values across all chimesdkvoice_global_settings, keyed the same as var.chimesdkvoice_global_settings"
  value       = { for k, v in aws_chimesdkvoice_global_settings.chimesdkvoice_global_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chimesdkvoice_global_settings_voice_connector" {
  description = "Map of voice_connector values across all chimesdkvoice_global_settings, keyed the same as var.chimesdkvoice_global_settings"
  value       = { for k, v in aws_chimesdkvoice_global_settings.chimesdkvoice_global_settings : k => one(v.voice_connector) if v.voice_connector != null && length(v.voice_connector) > 0 }
}

