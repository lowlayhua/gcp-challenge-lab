```
provider "google" {
  version = "3.5.0"
  credentials = file("/downloads/instance.json")
  project = "<PROJECT_NAME>"
  region  = "us-central1"
  zone    = "us-central1-c"
}
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
resource "google_compute_subnetwork" "public-subnetwork" {
  name          = "terraform-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.name
  }
  ```
# firewall
```
module "network" {
  source  = "terraform-google-modules/network/google"
  version = "2.0.2"

  network_name = "terraform-vpc-network"
  project_id   = var.project

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = var.cidrs
      subnet_region = var.region

    },
  ]

  secondary_ranges = {
    subnet-01 = []
    
  }
}
    
module "network_fabric-net-firewall" {
  source  = "terraform-google-modules/network/google//modules/fabric-net-firewall"
  version = "1.1.0"
  project_id              = 
  network                 = 
  internal_ranges_enabled = true
  internal_ranges         = 

}
```
