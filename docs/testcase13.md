# Testcase 13

Deploy an _Application_ containing a native OCI artifact and make a modification within the User Interface

## Implementation Steps

1. Apply the _Application_ contained in [testcase13.yaml](../applications/testcase13.yaml) in the Argo CD namespace
2. Login to Argo CD
3. Locate the `oci-testcase-13` _Application_ and select **Details**
4. Click **Edit**
5. Select the _Manifests_ tab
6. Click **Edit**
7. Add the following underneath the `.spec.source` property
```
directory:
  recurse: true
```
8. Click **Save**

## Validation Steps

The Following resource should be created:

1. `oci-testcase-13` _Application_ is synced and healthy
2. Modification successfully applied in the Argo CD User Interface
