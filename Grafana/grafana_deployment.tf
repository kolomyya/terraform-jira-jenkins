resource "kubernetes_deployment" "grafana" {
  metadata {
    name = "grafana"
    namespace = "tools"
    labels {
      test = "grafana"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels {
        test = "grafana"
      }
    }
    template {
      metadata {
        labels {
          test = "grafana"
        }
      }
    
      spec {
        volume {
          name = "grafana-pv"
           }
        container {
          image = "grafana/grafana:6.0.0"
          name  = "grafana"

          volume_mount {
            name  =  "grafana-pv"
            mount_path  =  "/var/lib/grafana" 
           } 
    
          resources{
            limits{
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests{
              cpu    = "250m"
              memory = "50Mi"
             }
          }
        }
      }
    }
  }
}

