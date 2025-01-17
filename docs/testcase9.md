# Testcase 9

Deploy an _Application_ containing a native OCI artifact that utilizes a custom MediaType that has not been allowed/configured within the Argo CD Repository Server

## Implementation Steps

1. Apply the _Application_ contained in [testcase9.yaml](../applications/testcase9.yaml) in the Argo CD namespace

## Validation Steps

The Following assertions should be true:

1. `oci-testcase-9` _Application_ created and in error state
2. Error should indicate a message similar to the following

```
Failed to load target state: failed to generate manifest for source 1 of 1: rpc error: code = Unknown desc = oci layer media type application/vnd.cncf.argoproj.argocd.content.v1.tar+gzip is not in the list of allowed media types
```


