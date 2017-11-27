//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import "zhSettingsGroupView.h"
#import "zhSettingsGroup.h"

@interface zhSettingsGroupView ()

@property (nonatomic, strong) UILabel *ssTextLabel;

@end

@implementation zhSettingsGroupView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _ssTextLabel = [[UILabel alloc] init];
        _ssTextLabel.numberOfLines = 0;
        [self addSubview:_ssTextLabel];
    }
    return self;
}

- (void)setHeaderGroup:(zhSettingsGroup *)headerGroup {
    _headerGroup = headerGroup;
    self.backgroundColor = _headerGroup.headerBackgroundColor;
    _ssTextLabel.text = _headerGroup.headerText;
    _ssTextLabel.textColor = _headerGroup.headerTextColor;
    _ssTextLabel.font = _headerGroup.headerTextFont;
    
    CGSize size = self.bounds.size;
    CGFloat limitWidth = size.width - _headerGroup.paddingLeft * 2;
    if (_headerGroup.headerTextWidthLimit) {
        limitWidth = _headerGroup.headerTextWidthLimit;
    }
    CGSize textSize = [_ssTextLabel sizeThatFits:CGSizeMake(limitWidth, MAXFLOAT)];
    CGFloat textTop = (_headerGroup.headerHeight - textSize.height) / 2;
    if (_headerGroup.verticalInsets) {
        textTop = size.height - textSize.height - _headerGroup.verticalInsets;
    }
    _ssTextLabel.frame = CGRectMake(_headerGroup.paddingLeft, textTop, textSize.width, textSize.height);
}

- (void)setFooterGroup:(zhSettingsGroup *)footerGroup {
    _footerGroup = footerGroup;
    self.backgroundColor = _footerGroup.footerBackgroundColor;
    _ssTextLabel.text = _footerGroup.footerText;
    _ssTextLabel.textColor = _footerGroup.footerTextColor;
    _ssTextLabel.font = _footerGroup.footerTextFont;
    
    CGSize size = self.bounds.size;
    CGFloat limitWidth = size.width - _footerGroup.paddingLeft * 2;
    if (_footerGroup.footerTextWidthLimit) {
        limitWidth = _footerGroup.footerTextWidthLimit;
    }
    CGSize textSize = [_ssTextLabel sizeThatFits:CGSizeMake(limitWidth, size.height)];
    CGFloat textTop = (_footerGroup.footerHeight - textSize.height) / 2;
    if (_footerGroup.verticalInsets) {
        textTop = _footerGroup.verticalInsets;
    }
    _ssTextLabel.frame = CGRectMake(_footerGroup.paddingLeft, textTop, textSize.width, textSize.height);
}

@end
