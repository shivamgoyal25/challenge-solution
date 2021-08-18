output "instance_id" {
  description = "The server-assigned unique identifier of this instance"
  value       = google_compute_instance.compute.*.instance_id
}

output "boot_disk_name" {
 value = google_compute_instance.compute.*.name
}

output "additional_disk_name" {
 value = google_compute_disk.disk.*.name
}