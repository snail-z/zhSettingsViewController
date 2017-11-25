//
//  zh_ViewController.m
//  zhSettingsViewController
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import "zh_ViewController.h"
#import "zh_FirstViewController.h"
#import "zh_SecondViewController.h"

@interface zh_ViewController ()

@end

@implementation zh_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self groupInitialization];
}

- (void)groupInitialization {
    zhSettingsArrowItem *item1 = [zhSettingsArrowItem new];
    item1.title = @"样式一";
    item1.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        zh_FirstViewController *vc = [zh_FirstViewController new];
        [self.navigationController pushViewController:vc animated:YES];
    };
    
    zhSettingsArrowItem *item2 = [zhSettingsArrowItem new];
    item2.title = @"样式二";
    item2.handleEventsBlock = ^(zhSettingsArrowItem *item) {
        zh_SecondViewController *vc = [zh_SecondViewController new];
        [self.navigationController pushViewController:vc animated:YES];
    };
    
    zhSettingsGroup *group1 = [zhSettingsGroup groupWithItems:@[item1, item2]];
    group1.headerText = @"zhSettingsViewController";
    
    [self.ssGroups addObject:group1];
}

@end
