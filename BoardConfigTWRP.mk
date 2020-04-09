# TWRP-Specific
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 178
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_TOOLBOX := true

# FS
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true

# Encryption
TW_INCLUDE_CRYPTO := true

# Notch margin
TW_Y_OFFSET := 90
TW_H_OFFSET := -90

# Correct time
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_DEVICE_MODULE := tzdata
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT)/usr/share/zoneinfo/tzdata

# Remove cursor
TW_INPUT_BLACKLIST := "hbtp_vm"

# Extra configurations
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_REPACKTOOLS := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
