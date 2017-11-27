//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import "zhSettingsItem.h"

@interface zhSettingsArrowItem : zhSettingsItem

@property (nonatomic, copy) void (^handleEventsBlock)(zhSettingsArrowItem *item);
@property (nonatomic, strong) UIImage *arrowImage;
@property (nonatomic, assign) CGFloat arrowWidth;

@end
