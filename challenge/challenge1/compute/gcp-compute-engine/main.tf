provider "google" {
 project     = var.project_id
 region      = var.region
}
resource "google_compute_instance" "compute" {
  count                     = var.number_of_vms
  name                      = "${var.instance_name}${format("%01d", count.index + 1)}"
  machine_type              = var.machine_type
  zone                      = var.zone
  network_interface {
    network                 = var.network
    subnetwork              = "${var.subnetwork}${format("%01d", count.index + 1)}"
    }
  boot_disk {
    auto_delete             = var.auto_delete  
    device_name             = var.device_name
   initialize_params {
      size                  = var.boot_disk_size
      type                  = var.boot_disk_type
      image                 = var.image
    }
  }

  lifecycle {
    ignore_changes          = [attached_disk]
  }
  scheduling {
    on_host_maintenance     = var.on_host_maintenance_policy
  }
  can_ip_forward            = var.can_ip_forward
  deletion_protection       = var.deletion_protection
  description               = var.description
  hostname                  = var.hostname
  labels                    = {
        environment         = var.label1_value
  } 
  project                   = var.project_id
  tags                      = var.tags
  metadata_startup_script   = file("script.sh")   
  service_account {
    email                   = var.service_account
    scopes                  = ["cloud-platform"]
  }    
}   

resource "google_compute_disk" "disk" {
  count                     = var.number_of_vms
  name        ="${var.disk_names}${format("%01d", count.index + 1)}"
  description = var.disk_description
  size        = var.disk_sizes
  type        = var.disk_type
  zone        = var.disk_zones 
  project     = var.project_id
  labels = {
        environment     = var.disk_label1_value
      }
}
resource "google_compute_attached_disk" "disk_attachment" {
  count        = var.number_of_vms
  disk         = google_compute_disk.disk[count.index].id
  instance     = google_compute_instance.compute[count.index].name
  zone         = var.zone
  project      = var.project_id
}