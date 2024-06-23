{{- define "application.vault_hashicorp_main_annotations" -}}
vault.hashicorp.com/agent-inject: 'true'
vault.hashicorp.com/agent-init-first: 'false'
vault.hashicorp.com/agent-pre-populate: 'false'
vault.hashicorp.com/namespace: {{ .Values.global.multiClusters.secman.tenant }}
vault.hashicorp.com/role: {{ .Values.global.multiClusters.secman.role }}
vault.hashicorp.com/agent-inject-default-template: json
vault.hashicorp.com/log-level: {{ .Values.global.multiClusters.secman.logLevel }}
{{- end -}}