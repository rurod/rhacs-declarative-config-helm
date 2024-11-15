{{- define "rhacs-declarative-config-helm.auth_provider" }} 
name: {{ .name }}
{{- if .uiEndpoint }}
uiEndpoint: {{ .uiEndpoint }}
{{- end }}
{{- if .extraUIEndpoints }}
extraUIEndpoints: {{- toYaml .extraUIEndpoints | nindent 4 }}
{{- end }}
{{- if .minimumRole }}
minimumRole: {{ .minimumRole }}
{{- end }}
{{- if .requiredAttributes }}
requiredAttributes: {{- toYaml .requiredAttributes | nindent 4 }}
{{- end }}
{{- if .groups }}
groups: {{- toYaml .groups | nindent 4 }}
{{- end }}
{{- if .iap }}
iap: {{- toYaml .iap | nindent 4 }}
{{- end }}
{{- if .oidc }}
oidc: {{- toYaml .oidc | nindent 4 }}
claimMappings: {{- toYaml .claimMappings | nindent 4 }}
{{- end }}
{{- if .openshift }}
openshift: {{- toYaml .openshift | nindent 4 }}
{{- end }}
{{- if .saml }}
saml: {{- toYaml .saml | nindent 4 }}
{{- end }}
{{- if .userpki }}
userpki: {{- toYaml .userpki | nindent 4 }}
{{- end }}
{{- end }}
