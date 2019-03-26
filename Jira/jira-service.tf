resource "kubernetes_service" "jira-service" {
  metadata {
    name = "jira"
    namespace = "tools"
  }

  spec {
    selector {
      app = "jira-pod"
    }


    port {
      port        = 80
      target_port = 2000
    }

    type = "LoadBalancer"
  }
}
