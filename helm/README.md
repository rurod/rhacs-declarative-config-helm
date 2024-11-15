# rhacs-declarative-config-helm

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.0](https://img.shields.io/badge/AppVersion-0.0.0-informational?style=flat-square)

A Helm chart for Red Hat Avdvanced Cluster Security Declarative Config

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| access_scopes[0].clusterLabelSelectors[0].requirements[0] | object | `{"key":"custom-label","operator":"IN","values":["A","B","C"]}` | Label selectors to select clusters that must be included within the Access Scope |
| access_scopes[0].description | string | `"Access Scope"` | Description of the Access Scope |
| access_scopes[0].destination | string | `"ConfigMap"` | Sets the destination of the Access Scope configuration. Can be ConfigMap or Secret. |
| access_scopes[0].included | list | `[{"cluster":"cluster-name","namespaces":["namespaceA","namespaceB"]}]` | List of clusters and their namespaces that should be included within the Access Scope |
| access_scopes[0].name | string | `"access-scope"` | Name of the Access Scope |
| access_scopes[0].namespaceLabelSelectors[0].requirements[0] | object | `{"key":"custom-label","operator":"IN","values":["A","B","C"]}` | Label selectors to select namespaces that must be included within the Access Scope |
| auth_providers[0].claimMappings | list | `[{"name":"claim_token","path":"claim"}]` | List of non-standard claims from the IdP token that should be available within auth provider rules. Only applicable for OIDC authentication. |
| auth_providers[0].destination | string | `"ConfigMap"` | Sets the destination of the auth provider configuration. Can be ConfigMap or Secret. |
| auth_providers[0].extraUiEndpoints | list | `["endpoint1:port1","endpoint2:port2"]` | Additional RHACS UI endpoints from which the auth provider is used. |
| auth_providers[0].groups | list | `[{"key":"userid","role":"view","value":"admin"}]` | Role of the groups to add within the auth provider. |
| auth_providers[0].groups[0].key | string | `"userid"` | Key can be userid, name, email or group  |
| auth_providers[0].groups[0].role | string | `"view"` | Role must be the role associated to this group |
| auth_providers[0].groups[0].value | string | `"admin"` | Value must be the userid, the name, the email or the group name. |
| auth_providers[0].iap.audience | string | `""` | Audience that should be validated |
| auth_providers[0].minimumAccessRole | string | `"role"` | Minimum access role of the auth provider. |
| auth_providers[0].name | string | `"auth-prov"` | Authentication provider name |
| auth_providers[0].oidc.clientID | string | `"client-id"` | Client ID of the OIDC client |
| auth_providers[0].oidc.clientSecret | string | `"client-secret"` | Client Secret of the OIDC client |
| auth_providers[0].oidc.disableOfflineAccessScope | bool | `false` | Disable requesting the scope offline_access from the OIDC identity provider. |
| auth_providers[0].oidc.issuer | string | `"issuer"` | Issuer of the OIDC client |
| auth_providers[0].oidc.mode | string | `"auto"` | The callback mode to use. Possible vlaues are : auto, post, query, fragment. |
| auth_providers[0].openshift.enable | bool | `true` | Toggle on/off the OpenShift Auth integration |
| auth_providers[0].requiredAttributes | list | `[{"key":"foo","value":"bar"}]` | Required attributes from the auth provider |
| auth_providers[0].saml.cert | string | `"-----BEGIN CERTIFICATE-----\n...\n-----END CERTIFICATE----- \n"` | SAML IdP certificate in PEM format |
| auth_providers[0].saml.idpIssuer | string | `"issuer"` | Issuer of the IdP |
| auth_providers[0].saml.metadataURL | string | `"https://metadata.url.local"` | Metadata URL of the service provider |
| auth_providers[0].saml.nameIdFormat | string | `"nameIdFormat"` | Name ID format |
| auth_providers[0].saml.spIssuer | string | `"sp-issuer"` | Service provider issuer |
| auth_providers[0].saml.ssoURL | string | `"https://sso.url.local"` | URL of the IdP |
| auth_providers[0].uiEndpoint | string | `"https://endpoint.local"` | UI Endpoint from which the auth provider is used (this is typically the public endpoint where RHACS is exposed). |
| auth_providers[0].userpki | object | `{"certificateAuthorities":"-----BEGIN CERTIFICATE-----\n...\n-----END CERTIFICATE----- \n\n"}` | User PKI specific options |
| auth_providers[0].userpki.certificateAuthorities | string | `"-----BEGIN CERTIFICATE-----\n...\n-----END CERTIFICATE----- \n\n"` | Certificate authorities in PEM format |
| general.configMap | object | `{"enabled":true,"name":"rhacs-declarative-config"}` | ConfigMap options |
| general.configMap.enabled | bool | `true` | Enable ConfigMap generation |
| general.configMap.name | string | `"rhacs-declarative-config"` | Define generated ConfigMap name |
| general.defaultDestination | string | `"ConfigMap"` | Sets the default destination of the generated configurations Can be ConfigMap or Secret |
| general.secret | object | `{"enabled":true,"name":"rhacs-declarative-config"}` | Secret options |
| general.secret.enabled | bool | `true` | Enable Secret generation |
| general.secret.name | string | `"rhacs-declarative-config"` | Define generated Secret name |
| notifiers[0].destination | string | `"ConfigMap"` | Sets the destination of the notifier configuration. Can be ConfigMap or Secret. |
| notifiers[0].generic | object | `{"auditLoggingEnabled":true,"endpoint":"https://endpoint.local","extraFields":[{"key":"foo","value":"bar"}],"headers":[{"key":"foo","value":"bar"}],"password":null,"skipTLSVerify":false}` | Generic webhook Notifier |
| notifiers[0].generic.auditLoggingEnabled | bool | `true` | Enable or disable sending auditLogging to this webhook |
| notifiers[0].generic.endpoint | string | `"https://endpoint.local"` | Webhook endpoint URL |
| notifiers[0].generic.extraFields | list | `[{"key":"foo","value":"bar"}]` | Webhook extraFields |
| notifiers[0].generic.headers | list | `[{"key":"foo","value":"bar"}]` | Webhook Headers |
| notifiers[0].generic.password | string | `nil` | Password for the webhook endpoint basic authentication |
| notifiers[0].generic.skipTLSVerify | bool | `false` | Skip webhook TLS Verify |
| notifiers[0].name | string | `"generic"` | Name of the Notifier |
| notifiers[1].destination | string | `"ConfigMap"` | Sets the destination of the notifier configuration. Can be ConfigMap or Secret. |
| notifiers[1].splunk | object | `{"auditLoggingEnable":true,"endpoint":"https://splunk.local","hecTruncateLimit":1000,"skipTLSVerify":false,"sourceTypes":[{"key":"foo","sourceType":"bar"}],"token":"token"}` | Splunk Notifier |
| notifiers[1].splunk.auditLoggingEnable | bool | `true` | Enable or disable sending auditLogging to this Webhook |
| notifiers[1].splunk.endpoint | string | `"https://splunk.local"` | Splunk endpoint |
| notifiers[1].splunk.hecTruncateLimit | int | `1000` | Splunk HEC truncate limit |
| notifiers[1].splunk.skipTLSVerify | bool | `false` | Skip Splunk server TLS Verify |
| notifiers[1].splunk.sourceTypes | list | `[{"key":"foo","sourceType":"bar"}]` | Splunk Source types |
| notifiers[1].splunk.token | string | `"token"` | Splunk token |
| permission_sets[0].description | string | `"Permission Set"` | Description of the Permission Set |
| permission_sets[0].destination | string | `"ConfigMap"` | Sets the destination of the Permission Set configuration. Can be ConfigMap or Secret. |
| permission_sets[0].name | string | `"permission-set"` | Name of the Permission Set  |
| permission_sets[0].resources | list | `[{"access":"READ_ACCESS","resource":"Access"},{"access":"READ_WRITE_ACCESS","resource":"Administration"}]` | List of resources with the respective access |
| roles[0].accessScope | string | `"access-scope"` | Name of the referenced Access Scope |
| roles[0].description | string | `"view-role"` | Description of the Role |
| roles[0].destination | string | `"ConfigMap"` | Sets the destination of the Role configuration. Can be ConfigMap or Secret. |
| roles[0].name | string | `"view\""` | Name of the Role |
| roles[0].permissionSet | string | `"permission-set"` | Name of the referenced Permission Set |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
