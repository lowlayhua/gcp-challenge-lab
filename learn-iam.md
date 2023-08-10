https://cloud.google.com/iam/docs/service-accounts-create

# create SA
- `gcloud iam service-accounts create my-sa-123 --display-name "my service account"`
- `gcloud iam service-accounts create SA_NAME \
    --description="DESCRIPTION" \
    --display-name="DISPLAY_NAME"`
  
# Granting roles to a service account for specific resources
- `gcloud projects add-iam-policy-binding $DEVSHELL_PROJECT_ID \
    --member serviceAccount:my-sa-123@$DEVSHELL_PROJECT_ID.iam.gserviceaccount.com --role roles/editor`
- `gcloud iam service-accounts add-iam-policy-binding \
    SA_NAME@PROJECT_ID.iam.gserviceaccount.com \
    --member="user:USER_EMAIL" \
    --role="roles/iam.serviceAccountUser"`


- After the resource is created, you cannot change which service account is attached to the resource.
- Compute Engine instances are an exception to this rule; you can change which service account is attached to an instance as needed.

# Configure for a resource in the same project
  Before you attach a service account to another resource in the same project,
  grant roles to the service account so it can access the appropriate resources, just as you would grant roles to any other principal.

# Configure for a resource in a different project
  - https://cloud.google.com/iam/docs/attach-service-accounts
  - gcp/looker-SA.md 

# Best Practise
https://cloud.google.com/iam/docs/best-practices-service-accounts
