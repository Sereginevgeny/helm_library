{{- define "application.sidecar_istio_proxy_resourses" -}}
sidecar.istio.io/proxyCPU: {{ dig "istioProxy" "resourses" "requests" "cpu" "100m" .Values.os.containers }}
sidecar.istio.io/proxyCPULimits: {{ dig "istioProxy" "resourses" "limits" "cpu" "200m" .Values.os.containers }}
sidecar.istio.io/proxyMemory: {{ dig "istioProxy" "resourses" "requests" "mem" "512Mi" .Values.os.containers }}
sidecar.istio.io/proxyMemoryLimit: {{ dig "istioProxy" "resourses" "limits" "mem" "512Mi" .Values.os.containers }}
{{- end -}}
