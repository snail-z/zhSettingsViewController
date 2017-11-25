//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface zhSettingsItem : NSObject

/// left padding of views, default is 15.
@property (nonatomic, assign) CGFloat paddingLeft;

/// right padding of views, default is 15.
@property (nonatomic, assign) CGFloat paddingRight;

/// (iconImage => |subSpacingLeft| <= title), default is 15.
@property (nonatomic, assign) CGFloat subSpacingLeft;

/// (accessoryText => |subSpacingRight| <= accessoryCustomView), default is 15.
@property (nonatomic, assign) CGFloat subSpacingRight;

/// set cell height, default is 44.
@property (nonatomic, assign) CGFloat cellHeight;

/// 是否交换icon与title的位置
@property (nonatomic, assign) BOOL isPositionSwapIcon;

/// set icon image, default is nil.
@property (nonatomic, strong, nullable) UIImage *iconImage;

/// 通过iconInsets调整icon尺寸大小, default is 10.
@property (nonatomic, assign) CGFloat iconInsets;

/// 设置icon圆角半径, default is 0.
@property (nonatomic, assign) CGFloat iconCornerRadius;

/// set title, default is nil.
@property (nonatomic, strong, nullable) NSString *title;

/// set attributed title, default is nil. (if set it, the title will be invalid.)
@property (nonatomic, strong, nullable) NSAttributedString *attributedTitle;

/// default is [UIColor blackColor].
@property (nonatomic, strong, nullable) UIColor *titleColor;

/// default is [UIFont systemFontOfSize:17].
@property (nonatomic, strong, nullable) UIFont *titleFont;

/// set accessory text, default is nil.
@property (nonatomic, strong, nullable) NSString *accessoryText;

/// default is [UIColor lightGrayColor].
@property (nonatomic, strong, nullable) UIColor *accessoryTextColor;

/// default is [UIFont systemFontOfSize:15].
@property (nonatomic, strong, nullable) UIFont *accessoryTextFont;

/// set accessory image, default is nil.
@property (nonatomic, strong, nullable) UIImage *accessoryImage2;

/// 调整accessoryImage尺寸大小, default is 10.
@property (nonatomic, assign) CGFloat accessoryImage2Insets;

/// (accessoryImage2/accessoryText => |accessoryPaddingRight| <= aView), default is 10.
@property (nonatomic, assign) CGFloat accessoryPaddingRight;

/// 设置accessoryImage圆角半径, default is 0.
@property (nonatomic, assign) CGFloat accessoryImage2CornerRadius;

/// 是否交换accessoryImage2与accessoryText的位置
@property (nonatomic, assign) BOOL isPositionSwapAccessory;

/// if set, use custom accessory view. (The switch or arrows will be invalid.)
@property (nonatomic, strong, nullable) UIView *accessoryCustomView;

@end

NS_ASSUME_NONNULL_END
