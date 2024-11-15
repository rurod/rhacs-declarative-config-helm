{{- define "rhacs-declarative-config-helm.access_scope" }} 
name: {{ .name }}
description: {{ .description }}
rules:
    {{- if .included }}
    included: {{ toYaml .included | nindent 8 }}
    {{- end }}
    {{- if .clusterLabelSelectors }}
    clusterLabelSelectors: {{ toYaml .clusterLabelSelectors | nindent 8 }}
    {{- end }}
    {{- if .namespaceLabelSelectors }}
    namespaceLabelSelectors: {{ toYaml .namespaceLabelSelectors | nindent 8 }}
    {{- end }}
{{- end }}
