// 隐藏底部推广内容区域
%hook SSShortVideoDistributionContentView
- (void)didMoveToSuperview {
    %orig;
    self.hidden = YES;
    self.alpha = 0;
}
%end

// 隐藏插入广告/底层视图容器
%hook FQVShortVideoBaseInsertView
- (void)didMoveToSuperview {
    %orig;
    self.hidden = YES;
    self.alpha = 0;
}
%end

// 隐藏短视频进度条视图
%hook FQVShortVideoProgressView
- (void)didMoveToSuperview {
    %orig;
    self.hidden = YES;
    self.alpha = 0;
}
%end

// 隐藏顶部视频标题文字
%hook YYLabel
- (void)didMoveToSuperview {
    %orig;
    if (self.superview) {
        NSString *clsName = NSStringFromClass([self.superview class]);
        if ([clsName containsString:@"Title"] || [clsName containsString:@"TitleView"] || [clsName containsString:@"VideoTitle"]) {
            self.hidden = YES;
            self.alpha = 0;
        }
    }
}
%end