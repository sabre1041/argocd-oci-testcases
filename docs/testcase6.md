# Testcase 6

Deploy an _Application_ containing a native OCI artifact containing a nested set of directories, each containing manifests. Only within a specified directory (`subdirectory`) should be applied

## Implementation Steps

1. Apply the _Application_ contained in [testcase6.yaml](../applications/testcase6.yaml) in the Argo CD namespace

## Validation Steps

The Following resource should be created:

1. `oci-testcase-6` _Application_ is synced and healthy
2. `oci-testcase-6` Namespace
3. `argocd-oci-manifest-subdirectory` ConfigMap in `oci-testcase-6` Namespace
