resource "kubernetes_secret" "grafana_secret" {
  metadata {
    name = "grafana"
  }

  data {
    username = ""
    password = ""
  }

  type = "Opaque"
}
