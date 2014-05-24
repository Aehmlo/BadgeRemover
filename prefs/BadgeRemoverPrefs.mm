#import <Preferences/PSListController.h>

@interface BadgeRemoverPrefsListController: PSListController {
}
@end

@implementation BadgeRemoverPrefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"BadgeRemoverPrefs" target:self] retain];
	}
	return _specifiers;
}
@end