#EDI Devops


variable "CF_API_URL" {
  type        = string
  description = "URL used to connect to CF environment API"
  default     = "https://api.cloud.pcftest.com"
}

variable "CF_PASSWORD" {
  type        = string
  description = "Cloud foundry API password"

}

variable "CF_USER" {
  type        = string
  description = "Cloud foundry API username"
 
}
variable "CF_ORG" {
  type        = string
  description = "Cloud foundry API ORG"
  default     = "client-EDI-SolutionAccelerator"

}

variable "DOCKER_PASSWORD" {
  type        = string
  description = "Password for the docker registry to pull the images from"

}

variable "DOCKER_USERNAME" {
  type        = string
  description = "Username for the docker registry to pull images from"
}

variable "OAUTH2_PROXY_DOCKER_IMAGE" {
  type        = string
  description = "OAUTH2_PROXY_DOCKER_IMAGE  with version to be deployed"
}

variable "API_GATEWAY_DOCKER_IMAGE" {
  type        = string
  description = "API_GATEWAY_DOCKER_IMAGE with version to be deployed"
}

variable "DOCKER_REGISTRY" {
  type        = string
  description = "Docker registry for all images"
  default     = "docker.na1.hsdp.io/covid"
}

variable "Domain" {
  type        = string
  description = "URL used to connect to CF environment API"
  default     = "cloud.pcftest.com" 
}

variable "space" {
  type        = string
  description = "space name"
 
}

  variable "api_gateway_appname" {
  type        = string
  description = "space name"
  default     = "api_gateway2"
}   
     

  variable "oauth_proxy_appname" {
  type        = string
  description = "Application name"
  default     = "oauth_proxy1"
} 



     