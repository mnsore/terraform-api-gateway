

variable "OAUTH2_PROXY_OIDC_JWKS_URL" {
  type        = string
  description = ""
  default     = "https://iam-client-test.us-east.philips-healthsuite.com/authorize/oauth2/jwks?api-version=1"
}

variable "OAUTH2_PROXY_LOGIN_URL" {
  type        = string
  description = ""
  default = "https://iam-client-test.us-east.philips-healthsuite.com/authorize/oauth2/authorize?api-version=2"
}

variable "OAUTH2_PROXY_REDEEM_URL" {
  type        = string
  description = ""
  default = "https://iam-client-test.us-east.philips-healthsuite.com/authorize/oauth2/token?api-version=2"
}

variable "OAUTH2_PROXY_OIDC_ISSUER_URL" {
  type        = string
  description = "iam org admin password"
  default = "https://iam-client-test.us-east.philips-healthsuite.com/oauth2/access_token"

}

variable "OAUTH2_PROXY_COOKIE_NAME" {
  type        = string
  description = ""  
  default = "edi_session"
}

variable "OAUTH2_PROXY_COOKIE_REFRESH" {
  type        = string
  description = ""
  default = "0h28m0s"  
}

variable "OAUTH2_PROXY_PROFILE_URL" {
  type = string
  description = ""
  default = "https://iam-client-test.us-east.philips-healthsuite.com/authorize/oauth2/userinfo?api-version=2"    
}

variable "OAUTH2_PROXY_COOKIE_SECRET" {
  type        = string
  description = ""
  default = "OQINaROshtE9TcZkNAm-5Zs2Pv3xaWytBmc5W7sPX7w="  
}

variable "OAUTH2_PROXY_SET_XAUTHREQUEST" {
  type        = string
  description = ""
  default = "true"   
}

variable "OAUTH2_PROXY_PASS_ACCESS_TOKEN" {
  type        = string
  description = ""
  default = "true"   
}

variable "OAUTH2_PROXY_PASS_AUTHORIZATION_HEADER" {
  type        = string
  description = ""
  default = "true"   
}

variable "OAUTH2_PROXY_PASS_BASIC_AUTH" {
  type        = string
  description = ""
  default = "true"   
}

variable "OAUTH2_PROXY_SET_AUTHORIZATION_HEADER" {
  type        = string
  description = ""
  default = "true"   
}


variable "OAUTH2_ENVIRONMENT" {
  type        = map(any)
  description = "A map of environment variables to be passed to the app"
  default     = {}
}

