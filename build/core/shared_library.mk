ifeq ($(INCLUDE_MARVELL_FLAGS),true)
LOCAL_CFLAGS += -DMRVL_HARDWARE
LOCAL_CFLAGS += -DNO_RGBX_8888
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
LOCAL_CFLAGS += -DBOARD_EGL_NEEDS_LEGACY_FB
LOCAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
LOCAL_CFLAGS += -DSAMSUNG_DVFS
LOCAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR1_AUDIO_BLOB
endif
include $(BUILD_SHARED_LIBRARY)
