//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "zhSettingsGroup.h"
#import "zhSettingsSwitchItem.h"
#import "zhSettingsArrowItem.h"

@interface zhSettingsViewController : UIViewController

// default is UIEdgeInsetsMake(0, 15, 0, 0)
@property (nonatomic, assign) UIEdgeInsets ssSeparatorInset;
@property (nonatomic, strong) NSMutableArray<zhSettingsGroup *> *ssGroups;
@property (nonatomic, strong, readonly) UITableView *ssTableView;

@end
