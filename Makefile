export THEOS=/var/theos

TARGET := iphone:clang:latest:8.0
ARCHS = arm64

DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = IGGMain


$(TWEAK_NAME)_FRAMEWORKS =  UIKit Foundation Security QuartzCore CoreGraphics CoreText Accelerate GLKit SystemConfiguration GameController 

$(TWEAK_NAME)_LDFLAGS += X2N/JRMemory.framework/JRMemory

$(TWEAK_NAME)_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG

$(TWEAK_NAME)_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value

$(TWEAK_NAME)_FILES =  MainFile.mm $(wildcard SCLAlertView/*.m) $(wildcard SupportFile/*.m) 






#$(TWEAK_NAME)_LIBRARIES += substrate
# GO_EASY_ON_ME = 1

include $(THEOS_MAKE_PATH)/tweak.mk


