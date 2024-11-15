{{- define "rhacs-declarative-config-helm.permission_set" }} 
name: {{ .name }}
description: {{ .description }}
resources: {{ toYaml .resources | nindent 4 }}
{{- end }}
