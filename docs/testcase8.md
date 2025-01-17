# Testcase 8

Create a new repository referencing an invalid location

## Implementation Steps

1. Login to Argo CD
2. Click on **Settings** and then **Repositories**
3. Click the **Connect Repo** button
4. Under _Choose your connection method_, select the **Via HTTPS** dropdown option
5. Under _Type_, select the **oci** dropdown option
6. Optionally, enter a _name_ and _project_ to associate the repository within
7. Enter the URL containing the OCI artifact repository in the format `oci://ghcr.io/sabre1041/argocd-oci-testcases/oci-manifests-flat-bad-repo`. Be sure to not include the digest or tag associated with the artifact.
10. Click the **Connect** button to create the repository

## Validation Steps

The Following assertions should be true:

1. Newly created repository should not be connected with a red X appearing next to the repository in the user interface
