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

@property (nonatomic, assign) CGFloat paddingLeft;
@property (nonatomic, assign) CGFloat verticalInsets;
@property (nonatomic, assign) CGFloat headerHeight;
@property (nonatomic, assign) CGFloat footerHeight;

@property (nonatomic, strong) NSString *headerText;
@property (nonatomic, assign) CGFloat headerTextWidthLimit;
@property (nonatomic, strong) UIColor *headerTextColor;
@property (nonatomic, strong) UIFont *headerTextFont;
@property (nonatomic, strong) UIColor *headerBackgroundColor;

@property (nonatomic, strong) NSString *footerText;
@property (nonatomic, assign) CGFloat footerTextWidthLimit;
@property (nonatomic, strong) UIColor *footerTextColor;
@property (nonatomic, strong) UIFont *footerTextFont;
@property (nonatomic, strong) UIColor *footerBackgroundColor;

@end
