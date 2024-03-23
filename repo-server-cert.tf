resource "tls_private_key" "repo_server_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "tls_cert_request" "repo_server_request" {
  private_key_pem = tls_private_key.repo_server_key.private_key_pem
  subject {
    organization = "Logistics Online test company"
  }
  dns_names = [
    "localhost",
    "argocd-server",
    "argocd-server.${var.namespace}",
    "argocd-server.${var.namespace}.svc",
    "argocd-server.${var.namespace}.svc.cluster.local"
  ]
  ip_addresses = [
    "127.0.0.1"
  ]
}

resource "kubernetes_certificate_signing_request_v1" "repo_server_cert_req" {
  metadata {
    name = "argocd-server-cert-request"
  }
  spec {
    usages      = ["digital signature", "key encipherment", "server auth"]
    signer_name = "beta.eks.amazonaws.com/app-serving"
    request     = tls_cert_request.repo_server_request.cert_request_pem
  }

  auto_approve = true
}

resource "kubernetes_secret" "vault_server_cert" {
  metadata {
    name      = "argocd-repo-server-tls"
    namespace = var.namespace
  }
  data = {
    "ca.crt"  = base64decode(var.cluster_ca)
    "tls.crt" = kubernetes_certificate_signing_request_v1.repo_server_cert_req.certificate
    "tls.key" = tls_private_key.repo_server_key.private_key_pem
  }
  type = "kubernetes.io/tls"
}
