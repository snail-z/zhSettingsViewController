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
    [self group5Initialization];
}

- (void)group1Initialization {
    zhSettingsArrowItem *item1 = [zhSettingsArrowItem new];
    item1.iconImage = [UIImage imageNamed:@"ss_headImg"];
    item1.iconCornerRadius = 6;
    item1.subSpacingLeft = 10;
    item1.attributedTitle = [self makeAttributedTitle];
    item1.accessoryImage2 = [UIImage imageNamed:@"ss_QRCode"];
    item1.cellHeight = 88;
    item1.accessoryImage2Insets = 33;
    item1.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.attributedTitle);
    };
    
    zhSettingsGroup *group = [zhSettingsGroup groupWithItems:@[item1]];
    group.headerHeight = 15;
    [self.ssGroups addObject:group];
}

- (void)group2Initialization {
    zhSettingsItem *item1 = [zhSettingsItem new];
    item1.title = @"微信号";
    item1.accessoryText = @"zhang_jh770";
    
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

- (void)group3Initialization {
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

- (void)group4Initialization {
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
    item3.iconImage = [UIImage imageNamed:@"ss_message"];
    item3.title = @"我的消息";
    item3.accessoryText = @"17";
    item3.accessoryTextColor = [UIColor whiteColor];
    item3.accessoryTextBackgroundColor = [UIColor redColor];
    item3.accessoryTextEdgePadding = UIOffsetMake(15, 2);
    item3.accessoryTextMakeRound = YES;
    item3.isPositionSwapAccessory = YES;
    item3.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsGroup *group = [zhSettingsGroup groupWithItems:@[item1, item2, item3]];
    group.headerHeight = 15;
    [self.ssGroups addObject:group];
}

- (void)group5Initialization {
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

- (NSAttributedString *)makeAttributedTitle {
    NSString *title1 = @"Snail-z", *title2 = @"微信号：zhang_jh770";
    NSString *text = [NSString stringWithFormat:@"%@\n%@", title1, title2];
    NSMutableAttributedString *attriText = [[NSMutableAttributedString alloc] initWithString:text];
    
    [attriText addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:17] range:[text rangeOfString:title1]];
    [attriText addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:[text rangeOfString:title2]];
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:10];
    [attriText addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [text length])]; // 行距调整
    
    return attriText;
}

@end
