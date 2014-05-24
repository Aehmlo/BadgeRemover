export ARCHS=armv7 arm64
export TARGET=iphone:clang:latest:7.0
include theos/makefiles/common.mk

TWEAK_NAME = BadgeRemover
BadgeRemover_FILES = Tweak.xm

SUBPROJECTS = BadgeRemoverPrefs

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 backboardd"