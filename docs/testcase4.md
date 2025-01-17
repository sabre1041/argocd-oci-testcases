# Testcase 4

Deploy an _Application_ containing a native OCI artifact containing a directory of manifests that is referenced by the OCI SHA256 digest

## Implementation Steps

1. Apply the _Application_ contained in [testcase4.yaml](../applications/testcase4.yaml) in the Argo CD namespace

## Validation Steps

The Following resource should be created:

1. `oci-testcase-4` _Application_ is synced and healthy
2. `oci-testcase-4` Namespace
3. `argocd-oci-manifest-root` ConfigMap in `oci-testcase-4` Namespace
