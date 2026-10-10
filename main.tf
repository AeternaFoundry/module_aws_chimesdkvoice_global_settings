resource "aws_chimesdkvoice_global_settings" "chimesdkvoice_global_settings" {
  for_each = var.chimesdkvoice_global_settings


  voice_connector {
    cdr_bucket = each.value.voice_connector.cdr_bucket
  }
}

