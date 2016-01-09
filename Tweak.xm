
%hook SBScreenFlash

- (void)flashWhiteWithCompletion:(id)arg1
{
	%orig;
	UIView *flashView = MSHookIvar<UIView *>(self, "_flashView");
	flashView.hidden = YES;
}
%end