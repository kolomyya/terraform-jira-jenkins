resource "kubernetes_persistent_volume_claim" "jira-pvc" {
  metadata {
    name = "terraform-jira"
  }

  spec {
    access_modes = ["ReadWriteOnce"]

    resources {
      requests {
        storage = "20Gi"
      }      
    }
  }
 } 
