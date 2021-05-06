terraform {
  required_providers {
    cloudfoundry = {
      source = "cloudfoundry-community/cloudfoundry"
    }
     hsdp = {
      source = "philips-software/hsdp"
      version = "0.14.8"
    }
  }
}
provider "cloudfoundry" {
  api_url  = var.CF_API_URL
  user     = var.CF_USER
  password = var.CF_PASSWORD
}

provider "hsdp" {
  iam_url             = var.hsdp_iam_url
  idm_url             = var.hsdp_idm_url
  oauth2_client_id   = var.client_id 
  oauth2_password    = var.oauth2_password
  org_admin_username = var.org_admin_username
  org_admin_password = var.org_admin_password
  #debug_log          = "d:/temp/hsdp.log"
 
}



data "cloudfoundry_org" "org" {
  name = var.CF_ORG
}

 data "cloudfoundry_space" "cf_space" {
     name = var.space
     org = data.cloudfoundry_org.org.id
 }


data "cloudfoundry_domain" "default" {
  name = var.Domain
}

data "cloudfoundry_domain" "internal" {
  name = "apps.internal"
}

