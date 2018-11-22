{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "toolbox.name" -}}
{{- printf "toolbox" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "toolbox.fullname" -}}
{{- printf "toolbox" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "toolbox.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "toolbox.params" -}}
{{- printf "--root-url %s --api-v2-jwt-key %s --management-api-v1-jwt-key %s --currencies %s --markets %s --orders %s --traders %s --threads %s" .Values.params.root_url .Values.params.api_v2_jwt_key .Values.params.management_api_v1_jwt_key .Values.params.currencies .Values.params.markets .Values.params.orders .Values.params.traders .Values.params.threads -}}
{{- end -}}
