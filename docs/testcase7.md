# Testcase 7

Deploy an _Application_ containing a native OCI artifact from an authenticated registry

## Implementation Steps

1. Login to Argo CD
2. Click on **Settings** and then **Repositories**
3. Click the **Connect Repo** button
4. Under _Choose your connection method_, select the **Via HTTPS** dropdown option
5. Under _Type_, select the **oci** dropdown option
6. Optionally, enter a _name_ and _project_ to associate the repository within
7. Enter the URL containing the OCI artifact repository in the format `oci://<registry>/<repository>` that requires authentication to access the content. Be sure to not include the digest or tag associated with the artifact.
8. Enter the username and password
9. Click the **Connect** button to create the repository
10. Apply the _Application_ contained in [testcase7.yaml](../applications/testcase7.yaml) in the Argo CD namespace

## Validation Steps

The Following resource should be created:

1. Newly created repository successfully connected with green checkbox present
2. `oci-testcase-7` _Application_ is synced and healthy
3. `oci-testcase-7` Namespace
4. `argocd-oci-manifest-root` ConfigMap in `oci-testcase-7` Namespace
