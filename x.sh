#! /bin/bash

rm -rf .repo/local_manifests; \

repo init -u https://github.com/AxionAOSP/android.git -b lineage-23.0 --git-lfs; \

/opt/crave/resync.sh; \

rm -rf out/target/product/munch && rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/sm8250 && rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi; \

git clone https://github.com/Niko-Bellic-69/dxm device/xiaomi/munch; \
git clone https://github.com/Niko-Bellic-69/dxc device/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_kernel_xiaomi_sm8250 kernel/xiaomi/sm8250; \
git clone https://github.com/Niko-Bellic-69/vxm vendor/xiaomi/munch; \
git clone https://github.com/Niko-Bellic-69/vxc vendor/xiaomi/sm8250-common; \
git clone https://github.com/crdroidandroid/android_hardware_xiaomi hardware/xiaomi; \

. build/envsetup.sh; \

gk -s && axion munch && axionSync && ax -br -j$(nproc)
