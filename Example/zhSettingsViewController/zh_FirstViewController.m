//
//  zh_FirstViewController.m
//  zhSettingsViewController_Example
//
//  Created by zhanghao on 2017/11/25.
//  Copyright © 2017年 snail-z. All rights reserved.
//

#import "zh_FirstViewController.h"

@interface zh_FirstViewController ()

@end

@implementation zh_FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ssTableView.backgroundColor = [UIColor colorWithRed:239/255. green:239/255. blue:244/255. alpha:1];
    [self group1Initialization];
    [self group2Initialization];
    [self group3Initialization];
    [self group4Initialization];
}

- (void)group1Initialization {
    zhSettingsItem *item1 = [zhSettingsItem new];
    item1.title = @"微信号";
    
    zhSettingsArrowItem *item2 = [zhSettingsArrowItem new];
    item2.title = @"手机号";
    item2.accessoryText = @"13566106677";
    item2.accessoryImage2 = [UIImage imageNamed:@"ss_lock"];
    item2.accessoryImage2Insets = 12;
    item2.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsGroup *group = [zhSettingsGroup groupWithItems:@[item1, item2]];
    group.headerHeight = 15;
    [self.ssGroups addObject:group];
}

- (void)group2Initialization {
    zhSettingsArrowItem *item1 = [zhSettingsArrowItem new];
    item1.title = @"微信密码";
    item1.accessoryText = @"****";
    item1.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsArrowItem *item2 = [zhSettingsArrowItem new];
    item2.title = @"声音锁";
    item2.accessoryText = @"未设置";
    item2.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsGroup *group = [zhSettingsGroup groupWithItems:@[item1, item2]];
    group.headerHeight = 15;
    [self.ssGroups addObject:group];
}

- (void)group3Initialization {
    zhSettingsSwitchItem *item1 = [zhSettingsSwitchItem new];
    item1.title = @"开启推送";
    item1.isOn = YES;
    item1.onTintColor = [UIColor colorWithRed:81/255.0 green:169/255.0 blue:56/255.0 alpha:1];
    item1.switchChangeBlock = ^(zhSettingsSwitchItem *item, UISwitch *uiSwitch) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsArrowItem *item2 = [zhSettingsArrowItem new];
    item2.title = @"清除缓存";
    item2.accessoryText = @"596KB";
    item2.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsArrowItem *item3 = [zhSettingsArrowItem new];
    item3.title = @"登录设备管理";
    
    zhSettingsArrowItem *item4 = [zhSettingsArrowItem new];
    item4.title = @"更多安全设置";
    
    zhSettingsGroup *group = [zhSettingsGroup groupWithItems:@[item1, item2, item3, item4]];
    group.headerHeight = 15;
    [self.ssGroups addObject:group];
}

- (void)group4Initialization {
    zhSettingsArrowItem *item1 = [zhSettingsArrowItem new];
    item1.title = @"微信安全中心";
    item1.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsGroup *group = [zhSettingsGroup groupWithItems:@[item1]];
    group.headerHeight = 15;
    group.footerHeight = 70;
    group.footerText = @"如果遇到账号信息泄露、忘记密码、诈骗等账号安全问题，可前往微信安全中心。";
    [self.ssGroups addObject:group];
}

@end
