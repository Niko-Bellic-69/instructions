#! /bin/bash

rm -rf .repo/local_manifests; \

repo init -u https://github.com/Evolution-X/manifest -b bka --git-lfs; \

/opt/crave/resync.sh; \

rm -rf device/xiaomi/munch && rm -rf device/xiaomi/sm8250-common && rm -rf kernel/xiaomi/sm8250 && rm -rf vendor/xiaomi/munch && rm -rf vendor/xiaomi/sm8250-common && rm -rf hardware/xiaomi; \

git clone https://github.com/Niko-Bellic-69/dxm device/xiaomi/munch; \
git clone https://github.com/LineageOS/android_device_xiaomi_sm8250-common device/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_kernel_xiaomi_sm8250 kernel/xiaomi/sm8250; \
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_munch vendor/xiaomi/munch; \
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8250-common vendor/xiaomi/sm8250-common; \
git clone https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi; \

rm -rf vendor/evolution-priv && git clone https://github.com/Evolution-X/vendor_evolution-priv_keys-template vendor/evolution-priv/keys && cd vendor/evolution-priv/keys && ./keys.sh && cd ../../..; \

. build/envsetup.sh; \

lunch lineage_munch-bp2a-user && m evolution
