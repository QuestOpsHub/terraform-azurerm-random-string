#---------------
# Random String
#---------------
variable "length" {
  description = "(Number) The length of the string desired. The minimum value for length is 1 and, length must also be >= (min_upper + min_lower + min_numeric + min_special)."
  type        = number
}

variable "keepers" {
  description = "(Map of String) Arbitrary map of values that, when changed, will trigger recreation of resource."
  type        = map(string)
  default     = {}
}

variable "lower" {
  description = "(Boolean) Include lowercase alphabet characters in the result. Default value is true."
  type        = bool
  default     = true
}

variable "min_lower" {
  description = "(Number) Minimum number of lowercase alphabet characters in the result. Default value is 0."
  type        = number
  default     = 0
}

variable "min_numeric" {
  description = "(Number) Minimum number of numeric characters in the result. Default value is 0."
  type        = number
  default     = 0
}

variable "min_special" {
  description = "(Number) Minimum number of special characters in the result. Default value is 0."
  type        = number
  default     = 0
}

variable "min_upper" {
  description = "(Number) Minimum number of uppercase alphabet characters in the result. Default value is 0."
  type        = number
  default     = 0
}

variable "numeric" {
  description = "(Boolean, Deprecated) Include numeric characters in the result. Default value is true. If number, upper, lower, and special are all configured, at least one of them must be set to true."
  type        = bool
  default     = true
}

variable "override_special" {
  description = "(String) Supply your own list of special characters to use for string generation. This overrides the default character list in the special argument. The special argument must still be set to true for any overwritten characters to be used in generation."
  type        = string
  default     = null
}

variable "special" {
  description = "(Boolean) Include special characters in the result. These are !@#$%&*()-_=+[]{}<>:?. Default value is true."
  type        = bool
  default     = true
}

variable "upper" {
  description = "(Boolean) Include uppercase alphabet characters in the result. Default value is true."
  type        = bool
  default     = true
}