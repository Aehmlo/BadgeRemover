include theos/makefiles/common.mk

BUNDLE_NAME = BadgeRemoverPrefs
BadgeRemoverPrefs_FILES = BadgeRemoverPrefs.mm
BadgeRemoverPrefs_INSTALL_PATH = /Library/PreferenceBundles
BadgeRemoverPrefs_FRAMEWORKS = UIKit
BadgeRemoverPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/BadgeRemoverPrefs.plist$(ECHO_END)
