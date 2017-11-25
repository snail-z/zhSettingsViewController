//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//
#import "zhSettingsTableViewCell.h"
#import "zhSettingsArrowItem.h"
#import "zhSettingsSwitchItem.h"

@interface zhSettingsTableViewCell ()

@property (nonatomic, strong) UIImageView *ssIconView;
@property (nonatomic, strong) UILabel *ssTitleLabel;
@property (nonatomic, strong) UILabel *ssAccessoryLabel;
@property (nonatomic, strong) UIView *ssAccessoryView;
@property (nonatomic, strong) UIImageView *ssAccessoryView2;
@property (nonatomic, strong) UIImageView *ssAccessoryImageView;
@property (nonatomic, strong) UISwitch *ssAccessorySwitch;

@end

@implementation zhSettingsTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *identify = @"zh_ssTableViewCell";
    zhSettingsTableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[zhSettingsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _ssIconView = [[UIImageView alloc] init];
        _ssIconView.layer.masksToBounds = YES;
        [self addSubview:_ssIconView];
        
        _ssTitleLabel = [[UILabel alloc] init];
        _ssTitleLabel.numberOfLines = 0;
        [self addSubview:_ssTitleLabel];
        
        _ssAccessoryLabel = [[UILabel alloc] init];
        [self addSubview:self.ssAccessoryLabel];
        
        _ssAccessoryView = [[UIView alloc] init];
        [self addSubview:_ssAccessoryView];
        
        _ssAccessoryView2 = [[UIImageView alloc] init];
        _ssAccessoryView2.layer.masksToBounds = YES;
        [self addSubview:_ssAccessoryView2];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGSize size = self.bounds.size;
    CGFloat (^makeY)(CGFloat) = ^(CGFloat selfH) {
        return (size.height - selfH) / 2;
    };
    
    if (_item.isPositionSwapIcon) {
        if (_ssTitleLabel.text.length) {
            CGSize titleSize = [_ssTitleLabel sizeThatFits:CGSizeMake(size.width / 2, size.height)];
            _ssTitleLabel.frame = CGRectMake(_item.paddingLeft, makeY(titleSize.height), titleSize.width, titleSize.height);
        }
        if (_ssIconView.image) {
            CGFloat iconW = _item.cellHeight - 2 * _item.iconInsets;
            CGFloat iconX = CGRectGetMaxX(_ssTitleLabel.frame) + _item.subSpacingLeft;
            _ssIconView.frame = CGRectMake(iconX, makeY(iconW), iconW, iconW);
            _ssIconView.layer.cornerRadius = _item.iconCornerRadius;
        }
    } else {
        if (_ssIconView.image) {
            CGFloat iconW = _item.cellHeight - 2 * _item.iconInsets;
            _ssIconView.frame = CGRectMake(_item.paddingLeft, makeY(iconW), iconW, iconW);
            _ssIconView.layer.cornerRadius = _item.iconCornerRadius;
        }
        if (_ssTitleLabel.text.length) {
            CGSize titleSize = [_ssTitleLabel sizeThatFits:CGSizeMake(size.width / 2, size.height)];
            CGFloat titleX = CGRectGetMaxX(_ssIconView.frame) + _item.subSpacingLeft;
            _ssTitleLabel.frame = CGRectMake(titleX, makeY(titleSize.height), titleSize.width, titleSize.height);
        }
    }
    
    CGFloat relativeRight = size.width;
    CGSize assryViewSize = _ssAccessoryView.subviews.lastObject.bounds.size;
    CGFloat assryViewX = relativeRight - _item.paddingRight - assryViewSize.width;
    _ssAccessoryView.frame = CGRectMake(assryViewX, makeY(assryViewSize.height), assryViewSize.width, assryViewSize.height);
    for (UIView *sView in _ssAccessoryView.subviews) {
        CGRect frame = sView.frame;
        frame.origin.y = (assryViewSize.height - frame.size.height) / 2;
        frame.origin.x = assryViewSize.width - frame.size.width;
        sView.frame = frame;
    }
    
    if (!CGSizeEqualToSize(CGSizeZero, _ssAccessoryView.frame.size)) {
        relativeRight = CGRectGetMinX(_ssAccessoryView.frame);
    }
    
    if (_ssAccessoryLabel.text.length) {
        CGSize assryLabelSize = [_ssAccessoryLabel sizeThatFits:CGSizeMake(size.width / 2, size.height)];
        CGFloat assryLabelX = relativeRight - _item.subSpacingRight - assryLabelSize.width;
        _ssAccessoryLabel.frame = CGRectMake(assryLabelX, makeY(assryLabelSize.height), assryLabelSize.width, assryLabelSize.height);
        relativeRight = CGRectGetMinX(_ssAccessoryLabel.frame);
    }
    
    if (_ssAccessoryView2.image) {
        CGFloat accessory2W = _item.cellHeight - 2 * _item.accessoryImage2Insets;
        CGFloat accessory2X = relativeRight - _item.accessoryImage2PaddingRight - accessory2W;
        _ssAccessoryView2.frame = CGRectMake(accessory2X, makeY(accessory2W), accessory2W, accessory2W);
        _ssAccessoryView2.layer.cornerRadius = _item.accessoryImage2CornerRadius;
    }
}

