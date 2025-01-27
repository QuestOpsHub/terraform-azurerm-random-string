#---------------
# Random String
#---------------
resource "random_string" "random" {
  length           = var.length
  keepers          = try(var.keepers, {})
  lower            = try(var.lower, true)
  min_lower        = try(var.min_lower, 0)
  min_numeric      = try(var.min_numeric, 0)
  min_special      = try(var.min_special, 0)
  min_upper        = try(var.min_upper, 0)
  numeric          = try(var.numeric, true)
  override_special = try(var.override_special, null)
  special          = try(var.special, true)
  upper            = try(var.upper, true)
}