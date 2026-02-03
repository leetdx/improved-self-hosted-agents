### container group
variable "group_name" {
  type        = string
  description = "Name of Container Instance Group"
  default     = null
}

variable "location" {
  type        = string
  description = "Location of Container Instance Group"
  default     = "southeastasia"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group Name of Container Instance Group"
  default     = null
}

variable "ip_address_type" {
  type        = string
  description = "IP Address Type of Container Instance Group"
  default     = "Public"
}

variable "os_type" {
  type        = string
  description = "OS Type of Container Instance Group"
  default     = "Linux"
}

### container
variable "container_name" {
  type        = string
  description = "Name of the container"
  default     = null
}

variable "container_image" {
  type        = string
  description = "Image of the container"
  default     = null
}

variable "cpu" {
  type        = string
  description = "CPU of the container"
  default     = "2.0"
}

variable "memory" {
  type        = string
  description = "Memory of the container"
  default     = "4.0"
}

variable "port" {
  type        = number
  description = "Port of the container"
  default     = 443
}
variable "protocol" {
  type        = string
  description = "Protocol of the container"
  default     = "TCP"
}

variable "environment_variables" {
  type        = map(any)
  description = "A list of environment variables to be set on the container"
  default     = null
}

variable "secure_environment_variables" {
  type        = map(any)
  description = "A list of sensitive environment variables to be set on the container"
  default     = null
  # sensitive   = true
}

### image_registry_credential
variable "cr_username" {
  type        = string
  description = "Username of the registry"
  default     = null
  sensitive   = true
}

variable "cr_password" {
  type        = string
  description = "Password of the registry"
  default     = null
  sensitive   = true
}

variable "cr_server" {
  type        = string
  description = "Server name of the registry"
  default     = null
}

variable "tags" {
  type        = map(any)
  description = "Tags of Container Instance"
  default     = null
}