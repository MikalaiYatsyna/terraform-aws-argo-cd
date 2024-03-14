terraform {
  required_version = "1.7.5"
  required_providers {
    aws = {
      version = "4.67.0"
      source  = "hashicorp/aws"
    }
    kubernetes = {
      version = "2.19.0"
      source  = "hashicorp/kubernetes"
    }
    helm = {
      version = "2.9.0"
      source  = "hashicorp/helm"
    }
    tls = {
      version = "4.0.4"
      source  = "hashicorp/tls"
    }
  }
}
