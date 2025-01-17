# Common Documentation

This page describes any steps that may be reused across multiple test cases

## Adding an OCI Repository

Before native OCI content can be consumed in Argo CD, a repository must be added referencing the location of the target content

1. Login to Argo CD
2. Click on **Settings** and then **Repositories**
3. Click the **Connect Repo** button
4. Under _Choose your connection method_, select the **VIA HTTPS** dropdown option
5. Under _Type_, select the **oci** dropdown option
6. Optionally, enter a _name_ and _project_ to associate the repository within
7. Enter the URL containing the OCI artifact repository in the format `oci://<registry>/<repository>`. Omit the inclusion of any digest or tag as part of the URL.
8. Click the **Connect** button to create the repository