- (void)setItem:(zhSettingsItem *)item {
    _item = item;

    [self setupAppearance];
    [self setupAccessoryView];
    
    _ssIconView.image = _item.iconImage;
    _ssAccessoryLabel.text = _item.accessoryText;
    if (_item.attributedTitle.length) {
        _ssTitleLabel.attributedText = _item.attributedTitle;
    } else {
        _ssTitleLabel.text = _item.title;
    }

    [self setNeedsLayout];
}

- (void)setupAppearance {
    _ssTitleLabel.textColor = _item.titleColor;
    _ssTitleLabel.font = _item.titleFont;
    _ssAccessoryLabel.textColor = _item.accessoryTextColor;
    _ssAccessoryLabel.font = _item.accessoryTextFont;
    _ssAccessoryView2.image = _item.accessoryImage2;
}

- (void)setupAccessoryView {
    for (UIView *v in _ssAccessoryView.subviews) { [v removeFromSuperview]; }
    if (_item.accessoryCustomView) {
        [_ssAccessoryView addSubview:_item.accessoryCustomView];
    } else if ([_item isKindOfClass:[zhSettingsArrowItem class]]) {
        zhSettingsArrowItem *item = (zhSettingsArrowItem*)_item;
        self.ssAccessoryImageView.frame = CGRectMake(0, 0, item.arrowSize.width, item.arrowSize.height);
        self.ssAccessoryImageView.image = item.arrowImage;
        [_ssAccessoryView addSubview:self.ssAccessoryImageView];
    } else if ([_item isKindOfClass:[zhSettingsSwitchItem class]]) {
        zhSettingsSwitchItem *item = (zhSettingsSwitchItem*)_item;
        self.ssAccessorySwitch.onTintColor = item.onTintColor;
        self.ssAccessorySwitch.on = item.isOn;
        [_ssAccessoryView addSubview:self.ssAccessorySwitch];
    } else {}
}

- (UIImageView *)ssAccessoryImageView {
    if (!_ssAccessoryImageView) {
        _ssAccessoryImageView = [[UIImageView alloc] init];
    }
    return _ssAccessoryImageView;
}

- (UISwitch *)ssAccessorySwitch {
    if (!_ssAccessorySwitch) {
        _ssAccessorySwitch = [[UISwitch alloc] init];
        [_ssAccessorySwitch addTarget:self action:@selector(ssSwitchChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _ssAccessorySwitch;
}

- (void)ssSwitchChanged:(UISwitch *)sender {
    zhSettingsSwitchItem *item = (zhSettingsSwitchItem*)_item;
    if (item.switchChangeBlock) {
        item.switchChangeBlock(item, sender);
    }
}

@end
