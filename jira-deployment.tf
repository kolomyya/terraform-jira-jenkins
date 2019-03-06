resource "kubernetes_deployment" "jira-deployment" {
  metadata {
    name      = "terraform-jira"
    namespace = "terraform-jira-ns"

    labels {
      test  = "jira"
}
  }
  spec {
    replicas = 1
    selector {
      match_labels {
        test  = "jira"
}
}
    template {
      metadata {
        labels {
          test = "jira"
}
      }
      spec {
        volume { 
          name = "jira-home"
          }
        container {
          image = "gcr.io/hightowerlabs/jira:7.3.6-standalone"
          name  = "jira"
          volume_mount {
            name       = "jira-home"
            mount_path = "/opt/jira-home"
        }
       }
      }
    }
  }
}
