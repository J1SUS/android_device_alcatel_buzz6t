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
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 5044R
PRODUCT_MANUFACTURER := Alcatel
PRODUCT_RELEASE_NAME := CameoX

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="BUZZ6T4GGOPHONE-user 7.0 NRD90M YB4 release-keys" \
    BUILD_FINGERPRINT="TCL/Alcatel_5044R/BUZZ6T4GGOPHONE:7.0/NRD90M/YB4:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-alcatel

# Build signing
ifneq ($(wildcard vendor/paz00/cert/releasekey*),)
	PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/paz00/cert/releasekey
endif
