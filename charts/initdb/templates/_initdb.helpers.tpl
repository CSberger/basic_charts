{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "initdb.username" -}}
{{-  .Values.pg.target.username  | default (printf "%s_user" .Values.pg.target.databaseName ) }}
{{- end }}

{{- define "initdb.password" -}}
{{- .Values.pg.target.password  | default (printf "%s_password" .Values.pg.target.databaseName ) }}
{{- end }}

{{/*
Generate the name of the secret resource containing secrets
*/}}
{{- define "initdb.secretName" -}}
{{ include "initdb.fullname" . }}
{{- end -}}
