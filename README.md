# Argo CD OCI Test Cases

Test cases to verify native Argo CD OCI integration

## Argo CD Setup

In order to make use of the test cases described within this repository, Argo CD related components must be leveraging capabilities enabled through the native integration of OCI content. Additional information or requirements may be explicitly referenced within the documentation associated with each test case.

## Test Cases

| Name       | Description | Documentation |
| ---------- | ----------- | ------------- |
| Creation via UI | Creation of an _Application_ using the Argo CD User Interface | [Link](docs/testcase1.md) |
| Creation via Manifest | Creation of an _Application_ declaratively containing a directory of manifests | [Link](docs/testcase2.md) |
| Reference by Tag | Reference a native OCI artifact by a unique tag | [Link](docs/testcase3.md) |
| Reference by Digest | Reference a native OCI artifact by a SHA digest | [Link](docs/testcase4.md) | 
| Recursive Directories | Reference a native OCI artifact containing manifests located within nested directories | [Link](docs/testcase5.md) | 
| Manifests Within a Path | Reference a specific path within a native OCI artifact | [Link](docs/testcase6.md) | 
| Authenticated Repository | Resolve and retrieve native OCI artifact from an authenticated repository | [Link](docs/testcase7.md) | 
| Invalid Repository | Resolve and retrieve native OCI artifact from an authenticated registry | [Link](docs/testcase8.md) | 
| Custom Media Type (Not Configured in Argo CD) | Resolve and retrieve native OCI artifact that utilizes a custom MediaType for the layer containing the native OCI artifact | [Link](docs/testcase9.md) | 