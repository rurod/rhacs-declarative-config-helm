{{- define "rhacs-declarative-config-helm.role" }} 
name: {{ .name }}
description: {{ .description }}
accessScope: {{ .accessScope }}
permissionSet: {{ .permissionSet }}
{{- end }}
