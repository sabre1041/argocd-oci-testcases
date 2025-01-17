# Testcase 5

Deploy an _Application_ containing a native OCI artifact containing a nested set of directories, each containing manifests. All manifests should be resolved and applied

## Implementation Steps

1. Apply the _Application_ contained in [testcase5.yaml](../applications/testcase5.yaml) in the Argo CD namespace

## Validation Steps

The Following resource should be created:

1. `oci-testcase-5` _Application_ is synced and healthy
2. `oci-testcase-5` Namespace
3. `argocd-oci-manifest-root`and `argocd-oci-manifest-subdirectory` ConfigMap's in `oci-testcase-4` Namespace
