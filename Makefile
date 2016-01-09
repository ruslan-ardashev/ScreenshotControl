GO_EASY_ON_ME = 1
SDKVERSION = 9.2
ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = NoWhiteFlash
NoWhiteFlash_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
