resource "kubernetes_deployment" "jira-deployment" {
  metadata {
    name      = "terraform-jira"
    namespace = "tools"

    labels {
      app = "jira-pod"
}
  }
  spec {
    replicas = 1
    selector {
      match_labels {
        app = "jira-pod"
}
}
    template {
      metadata {
        labels {
          app = "jira-pod"
}
      }
      spec {
        volume {
          name = "jira-pv"
          }
        container {
          image = "gcr.io/hightowerlabs/jira:7.3.6-standalone"
          name  = "jira"
          volume_mount {
            name       = "jira-pv"
            mount_path = "/opt/jira-home"
        }
       }
        }
      }
  }
}
