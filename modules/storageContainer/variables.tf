variable "name" {
  type        = string
  description = "Name of Storage Container"
  default     = null
}

variable "storage_account_id" {
  type        = string
  description = "ID of Storage Account"
  default     = null
}

variable "container_access_type" {
  type        = string
  description = "Access Type of Storage Container"
  default     = "private"
}