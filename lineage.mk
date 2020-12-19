# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/alcatel/buzz6t/buzz6t.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := buzz6t
PRODUCT_NAME := lineage_buzz6t
PRODUCT_BRAND := Alcatel
PRODUCT_MODEL := 5044R
PRODUCT_MANUFACTURER := TCL
PRODUCT_RELEASE_NAME := BUZZ6T

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="buzz6t-user 5.1.1 LMY47V vA73-0 release-keys" \
    BUILD_FINGERPRINT="TCL/5044R/Pop35:5.1.1/LMY47V/vA73-0:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-alcatel

# Build signing
ifneq ($(wildcard vendor/paz00/cert/releasekey*),)
	PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/paz00/cert/releasekey
endif
