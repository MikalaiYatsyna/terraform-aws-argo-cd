terraform {
  required_version = "1.7.0"
  required_providers {
    aws = {
      version = "5.40.0"
      source  = "hashicorp/aws"
    }
    kubernetes = {
      version = "2.26.0"
      source = "hashicorp/kubernetes"
    }
    helm = {
      version = "2.9.0"
      source = "hashicorp/helm"
    }
    tls = {
      version = "4.57.1"
      source = "hashicorp/tls"
    }
  }
}
