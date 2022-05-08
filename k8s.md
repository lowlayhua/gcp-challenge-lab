# create deployment
`kubectl create deployment hello-node  --image=gcr.io/PROJECT_ID/hello-node:v1`

# Expose
`kubectl expose deployment hello-node --type="LoadBalancer" --port=8080`


# Scale
`kubectl scale deployment hello-node --replicas=4`

# docker build
`docker build -t gcr.io/PROJECT_ID/hello-node:v2 .`

# docker push
`docker push gcr.io/PROJECT_ID/hello-node:v2`

# TF for GKE
```
resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "us-central1"

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
}
```
