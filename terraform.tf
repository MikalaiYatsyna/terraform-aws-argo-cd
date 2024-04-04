terraform {
  required_version = "1.7.5"
  required_providers {
    aws = {
      version = "5.42.0"
      source  = "hashicorp/aws"
    }
    kubernetes = {
      version = "2.27.0"
      source  = "hashicorp/kubernetes"
    }
    helm = {
      version = "2.13.0"
      source  = "hashicorp/helm"
    }
    tls = {
      version = "4.0.5"
      source  = "hashicorp/tls"
    }
  }
}
