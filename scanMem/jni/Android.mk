LOCAL_PATH := $(call my-dir)

###########################################################################	elf
include $(CLEAR_VARS)


LOCAL_MODULE := scanmemDemo

LOCAL_SRC_FILES := main.cpp

# Enable PIE manually. Will get reset on $(CLEAR_VARS).
LOCAL_CFLAGS += -fPIE
LOCAL_LDFLAGS += -fPIE -pie

LOCAL_LDLIBS := -llog

include $(BUILD_EXECUTABLE)

###########################################################################	so

include $(CLEAR_VARS)

LOCAL_MODULE    := scanmemDemo-so
LOCAL_SRC_FILES := main.cpp 

# Enable PIE manually. Will get reset on $(CLEAR_VARS).
#LOCAL_CFLAGS += -fPIE
#LOCAL_LDFLAGS += -fPIE -pie


LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)


