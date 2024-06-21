resource "google_compute_instance" "tf_instance_2" {
  boot_disk {
    auto_delete = true
    device_name = "persistent-disk-0"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-11-bullseye-v2
0240611"
      size  = 10
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-90047e49e444/zones/us-east1-c/disks
/tf-instance-2"
  }

  machine_type = "e2-micro"

  metadata = {
    startup-script = "#!/bin/bash\n"
  }

  name = "tf-instance-2"

  network_interface {
    network            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-90047e49e444/global/net
works/default"
    network_ip         = "10.142.0.3"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-90047e49e444/regions/us
-east1/subnetworks/default"
    subnetwork_project = "qwiklabs-gcp-01-90047e49e444"
  }

  project = "qwiklabs-gcp-01-90047e49e444"

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  zone = "us-east1-c"
}
# terraform import google_compute_instance.tf_instance_2 projects/qwiklabs-gcp-01-90047e49e444/zones/us-east1-c/
instances/tf-instance-2
