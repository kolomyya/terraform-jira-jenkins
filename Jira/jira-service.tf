resource "kubernetes_service" "jira-svs" {
  metadata {
    name = "terraform-jira"
  }

  spec {
    selector {
      app = "${kubernetes_pod.jira-pod.metadata.0.labels.app}"
    }


    port {
      port        = 80
      target_port = 2000
    }

    type = "LoadBalancer"
  }
}

