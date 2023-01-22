#!/bin/bash

set -ex

PATCHES="$(realpath "$(dirname "${0}")")"
TOP="$(realpath "$(dirname "${0}")/..")"
DIRS="system/bpf frameworks/native lineage-sdk"

patchapply() {
    cd "${TOP}/${1}"
    git am ${PATCHES}/${1}/*.patch
    cd "${TOP}"
}

for D in $DIRS
do
    patchapply $D
done

