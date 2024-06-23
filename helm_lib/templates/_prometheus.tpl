{{- define "application.prometheus" -}}
prometheus.io/scrape: 'true'
prometheus.io/path: {{ default "/actuator/prometheus" .Values.prometheus.path | squote }}
prometheus.io/port: {{ dig "prometheus" "port" "8081" .Values.global | squote }}
{{- end -}}