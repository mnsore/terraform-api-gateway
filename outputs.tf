output "application" {
  description = "api_gateway application id"  
  value = cloudfoundry_app.api_gateway.id
}

output "api_gateway_callback" {
  description = "call back url - please add its value to IAM redirect URL"
  value = "https://${var.api_gateway_appname}-${data.cloudfoundry_space.cf_space.name}.${data.cloudfoundry_domain.default.name}/oauth2/callback"
}