//
//  zh_SecondViewController.m
//  zhSettingsViewController_Example
//
//  Created by zhanghao on 2017/11/25.
//  Copyright © 2017年 snail-z. All rights reserved.
//

#import "zh_SecondViewController.h"

@interface zh_SecondViewController ()

@end

@implementation zh_SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self group1Initialization];
    [self group2Initialization];
    [self group3Initialization];
    [self group4Initialization];
}

- (void)group1Initialization {
    zhSettingsArrowItem *item1 = [zhSettingsArrowItem new];
    item1.title = @"头像";
    item1.accessoryImage2 = [UIImage imageNamed:@"ss_avatar"];
    item1.cellHeight = 90;
    item1.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsItem *item2 = [zhSettingsItem new];
    item2.title = @"微信号";
    item2.accessoryText = @"Snail-z";
    
    zhSettingsArrowItem *item3 = [zhSettingsArrowItem new];
    item3.title = @"我的二维码";
    item3.accessoryImage2 = [UIImage imageNamed:@"ss_QRCode"];
    item3.accessoryImage2Insets = 12;
    item3.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsArrowItem *item4 = [zhSettingsArrowItem new];
    item4.title = @"更多";
    
    zhSettingsGroup *group1 = [zhSettingsGroup groupWithItems:@[item1, item2, item3, item4]];
    group1.headerHeight = 15;
    [self.ssGroups addObject:group1];
}

- (void)group2Initialization {
    zhSettingsArrowItem *item1 = [zhSettingsArrowItem new];
    item1.title = @"摇一摇";
    item1.iconImage = [UIImage imageNamed:@"ss_IconShake"];
    item1.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsArrowItem *item2 = [zhSettingsArrowItem new];
    item2.title = @"相册";
    item2.iconImage = [UIImage imageNamed:@"ss_album"];
    item2.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsArrowItem *item3 = [zhSettingsArrowItem new];
    item3.title = @"游戏";
    item3.accessoryText = @"获取更多游戏";
    item3.iconImage = [UIImage imageNamed:@"ss_game"];
    item3.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsGroup *group2 = [zhSettingsGroup groupWithItems:@[item1, item2, item3]];
    group2.headerHeight = 15;
    [self.ssGroups addObject:group2];
}

- (void)group3Initialization {
    zhSettingsArrowItem *item1 = [zhSettingsArrowItem new];
    item1.title = @"插件";
    item1.iconImage = [UIImage imageNamed:@"ss_bulb"];
    item1.iconInsets = 12;
    item1.subSpacingLeft = 10;
    item1.isPositionSwapIcon = YES;
    item1.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", item.title);
    };
    
    zhSettingsGroup *group1 = [zhSettingsGroup groupWithItems:@[item1]];
    group1.headerHeight = 15;
    [self.ssGroups addObject:group1];
}

- (void)group4Initialization {
    UILabel *label = [UILabel new];
    label.frame = CGRectMake(0, 0, 120, 30);
    label.text = @"退出登录";
    label.textAlignment = NSTextAlignmentCenter;
    
    zhSettingsArrowItem *item1 = [zhSettingsArrowItem new];
    item1.accessoryCustomView = label;
    item1.cellHeight = 50;
    item1.paddingRight = (self.ssTableView.bounds.size.width - 120) / 2;
    item1.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        NSLog(@"%@", label.text);
    };
    
    zhSettingsGroup *group = [zhSettingsGroup groupWithItems:@[item1]];
    group.headerHeight = 15;
    group.footerHeight = 15;
    [self.ssGroups addObject:group];
}

@end
