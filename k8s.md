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


