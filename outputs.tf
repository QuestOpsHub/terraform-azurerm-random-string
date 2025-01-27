#---------------
# Random String
#---------------
output "id" {
  description = "(String) The generated random string."
  value       = random_string.random.id
}

output "result" {
  description = "(String) The generated random string."
  value       = random_string.random.result
}