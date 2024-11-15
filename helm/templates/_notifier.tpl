{{- define "rhacs-declarative-config-helm.notifier" }} 
name: {{ .name }}
{{- if .generic }}
generic: {{ toYaml .generic | nindent 4}}
{{- end }}
{{- if .splunk }}
splunk: {{ toYaml .splunk | nindent 4}}
{{- end }}
{{- end }}
