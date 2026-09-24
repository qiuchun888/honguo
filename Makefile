ARCHS = arm64
TARGET = iphone:clang:15.0:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = honguo

honguo_FILES = Tweak.x
honguo_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk