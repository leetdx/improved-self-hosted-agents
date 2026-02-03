variable "name" {
  type        = string
  description = "Name of Container Registry"
  default     = null
}

variable "container_registry_id" {
  type        = string
  description = "ID of Container Registry"
  default     = null
}

variable "platform_os" {
  type        = string
  description = "OS of Container Registry Task"
  default     = "Linux"
}

variable "dockerfile_path" {
  type        = string
  description = "Path to Dockerfile"
  default     = null
  sensitive   = true
}

variable "context_path" {
  type        = string
  description = "Context Path to execute the task, i.e. https://github.com/<username>/<repository>#<branch>:<folder>"
  default     = null
  sensitive   = true
}

variable "context_access_token" {
  type        = string
  description = "Git repository access token, i.e. <github personal access token>"
  default     = null
  sensitive   = true
}

variable "image_names" {
  type        = list(any)
  description = "List Name of the output images, i.e. ['helloworld:{{.Run.ID}}']"
  default     = null
}