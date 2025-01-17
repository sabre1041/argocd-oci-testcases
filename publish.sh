#!/bin/bash

SCRIPT_BASE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

BASE_REPOSITORY=${ARGOCD_OCI_BASE_REGISTRY:-ghcr.io/sabre1041/argocd-oci-testcases}

# Publish Helm Chart based on directory of content
pushd ${SCRIPT_BASE_DIR}/testdata/helm/argocd-oci &>/dev/null
oras push -a "org.opencontainers.image.authors=Argo CD Contributors" \
          -a "org.opencontainers.image.url=https://argo-cd.readthedocs.io" \
          -a "org.opencontainers.image.version=0.1.0" \
          -a "org.opencontainers.image.source=https://github.com/sabre1041/argocd-oci-testcases" \
          -a "org.opencontainers.image.description=Helm Chart Stored as OCI Artifact" \
          -a "org.opencontainers.image.revision=1" \
          -a "org.opencontainers.image.created=$(date -u +%FT%TZ)" \
          ${BASE_REPOSITORY}/oci-helm:latest .
popd &>/dev/null

# Publish Flat Set of Kubernetes Manifests
pushd ${SCRIPT_BASE_DIR}/testdata/manifests/flat/ &>/dev/null
oras push -a "org.opencontainers.image.authors=Argo CD Contributors" \
          -a "org.opencontainers.image.url=https://argo-cd.readthedocs.io" \
          -a "org.opencontainers.image.version=0.1.0" \
          -a "org.opencontainers.image.source=https://github.com/sabre1041/argocd-oci-testcases" \
          -a "org.opencontainers.image.description=Flat Directory of Manifests Stored as an OCI Artifact" \
          -a "org.opencontainers.image.revision=1" \
          -a "org.opencontainers.image.created=$(date -u +%FT%TZ)" \
          ${BASE_REPOSITORY}/oci-manifests-flat:latest .
popd &>/dev/null

# Publish Nested Directory of Kubernetes Manifests
pushd ${SCRIPT_BASE_DIR}/testdata/manifests/nested/ &>/dev/null
oras push -a "org.opencontainers.image.authors=Argo CD Contributors" \
          -a "org.opencontainers.image.url=https://argo-cd.readthedocs.io" \
          -a "org.opencontainers.image.version=0.1.0" \
          -a "org.opencontainers.image.source=https://github.com/sabre1041/argocd-oci-testcases" \
          -a "org.opencontainers.image.description=Nested Directory of Manifests Stored as an OCI Artifact" \
          -a "org.opencontainers.image.revision=1" \
          -a "org.opencontainers.image.created=$(date -u +%FT%TZ)" \
          ${BASE_REPOSITORY}/oci-manifests-nested:latest .
popd &>/dev/null

# Tag OCI Artifact Producing Unique Tag
oras tag ${BASE_REPOSITORY}/oci-manifests-flat:latest ${BASE_REPOSITORY}/oci-manifests-flat:v0.1.0

# Update Digest Value
UPDATED_DIGEST=$(oras resolve ${BASE_REPOSITORY}/oci-manifests-flat:latest) yq e -i '.spec.source.targetRevision |= env(UPDATED_DIGEST)' ${SCRIPT_BASE_DIR}/applications/testcase4.yaml

# Publish Custom Media Type
pushd ${SCRIPT_BASE_DIR}/testdata/manifests/flat/ &>/dev/null
oras push -a "org.opencontainers.image.authors=Argo CD Contributors" \
          -a "org.opencontainers.image.url=https://argo-cd.readthedocs.io" \
          -a "org.opencontainers.image.version=0.1.0" \
          -a "org.opencontainers.image.source=https://github.com/sabre1041/argocd-oci-testcases" \
          -a "org.opencontainers.image.description=Flat Directory of Manifests Stored as an OCI Artifact With a Custom MediaType" \
          -a "org.opencontainers.image.revision=1" \
          -a "org.opencontainers.image.created=$(date -u +%FT%TZ)" \
          ${BASE_REPOSITORY}/oci-manifests-flat-custom-mediatype:latest .:application/vnd.cncf.argoproj.argocd.content.v1.tar+gzip
popd &>/dev/null