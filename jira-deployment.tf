resource "kubernetes_deployment" "jira-deployment" {
  metadata {
    name      = "terraform-jira"
    namespace = "terraform-jira-ns"

    labels {
<<<<<<< HEAD
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
=======
      test = "jira"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels {
        test = "jira"
      }
    }

>>>>>>> b806da832bf0c0839b5d0507df38b38c5050873f
    template {
      metadata {
        labels {
          test = "jira"
<<<<<<< HEAD
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
=======
        }
      }

      spec {
        container {
          image = "gcr.io/hightowerlabs/jira:7.3.6-standalone"
          name  = "jira"

          resources {
            limits {
              cpu    = "2"
              memory = "500Mi"
            }

            requests {
              cpu    = "2"
              memory = "500Mi"
            }
          }
        }
>>>>>>> b806da832bf0c0839b5d0507df38b38c5050873f
      }
    }
  }
}
