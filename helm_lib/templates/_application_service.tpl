{{- define "application.service" -}}
metadata:
  labels:
    {{- include "application.labels" . | nindent 4 }}
  name: {{ .Values.app }}
spec:
  ports:
    {{- range $index, $port := .Values.service.ports }}
    - name: {{ $port.protocol | lower }}-{{ $port.port }}
      protocol: {{ $port.protocol | upper}}
      port: {{ $port.port | int }}
      targetPort: {{ $port.targetPort | int }}
    {{- end -}}
  selector:
    {{- include "application.labels" . | nindent 4 }}
{{- end -}}