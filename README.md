## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hsdp"></a> [hsdp](#requirement\_hsdp) | 0.14.8 |
| <a name="requirement_terraform"></a> [terrafom](#requirement\_terraform) | =>0.13.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudfoundry"></a> [cloudfoundry](#provider\_cloudfoundry) | n/a |
| <a name="provider_hsdp"></a> [hsdp](#provider\_hsdp) | 0.14.8 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudfoundry_app.api_gateway](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/app) | resource |
| [cloudfoundry_app.oauth_proxy](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/app) | resource |
| [cloudfoundry_network_policy.api_gateway](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/network_policy) | resource |
| [cloudfoundry_route.api_gateway](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/route) | resource |
| [cloudfoundry_route.oauth_proxy](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/route) | resource |
| [hsdp_iam_client.oauth_proxy](https://registry.terraform.io/providers/philips-software/hsdp/0.14.8/docs/resources/iam_client) | resource |
| [random_password.oauth_proxy](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [random_uuid.oauth_proxy](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |
| [cloudfoundry_domain.default](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/data-sources/domain) | data source |
| [cloudfoundry_domain.internal](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/data-sources/domain) | data source |
| [cloudfoundry_org.org](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/data-sources/org) | data source |
| [cloudfoundry_space.cf_space](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/data-sources/space) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_API_GATEWAY_DOCKER_IMAGE"></a> [API\_GATEWAY\_DOCKER\_IMAGE](#input\_API\_GATEWAY\_DOCKER\_IMAGE) | API\_GATEWAY\_DOCKER\_IMAGE with version to be deployed | `string` | n/a | yes |
| <a name="input_API_GATEWAY_ENVIRONMENT"></a> [API\_GATEWAY\_ENVIRONMENT](#input\_API\_GATEWAY\_ENVIRONMENT) | A map of environment variables to be passed to the app | `map(any)` | `{}` | no |
| <a name="input_CF_API_URL"></a> [CF\_API\_URL](#input\_CF\_API\_URL) | URL used to connect to CF environment API | `string` | `"https://api.cloud.pcftest.com"` | no |
| <a name="input_CF_ORG"></a> [CF\_ORG](#input\_CF\_ORG) | Cloud foundry API ORG | `string` | `"client-EDI-SolutionAccelerator"` | no |
| <a name="input_CF_PASSWORD"></a> [CF\_PASSWORD](#input\_CF\_PASSWORD) | Cloud foundry API password | `string` | n/a | yes |
| <a name="input_CF_USER"></a> [CF\_USER](#input\_CF\_USER) | Cloud foundry API username | `string` | n/a | yes |
| <a name="input_DOCKER_PASSWORD"></a> [DOCKER\_PASSWORD](#input\_DOCKER\_PASSWORD) | Password for the docker registry to pull the images from | `string` | n/a | yes |
| <a name="input_DOCKER_REGISTRY"></a> [DOCKER\_REGISTRY](#input\_DOCKER\_REGISTRY) | Docker registry for all images | `string` | `"docker.na1.hsdp.io/covid"` | no |
| <a name="input_DOCKER_USERNAME"></a> [DOCKER\_USERNAME](#input\_DOCKER\_USERNAME) | Username for the docker registry to pull images from | `string` | n/a | yes |
| <a name="input_Domain"></a> [Domain](#input\_Domain) | URL used to connect to CF environment API | `string` | `"cloud.pcftest.com"` | no |
| <a name="input_ENVOY_CONFIG_FILENAME"></a> [ENVOY\_CONFIG\_FILENAME](#input\_ENVOY\_CONFIG\_FILENAME) | Path to api-gateway config file - to be parsed to base64encode | `string` | n/a | yes |
| <a name="input_OAUTH2_ENVIRONMENT"></a> [OAUTH2\_ENVIRONMENT](#input\_OAUTH2\_ENVIRONMENT) | A map of environment variables to be passed to the app | `map(any)` | `{}` | no |
| <a name="input_OAUTH2_PROXY_COOKIE_NAME"></a> [OAUTH2\_PROXY\_COOKIE\_NAME](#input\_OAUTH2\_PROXY\_COOKIE\_NAME) | n/a | `string` | `"edi_session"` | no |
| <a name="input_OAUTH2_PROXY_COOKIE_REFRESH"></a> [OAUTH2\_PROXY\_COOKIE\_REFRESH](#input\_OAUTH2\_PROXY\_COOKIE\_REFRESH) | n/a | `string` | `"0h28m0s"` | no |
| <a name="input_OAUTH2_PROXY_COOKIE_SECRET"></a> [OAUTH2\_PROXY\_COOKIE\_SECRET](#input\_OAUTH2\_PROXY\_COOKIE\_SECRET) | n/a | `string` | `"OQINaROshtE9TcZkNAm-5Zs2Pv3xaWytBmc5W7sPX7w="` | no |
| <a name="input_OAUTH2_PROXY_DOCKER_IMAGE"></a> [OAUTH2\_PROXY\_DOCKER\_IMAGE](#input\_OAUTH2\_PROXY\_DOCKER\_IMAGE) | OAUTH2\_PROXY\_DOCKER\_IMAGE  with version to be deployed | `string` | n/a | yes |
| <a name="input_OAUTH2_PROXY_LOGIN_URL"></a> [OAUTH2\_PROXY\_LOGIN\_URL](#input\_OAUTH2\_PROXY\_LOGIN\_URL) | n/a | `string` | `"https://iam-client-test.us-east.philips-healthsuite.com/authorize/oauth2/authorize?api-version=2"` | no |
| <a name="input_OAUTH2_PROXY_OIDC_ISSUER_URL"></a> [OAUTH2\_PROXY\_OIDC\_ISSUER\_URL](#input\_OAUTH2\_PROXY\_OIDC\_ISSUER\_URL) | iam org admin password | `string` | `"https://iam-client-test.us-east.philips-healthsuite.com/oauth2/access_token"` | no |
| <a name="input_OAUTH2_PROXY_OIDC_JWKS_URL"></a> [OAUTH2\_PROXY\_OIDC\_JWKS\_URL](#input\_OAUTH2\_PROXY\_OIDC\_JWKS\_URL) | n/a | `string` | `"https://iam-client-test.us-east.philips-healthsuite.com/authorize/oauth2/jwks?api-version=1"` | no |
| <a name="input_OAUTH2_PROXY_PASS_ACCESS_TOKEN"></a> [OAUTH2\_PROXY\_PASS\_ACCESS\_TOKEN](#input\_OAUTH2\_PROXY\_PASS\_ACCESS\_TOKEN) | n/a | `string` | `"true"` | no |
| <a name="input_OAUTH2_PROXY_PASS_AUTHORIZATION_HEADER"></a> [OAUTH2\_PROXY\_PASS\_AUTHORIZATION\_HEADER](#input\_OAUTH2\_PROXY\_PASS\_AUTHORIZATION\_HEADER) | n/a | `string` | `"true"` | no |
| <a name="input_OAUTH2_PROXY_PASS_BASIC_AUTH"></a> [OAUTH2\_PROXY\_PASS\_BASIC\_AUTH](#input\_OAUTH2\_PROXY\_PASS\_BASIC\_AUTH) | n/a | `string` | `"true"` | no |
| <a name="input_OAUTH2_PROXY_PROFILE_URL"></a> [OAUTH2\_PROXY\_PROFILE\_URL](#input\_OAUTH2\_PROXY\_PROFILE\_URL) | n/a | `string` | `"https://iam-client-test.us-east.philips-healthsuite.com/authorize/oauth2/userinfo?api-version=2"` | no |
| <a name="input_OAUTH2_PROXY_REDEEM_URL"></a> [OAUTH2\_PROXY\_REDEEM\_URL](#input\_OAUTH2\_PROXY\_REDEEM\_URL) | n/a | `string` | `"https://iam-client-test.us-east.philips-healthsuite.com/authorize/oauth2/token?api-version=2"` | no |
| <a name="input_OAUTH2_PROXY_SET_AUTHORIZATION_HEADER"></a> [OAUTH2\_PROXY\_SET\_AUTHORIZATION\_HEADER](#input\_OAUTH2\_PROXY\_SET\_AUTHORIZATION\_HEADER) | n/a | `string` | `"true"` | no |
| <a name="input_OAUTH2_PROXY_SET_XAUTHREQUEST"></a> [OAUTH2\_PROXY\_SET\_XAUTHREQUEST](#input\_OAUTH2\_PROXY\_SET\_XAUTHREQUEST) | n/a | `string` | `"true"` | no |
| <a name="input_api_gateway_appname"></a> [api\_gateway\_appname](#input\_api\_gateway\_appname) | space name | `string` | `"api_gateway2"` | no |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | Client ID for terrafom iam | `string` | `"sal_terraform"` | no |
| <a name="input_hsdp_iam_url"></a> [hsdp\_iam\_url](#input\_hsdp\_iam\_url) | The IAM url for the region that the IAM ORG is in | `string` | `"https://iam-client-test.us-east.philips-healthsuite.com"` | no |
| <a name="input_hsdp_idm_url"></a> [hsdp\_idm\_url](#input\_hsdp\_idm\_url) | The IDM url for the region that the IAM ORG is in | `string` | `"https://idm-client-test.us-east.philips-healthsuite.com"` | no |
| <a name="input_oauth2_password"></a> [oauth2\_password](#input\_oauth2\_password) | Client ID for terrafom iam | `string` | n/a | yes |
| <a name="input_oauth_proxy_appname"></a> [oauth\_proxy\_appname](#input\_oauth\_proxy\_appname) | Application name | `string` | `"oauth_proxy1"` | no |
| <a name="input_org_admin_password"></a> [org\_admin\_password](#input\_org\_admin\_password) | iam org admin password | `string` | n/a | yes |
| <a name="input_org_admin_username"></a> [org\_admin\_username](#input\_org\_admin\_username) | iam org admin user | `string` | n/a | yes |
| <a name="input_space"></a> [space](#input\_space) | space name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_callback"></a> [api\_gateway\_callback](#output\_api\_gateway\_callback) | call back url - please add its value to IAM redirect URL |
| <a name="output_application"></a> [application](#output\_application) | api\_gateway application id |

D:\GitWS\api-gateway-v2\module\api_gateway>
















