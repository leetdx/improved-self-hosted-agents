variable "agents-ci" {}

variable "secure_environment_variables" {
  type        = map(any)
  description = "A list of sensitive environment variables to be set on the container"
  default     = null
}

variable "context_access_token" {
  type        = string
  description = "Git repository access token, i.e. <github personal access token>"
  default     = null
  sensitive   = true
}