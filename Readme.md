# Random String Terraform Module

Terraform module to generate secure random alphanumeric strings with optional special characters.

# Table of Contents

- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=4.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >=3.6.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | >=3.6.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_string.random](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keepers"></a> [keepers](#input\_keepers) | (Map of String) Arbitrary map of values that, when changed, will trigger recreation of resource. | `map(string)` | `{}` | no |
| <a name="input_length"></a> [length](#input\_length) | (Number) The length of the string desired. The minimum value for length is 1 and, length must also be >= (min\_upper + min\_lower + min\_numeric + min\_special). | `number` | n/a | yes |
| <a name="input_lower"></a> [lower](#input\_lower) | (Boolean) Include lowercase alphabet characters in the result. Default value is true. | `bool` | `true` | no |
| <a name="input_min_lower"></a> [min\_lower](#input\_min\_lower) | (Number) Minimum number of lowercase alphabet characters in the result. Default value is 0. | `number` | `0` | no |
| <a name="input_min_numeric"></a> [min\_numeric](#input\_min\_numeric) | (Number) Minimum number of numeric characters in the result. Default value is 0. | `number` | `0` | no |
| <a name="input_min_special"></a> [min\_special](#input\_min\_special) | (Number) Minimum number of special characters in the result. Default value is 0. | `number` | `0` | no |
| <a name="input_min_upper"></a> [min\_upper](#input\_min\_upper) | (Number) Minimum number of uppercase alphabet characters in the result. Default value is 0. | `number` | `0` | no |
| <a name="input_numeric"></a> [numeric](#input\_numeric) | (Boolean, Deprecated) Include numeric characters in the result. Default value is true. If number, upper, lower, and special are all configured, at least one of them must be set to true. | `bool` | `true` | no |
| <a name="input_override_special"></a> [override\_special](#input\_override\_special) | (String) Supply your own list of special characters to use for string generation. This overrides the default character list in the special argument. The special argument must still be set to true for any overwritten characters to be used in generation. | `string` | `null` | no |
| <a name="input_special"></a> [special](#input\_special) | (Boolean) Include special characters in the result. These are !@#$%&*()-\_=+[]{}<>:?. Default value is true. | `bool` | `true` | no |
| <a name="input_upper"></a> [upper](#input\_upper) | (Boolean) Include uppercase alphabet characters in the result. Default value is true. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | (String) The generated random string. |
| <a name="output_result"></a> [result](#output\_result) | (String) The generated random string. |
