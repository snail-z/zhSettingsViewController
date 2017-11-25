//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import "zhSettingsItem.h"

@interface zhSettingsSwitchItem : zhSettingsItem

@property (nonatomic, copy) void (^switchChangeBlock)(zhSettingsSwitchItem *item, UISwitch *uiSwitch);
@property (nonatomic, strong) UIColor *onTintColor;
@property (nonatomic, assign) BOOL isOn;

@end
