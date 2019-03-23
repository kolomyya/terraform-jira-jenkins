resource "kubernetes_service" "grafana-service" {
  metadata {
    name = "grafana-core"
    namespace = "tools"
  }

  spec {
    selector {
      app = "fscoding"
    }


    port {
      port        = 80
      target_port = 3000
    }

    type = "LoadBalancer"
  }
}

