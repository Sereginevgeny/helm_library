{{- define "application.antaffinities.pods" -}}
preferredDuringSchedulingIgnoredDuringExecution:
    - weight: 100
      podAffinityTerm:
        labelSelector:
          matchLabels: {{- (include "application.labels" .) | nindent 12 }}
        topologyKey: kubernetes.io/hostname
{{- end -}}