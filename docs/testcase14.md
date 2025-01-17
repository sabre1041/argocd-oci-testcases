# Testcase 14

Attempt to define a duplicate native OCI repository

## Implementation Steps

1. Login to Argo CD
2. If a native OCI artifact repository already exists, attempt to duplicate the values. Otherwise create a new repository
2. Click on **Settings** and then **Repositories**
3. Click the **Connect Repo** button
4. Under _Choose your connection method_, select the **Via HTTPS** dropdown option
5. Under _Type_, select the **oci** dropdown option
6. Optionally, enter a _name_ and _project_ to associate the repository within
7. Enter the URL containing the OCI artifact repository in the format `oci://ghcr.io/sabre1041/argocd-oci-testcases/oci-manifests-flat`. Be sure to not include the digest or tag associated with the artifact.
10. Click the **Connect** button to create the repository

## Validation Steps

The Following resource should be created:

1. Error occurs when attempting to complete the creation process to create a duplicate repository
