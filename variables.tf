variable "certificate_issuer" {
  type        = string
  description = "Cert manager issuer name for Ingress certificate"
}

variable "domain" {
  type        = string
  description = "Application domain name"
}

variable "namespace" {
  description = "Namespace to deploy"
}

variable "cluster_endpoint" {
  sensitive   = true
  type        = string
  description = "Endpoint of the cluster."
}

variable "cluster_ca" {
  sensitive   = true
  type        = string
  description = "CA certificate of the cluster."
}

variable "k8s_exec_args" {
  type        = list(string)
  description = "Args for Kubernetes provider exec plugin. Example command ['eks', 'get-token', '--cluster-name', '{clusterName}}']"
}

variable "k8s_exec_command" {
  type        = string
  description = "Command name for Kubernetes provider exec plugin. Example - 'aws"
}
