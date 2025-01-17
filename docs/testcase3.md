# Testcase 3

Deploy an _Application_ containing a native OCI artifact containing a directory of manifests that is referenced by the OCI tag

## Implementation Steps

1. Apply the _Application_ contained in [testcase3.yaml](../applications/testcase3.yaml) in the Argo CD namespace

## Validation Steps

The Following resource should be created:

1. `oci-testcase-3` _Application_ is synced and healthy
2. `oci-testcase-3` Namespace
3. `argocd-oci-manifest-root` ConfigMap in `oci-testcase-3` Namespace
