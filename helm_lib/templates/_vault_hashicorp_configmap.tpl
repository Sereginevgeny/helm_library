{{- define "application.secman_config_map" -}}
{{- range $_, $secret := .Values.os.secrets -}}
  {{- $secrets.volumePath -}}/{{- $secret.volumeFileName -}}
{{ end -}}
{{- end -}}