{{- define "application.security_context" -}}
readOnlyRootFilesystem: true
privileged: false
{{- end -}}
