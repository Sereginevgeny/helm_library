{{- define "application.deploy_strategy" -}}
stratagy:
{{- if (eq (dig "deployStratagy" "type" "RollingUpdate" . Values.os) "Recreate") }}
  type: Recreate
{{- else }}
  type: RollingUpdate
  rollingUpdate:
    maxSurge: {{ dig "deployStratagy" "maxSurge" "25" .Values.os -}}%
    maxUnavailable: {{ dig "deployStratagy" "maxUnavailable" "25" .Values.os -}}%
{{- end -}}
{{- end -}}