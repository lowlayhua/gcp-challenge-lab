# Deploy to Kubernetes in Google Cloud: Challenge Lab
https://www.cloudskillsboost.google/focuses/10457?parent=catalog
Topics tested:

Creating Docker images on a host.
Running Docker containers on a host.
Storing Docker images in the Google Container Repository (GCR).
Deploying GCR images on Kubernetes.
Pushing updates onto Kubernetes.
Automating deployments to Kubernetes using Jenkins.

# Task 1: Create a Docker image and store the Dockerfile
- `gsutil cat gs://cloud-training/gsp318/marking/setup_marking.sh | bash`
- `gcloud source repos clone valkyrie-app`
- ` cd valkyrie-app`
- create Dockerfile
```
cat > Dockerfile <<EOF
FROM golang:1.10
WORKDIR /go/src/app
COPY source .
RUN go install -v
ENTRYPOINT ["app","-single=true","-port=8080"]
EOF
```
### Build
- `docker build -t valkyrie-app:v0.0.3 .`

- `docker tag valkyrie-app:v0.0.3 gcr.io/qwiklabs-gcp-03-afd404de42f8/valkyrie-app:v0.0.3`

- `docker run -it --rm -d -p 8080:8080 --name valkyrie-app gcr.io/qwiklabs-gcp-03-afd404de42f8/valkyrie-app:v0.0.3`
