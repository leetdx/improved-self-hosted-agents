variable "name" {
  type        = string
  description = "Name of Resource Group"
  default     = null
}

variable "location" {
  type        = string
  description = "Location of Resource Group"
  default     = "southeastasia"
}

variable "tags" {
  type        = map(any)
  description = "Tags of Resource Group"
  default     = null
}