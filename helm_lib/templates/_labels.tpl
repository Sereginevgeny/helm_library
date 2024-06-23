{{- define "application.labels" -}}
app: {{ .Values.app }}
deployment: {{ .Values.app }}
{{- end -}}
