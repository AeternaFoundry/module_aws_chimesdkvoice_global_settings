variable "chimesdkvoice_global_settings" {
  description = <<EOT
Map of chimesdkvoice_global_settings, attributes below
Required:
    - voice_connector (block):
        - cdr_bucket (optional)
EOT

  type = map(object({
    voice_connector = object({
      cdr_bucket = optional(string)
    })
  }))
}

