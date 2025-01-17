# Testcase 2

Deploy an _Application_ containing a native OCI artifact containing a directory of manifests

## Implementation Steps

1. Apply the _Application_ contained in [testcase2.yaml](../applications/testcase2.yaml) in the Argo CD namespace

## Validation Steps

The Following resource should be created:

1. `oci-testcase-2` _Application_ is synced and healthy
2. `oci-testcase-2` Namespace
3. `argocd-oci-manifest-root` ConfigMap in `oci-testcase-2` Namespace




2. Utilize the steps described in the [Adding an OCI Repository](common.md) section to add `oci://ghcr.io/sabre1041/argocd-oci-testcases/oci-manifests-flat` to Argo CD if not present
