#!/bin/sh

cd $(dirname $0)

if [ $# -lt 1 ]; then
        echo "Usage: $0 {version}"
        exit 1
fi
version=$1

cat > config/final.yml << EOF
name: vault-bbr
blobstore:
  provider: local
  options:
    blobstore_path: $PWD/blobs
EOF

mkdir -p build
bosh create-release --final --force --version=$version --tarball=build/vault-bbr-$version.tgz

# remove all these pointless directories, we are creating a tarball
rm -rf config/final.yml .dev_builds .final_builds dev_releases releases blobs