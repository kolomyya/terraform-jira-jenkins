resource "kubernetes_service" "grafana-svs" {
  metadata {
    name = "grafana-core"
    namespace = "tools"
  }

  spec {
    selector {
      app = "${kubernetes_pod.grafana.metadata.0.labels.app}"
    }

    session_affinity = "ClientIP"

    port {
      port        = 80
      target_port = 3000
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_pod" "grafana" {
  metadata {
    name = "grafana-core"
    namespace =  "tools"

    labels {
      app = "grafana"
    }
  }

  spec {
    container {
      image = "grafana/grafana:4.2.0"
      name  = "grafana"
    }
  }
}
