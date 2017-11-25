//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import <UIKit/UIKit.h>
@class zhSettingsItem;

@interface zhSettingsTableViewCell : UITableViewCell

@property (nonatomic, strong) zhSettingsItem *item;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
