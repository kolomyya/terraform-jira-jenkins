
resource "kubernetes_persistent_volume" "grafana" {
    metadata {
        name = "grafana-pv"
    }
    spec {
        capacity {
            storage = "20Gi"
        }
        access_modes = ["ReadWriteMany"]
        persistent_volume_source {
            vsphere_volume {
                volume_path = "/var/lib/grafana-pv"
            }
        }
    }
}
