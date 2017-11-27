//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import "zhSettingsGroup.h"

@implementation zhSettingsGroup

- (zhSettingsGroup *)_initWithItems:(NSArray<zhSettingsItem *> *)items {
    zhSettingsGroup *group = [zhSettingsGroup new];
    group.items = items;
    return group;
}

+ (instancetype)groupWithItems:(NSArray<zhSettingsItem *> *)items {
    return [[self alloc] _initWithItems:items];
}

- (CGFloat)paddingLeft {
    if (_paddingLeft) return _paddingLeft;
    return 15;
}

- (CGFloat)headerHeight {
    if (_headerHeight) return _headerHeight;
    if (self.headerText) return 35;
    return 0.0001;
}

- (CGFloat)footerHeight {
    if (_footerHeight) return _footerHeight;
    if (self.footerText) return 35;
    return 0.0001;
}

- (UIColor *)headerTextColor {
    if (_headerTextColor) return _headerTextColor;
    return [UIColor grayColor];
}

- (UIFont *)headerTextFont {
    if (_headerTextFont) return _headerTextFont;
    return [UIFont systemFontOfSize:12];
}

- (UIColor *)headerBackgroundColor {
    if (_headerBackgroundColor) return _headerBackgroundColor;
    return [UIColor colorWithRed:239/255. green:239/255. blue:244/255. alpha:1];
}

- (UIColor *)footerTextColor {
    if (_footerTextColor) return _footerTextColor;
    return [UIColor grayColor];
}

- (UIFont *)footerTextFont {
    if (_footerTextFont) return _footerTextFont;
    return [UIFont systemFontOfSize:12];
}

- (UIColor *)footerBackgroundColor {
    if (_footerBackgroundColor) return _footerBackgroundColor;
    return [UIColor colorWithRed:239/255. green:239/255. blue:244/255. alpha:1];
}

@end
