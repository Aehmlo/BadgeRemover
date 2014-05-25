%hook SBIconBadgeView

- (id)init{
	@autoreleasepool{ //Needed whenever you use Objective-C APIs, theoretically. Especially here.
		NSDictionary *prefs = [NSDictionary dictionaryWithContentsOfFile:[NSHomeDirectory() stringByAppendingPathComponent:@"Library/Preferences/com.aehmlo.badgeremover.plist"]];
		return (prefs[@"Enable"] == nil || [prefs[@"Enable"] boolValue]) ? nil : %orig();
	}
}

%end