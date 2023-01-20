# Patches

Patches for ArrowOS (viva)

## Install

Just move this directory to `$ANDROID_BUILD_TOP/patches` and run apply.sh

## List

`bionic/`:

Jemalloc causes problem with some of the prebuilts HALs

- [0002-Revert-Switch-to-jemalloc-memory-allocator.patch](bionic/0002-Revert-Switch-to-jemalloc-memory-allocator.patch)
- [0001-Revert-Verify-that-allocated-memory-is-always-zeroed.patch](bionic/0001-Revert-Verify-that-allocated-memory-is-always-zeroed.patch)

`system/bpf`:

BPF Is known to be broken on MTK S kernels, and there's no real way to fix it (as we're using prebuilt kernel). This only reverts a check done on that makes sure BPF is working properly, but doesn't fix BPF at all.

- [0001-Revert-detect-inability-to-write-to-index-0-of-bpf-m.patch](system/bpf/0001-Revert-detect-inability-to-write-to-index-0-of-bpf-m.patch)

`frameworks/native`:

**Optional**
Just removes some log spam

- [0001-BLASTBufferQueue-Comment-out-lines-causing-log-spam.patch](frameworks/native/0001-BLASTBufferQueue-Comment-out-lines-causing-log-spam.patch)