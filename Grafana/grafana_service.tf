resource "kubernetes_service" "grafana-service" {
  metadata {
    name = "grafana"
  }

  spec {
    selector {
      app = "${kubernetes_pod.grafana-pod.metadata.0.labels.app}"
    }


    port {
      port        = 80
      target_port = 3000
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_pod" "grafana-pod" {
  metadata {
    name = "grafana"

    labels {
      app = "grafana"
    }
  }

  spec {
    container {
      image = "grafana/grafana:6.0.0"
      name  = "grafana"
    }
  }
}
