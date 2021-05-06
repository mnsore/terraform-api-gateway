# Copyright Koninklijke Philips N.V. 2020

variable "hsdp_iam_url" {
  type        = string
  description = "The IAM url for the region that the IAM ORG is in"
  default     = "https://iam-client-test.us-east.philips-healthsuite.com"
}

variable "hsdp_idm_url" {
  type        = string
  description = "The IDM url for the region that the IAM ORG is in"
  default     = "https://idm-client-test.us-east.philips-healthsuite.com"
}

variable "client_id" {
  type        = string
  description = "Client ID for terrafom iam"
  default = "sal_terraform"
  
}

variable "org_admin_username" {
  type        = string
  description = "iam org admin user"
  
  
}
variable "org_admin_password" {
  type        = string
  description = "iam org admin password"
  
  
}

variable "oauth2_password" {
  type        = string
  description = "Client ID for terrafom iam"
  
  
}
