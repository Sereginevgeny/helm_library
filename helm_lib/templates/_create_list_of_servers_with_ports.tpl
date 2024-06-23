{{- define "application.create_list_of_servers_with_ports" -}}
{{- $list_length := len . -}}
{{- range $index, $service := . -}}
{{- if ne (add1 $index) $list_length -}}
{{ $service.host }}:{{ $service.port }},
{{- else -}}
{{ $service.host }}:{{ $service.port }}
{{- end -}}
{{- end -}}
{{- end -}}