data "azurecaf_name" "this" {
  resource_type = var.resource_type
  suffixes      = local.name_suffixes
  clean_input   = true
}
