# Testcase 12

Deploy an _Application_ containing a native OCI artifact that originates from a repository that allows only HTTP based connectivity.

## Implementation Steps

1. Login to Argo CD
2. Click on **Settings** and then **Repositories**
3. Click the **Connect Repo** button
4. Under _Choose your connection method_, select the **Via HTTPS** dropdown option
5. Under _Type_, select the **oci** dropdown option
6. Optionally, enter a _name_ and _project_ to associate the repository within
7. Enter the URL containing the OCI artifact repository in the format `oci://<registry>/<repository>` that allows for communication . Be sure to not include the digest or tag associated with the artifact.
8. Select the **Insecure HTTP Only** checkbox
9. Click the **Connect** button to create the repository
10. Update the `.spec.source.repoURL` field in the [testcase12.yaml](../applications/testcase12.yaml) file with the location of the OCI artifact from a repository that allows only HTTP based connectivity
11. Apply the _Application_ contained in [testcase12.yaml](../applications/testcase12.yaml) in the Argo CD namespace


## Validation Steps

The Following resource should be created:

1. Newly created repository successfully connected with green checkbox present
2. `oci-testcase-12` _Application_ is synced and healthy
3. `oci-testcase-12` Namespace
4. `argocd-oci-manifest-root` ConfigMap in `oci-testcase-12` Namespace
