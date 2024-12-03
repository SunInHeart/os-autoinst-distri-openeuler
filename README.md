# openQA tests for the openEuler riscv ditri

This repository contains simple tests cases and needles for testing openEuler riscv with openQA.

## Feature

1. Use the qcow2 format image of openEuler_riscv to test.

2. Support testing for base and xfce OS, using different test cases.

## Todo

* Support testing of images boot using UEFI. (**uboot can also boot UEFI qcow2 image!**)

## Command

For legacy boot:

```sh
$ openqa-cli schedule --monitor \
    --param-file SCENARIO_DEFINITIONS_YAML=/var/lib/openqa/tests/openeuler/scenario-definitions.yaml \
    DISTRI=openeuler VERSION=0 FLAVOR=dev ARCH=riscv64 \
    TEST=legacy_boot _GROUP_ID=0 BUILD=test \
    CASEDIR=/var/lib/openqa/tests/openeuler \
    NEEDLES_DIR=%%CASEDIR%%/needles \
    HDD_1=openEuler-24.03-V1-base-qemu-testing.qcow2 \
    BIOS=/var/lib/openqa/factory/other/fw_payload_oe_uboot_2304.bin
```

## Image

Already tested images: 

* [openEuler_riscv_2309](https://mirror.iscas.ac.cn/openeuler-sig-riscv/openEuler-RISC-V/preview/openEuler-23.09-V1-riscv64/QEMU/)
* [openEuler_riscv_2403](https://mirror.iscas.ac.cn/openeuler-sig-riscv/openEuler-RISC-V/testing/2403LTS-test/v1/QEMU/)

