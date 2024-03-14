variable "argo_cd_version" {
  type        = string
  description = "Argo CD chart version."
  default     = "argo-cd-6.7.1"
}
variable "cluster_name" {
  type        = string
  description = "Name of EKS cluster"
}

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
