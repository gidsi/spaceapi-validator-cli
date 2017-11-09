#!/bin/bash

mkdir bin

for R in       \
    darwin/386     \
    darwin/amd64   \
    freebsd/386    \
    freebsd/amd64  \
    freebsd/arm    \
    linux/386      \
    linux/amd64    \
    linux/arm      \
    linux/arm64    \
    openbsd/386   \
    openbsd/amd64 \
    windows/386    \
    windows/amd64  \
    ; do \

    os=$(dirname ${R})
    arch=$(basename ${R})
    filename=spaceapi-validator-${os}-${arch}

    if [[ "$os" == "windows" ]]; then
        filename="${filename}.exe"
    fi

    echo ${filename}

    GOOS=${os} GOARCH=${arch} go build -o "bin/${filename}"

done

cd "bin"
sha256sum spaceapi-validator-* > SHA256SUMS

echo "done"
