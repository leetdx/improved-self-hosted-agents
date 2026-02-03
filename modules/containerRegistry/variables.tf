variable "name" {
  type        = string
  description = "Name of Container Registry"
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group of Container Registry"
  default     = null
}

variable "location" {
  type        = string
  description = "Location of Container Registry"
  default     = "southeastasia"
}

variable "sku" {
  type        = string
  description = "SKU of Container Registry"
  default     = "Basic"
}

variable "admin_enabled" {
  type        = bool
  description = "Enable admin account of Container Registry"
  default     = false
}

variable "create_timeout" {
  type        = string
  description = "Used when creating the Container Registry Task Schedule"
  default     = "45m"
}

variable "tags" {
  type        = map(any)
  description = "Tags of Container Registry"
  default     = null
}