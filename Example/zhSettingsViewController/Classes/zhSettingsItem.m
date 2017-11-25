//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import "zhSettingsItem.h"

@implementation zhSettingsItem

- (CGFloat)paddingLeft {
    if (_paddingLeft) return _paddingLeft;
    return 15;
}

- (CGFloat)paddingRight {
    if (_paddingRight) return _paddingRight;
    return 15;
}

- (CGFloat)subSpacingLeft {
    if (_subSpacingLeft) return _subSpacingLeft;
    return 15;
}

- (CGFloat)subSpacingRight {
    if (_subSpacingRight) return _subSpacingRight;
    return 15;
}

- (CGFloat)cellHeight {
    if (_cellHeight) return _cellHeight;
    return 44;
}

- (CGFloat)iconInsets {
    if (_iconInsets) return _iconInsets;
    return 10;
}

- (UIColor *)titleColor {
    if (_titleColor) return _titleColor;
    return [UIColor blackColor];
}

- (UIFont *)titleFont {
    if (_titleFont) return _titleFont;
    return [UIFont systemFontOfSize:17];
}

- (UIColor *)accessoryTextColor {
    if (_accessoryTextColor) return _accessoryTextColor;
    return [UIColor lightGrayColor];
}

- (UIFont *)accessoryTextFont {
    if (_accessoryTextFont) return _accessoryTextFont;
    return [UIFont systemFontOfSize:15];
}

- (CGFloat)accessoryImage2Insets {
    if (_accessoryImage2Insets) return _accessoryImage2Insets;
    return 10;
}

- (CGFloat)accessoryPaddingRight {
    if (_accessoryPaddingRight) return _accessoryPaddingRight;
    return 10;
}

@end
