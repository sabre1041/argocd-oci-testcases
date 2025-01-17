# Testcase 10

Deploy an _Application_ containing a native OCI artifact that utilizes a custom MediaType that has been allowed within the Argo CD Repository Server

## Implementation Steps

1. Update the `ARGOCD_REPO_SERVER_OCI_LAYER_MEDIA_TYPES` environment for the Argo CD Repo Server with the following
    ```
    application/vnd.oci.image.layer.v1.tar+gzip;application/vnd.cncf.helm.chart.content.v1.tar+gzip;application/vnd.cncf.argoproj.argocd.content.v1.tar+gzip
    ```
1. Apply the _Application_ contained in [testcase10.yaml](../applications/testcase10.yaml) in the Argo CD namespace

## Validation Steps

The Following resource should be created:

1. Newly created repository successfully connected with green checkbox present
2. `oci-testcase-10` _Application_ is synced and healthy
3. `oci-testcase-10` Namespace
4. `argocd-oci-manifest-root` ConfigMap in `oci-testcase-10` Namespace
