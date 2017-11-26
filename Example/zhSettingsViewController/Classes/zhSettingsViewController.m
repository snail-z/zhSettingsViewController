//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import "zhSettingsViewController.h"
#import "zhSettingsTableViewCell.h"
#import "zhSettingsGroupView.h"

@interface zhSettingsViewController () <UITableViewDataSource, UITableViewDelegate>
@end

@implementation zhSettingsViewController

- (NSMutableArray<zhSettingsGroup *> *)ssGroups {
    if (!_ssGroups) {
        _ssGroups = [[NSMutableArray array] init];
    }
    return _ssGroups;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    CGRect rect = self.view.frame;
    _ssTableView = [[UITableView alloc] initWithFrame:rect style:UITableViewStyleGrouped];
    _ssTableView.backgroundColor = [UIColor clearColor];
    _ssTableView.showsVerticalScrollIndicator = NO;
    _ssTableView.dataSource = self;
    _ssTableView.delegate = self;
    [self.view addSubview:_ssTableView];
    self.ssSeparatorInset = UIEdgeInsetsMake(0, 15, 0, 0);
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return self.ssGroups[section].headerHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return self.ssGroups[section].footerHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    zhSettingsGroup *group = self.ssGroups[section];
    zhSettingsGroupView *view = [[zhSettingsGroupView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, group.headerHeight)];
    view.headerGroup = group;
    return view;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    zhSettingsGroup *group = self.ssGroups[section];
    zhSettingsGroupView *view = [[zhSettingsGroupView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, group.footerHeight)];
    view.footerGroup = group;
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    zhSettingsGroup *group = self.ssGroups[indexPath.section];
    return group.items[indexPath.row].cellHeight;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.ssGroups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    zhSettingsGroup *group = self.ssGroups[section];
    return group.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    zhSettingsTableViewCell *cell = [zhSettingsTableViewCell cellWithTableView:tableView];
    zhSettingsGroup *group = self.ssGroups[indexPath.section];
    zhSettingsItem *item = group.items[indexPath.row];
    cell.item = item;
    if ([item isKindOfClass:[zhSettingsArrowItem class]]) {
        cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    } else {
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    zhSettingsGroup *group = self.ssGroups[indexPath.section];
    zhSettingsItem *item = group.items[indexPath.row];
    if ([item isKindOfClass:[zhSettingsArrowItem class]]) {
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        zhSettingsArrowItem *arrowItem = (zhSettingsArrowItem *)item;
        if (arrowItem.handleEventsBlock) {
            arrowItem.handleEventsBlock(arrowItem);
        } else {
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
    }
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:self.ssSeparatorInset];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:self.ssSeparatorInset];
    }
}

@end
