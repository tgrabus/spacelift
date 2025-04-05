locals {
  instance = format("%02d", var.instance)

  stage_abbr_map = {
    development   = "dv"
    qualification = "qa"
    sandbox       = "sb"
    production    = "pd"
  }

  product_abbr_map = {
    finzeo = "fz"
  }

  location_short_map = {
    "eastus"    = "eus"
    "eastus2"   = "eus2"
    "westus"    = "wus"
    "westus2"   = "wus2"
    "centralus" = "cus"
  }
  derived_location_short = lookup(local.location_short_map, var.location, var.location)

  name_suffixes = compact([
    local.stage,
    local.derived_location_short,
    local.product,
    var.short_description,
    local.instance
  ])

  product = lookup(local.product_abbr_map, var.product, var.product)
  stage   = lookup(local.stage_abbr_map, var.stage, var.stage)
}
