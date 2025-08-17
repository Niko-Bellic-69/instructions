#! /bin/bash

rm -rf .repo/local_manifests; \

repo init -u https://github.com/crdroidandroid/android.git -b 16.0 --git-lfs --no-clone-bundle; \

/opt/crave/resync.sh; \

rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/sm8250 && rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi; \

git clone https://github.com/Niko-Bellic-69/dxm device/xiaomi/munch; \
git clone https://github.com/LineageOS/android_device_xiaomi_sm8250-common device/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_kernel_xiaomi_sm8250 kernel/xiaomi/sm8250; \
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_munch vendor/xiaomi/munch; \
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8250-common vendor/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi; \

. build/envsetup.sh; \

brunch munch
