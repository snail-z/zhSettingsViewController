//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import <UIKit/UIKit.h>
@class zhSettingsItem;

@interface zhSettingsGroup : NSObject

+ (instancetype)groupWithItems:(NSArray<zhSettingsItem *> *)items;

@property (nonatomic, strong) NSArray<zhSettingsItem *> *items;

/// left padding of superview, default is 15.
@property (nonatomic, assign) CGFloat paddingLeft;

/// 默认居中，可通过verticalInsets调整间距
@property (nonatomic, assign) CGFloat verticalInsets;

/// 如果有文本则默认35，无文本默认为0
@property (nonatomic, assign) CGFloat headerHeight;

/// set header text.
@property (nonatomic, strong) NSString *headerText;

/// 文本最大宽度限制，默认 superviewWidth-2*paddingLeft
@property (nonatomic, assign) CGFloat headerTextWidthLimit;

/// set header text color, default is [UIColor grayColor].
@property (nonatomic, strong) UIColor *headerTextColor;

/// set header text font, default is [UIFont systemFontOfSize:12].
@property (nonatomic, strong) UIFont *headerTextFont;

/// set header backgroundColor, default is [UIColor colorWithRed:239/255. green:239/255. blue:244/255. alpha:1]
@property (nonatomic, strong) UIColor *headerBackgroundColor;

/// set footer text.
@property (nonatomic, strong) NSString *footerText;

/// 如果有文本则默认35，无文本默认为0
@property (nonatomic, assign) CGFloat footerHeight;

/// 文本最大宽度限制，默认 superviewWidth-2*paddingLeft
@property (nonatomic, assign) CGFloat footerTextWidthLimit;

/// set footer text color, default is [UIColor grayColor].
@property (nonatomic, strong) UIColor *footerTextColor;

/// set footer text font, default is [UIFont systemFontOfSize:12].
@property (nonatomic, strong) UIFont *footerTextFont;

/// set footer backgroundColor, default is [UIColor colorWithRed:239/255. green:239/255. blue:244/255. alpha:1]
@property (nonatomic, strong) UIColor *footerBackgroundColor;

@end
