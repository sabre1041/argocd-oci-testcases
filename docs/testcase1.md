# Testcase 1

Deploy an _Application_ containing a native OCI artifact based Helm Chart using the Argo CD User Interface

## Implementation Steps

1. Navigate to the Argo CD User Interface
2. Create a new _Application_ by selecting the _Applications_ section and select the **New App** button
3. Enter `oci-testcase-1` as the _Application Name_
4. Select a desired _Project_
5. Set the _Sync Policy_ as **Automatic**
6. Check **Auto-Create Namespace** under the _Sync Options_ section
7. Under the _Source Repository URL_, select the location of the previously configured _repository_. Ensure _oci_ appears as the type
8. Set **latest** as the _Revision_
9. Enter `.` as the _Path_
10. Under _Destination Cluster URL_, select the `https://kubernetes.default.svc` dropdown
11. Enter `oci-testcase-1` as the _Destination Namespace_
12. Click **Create**

## Validation Steps

Even though the this test case made use of the user interface, the resulting _Application_ should be represented similar to [testcase1.yaml](../applications/testcase1.yaml)

The Following resource should be created:

1. `oci-testcase-2` _Application_ is synced and healthy
2. `oci-testcase-1` Namespace
3. `oci-testcase-1-argocd-oci` ConfigMap in `oci-testcase-1` Namespace
