
variable "ENVOY_CONFIG_FILENAME" {
  type        = string
  description = "Path to api-gateway config file - to be parsed to base64encode"
  
  }

variable "API_GATEWAY_ENVIRONMENT" {
  type        = map(any)
  description = "A map of environment variables to be passed to the app"
  default     = {}
}

