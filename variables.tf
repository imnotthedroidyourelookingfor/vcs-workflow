variable "product" {
  type        = string
  description = "A HashiCorp product name"
  default     = "X - Terraform"
}

variable "target_env" {
  type        = string
  description = "The environment to deploy to"
  default     = "dev"
}

