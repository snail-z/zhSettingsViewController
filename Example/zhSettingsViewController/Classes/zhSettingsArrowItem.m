//
//  <https://github.com/snail-z/zhSettingsViewController>
//
//  Created by snail-z on 11/25/2017.
//  Copyright (c) 2017 snail-z. All rights reserved.
//

#import "zhSettingsArrowItem.h"

@implementation zhSettingsArrowItem

- (UIImage *)arrowImage {
    if (_arrowImage) return _arrowImage;
    return [UIImage imageNamed:@"ss_arrows"];
}

- (CGFloat)arrowWidth {
    if (_arrowWidth) return _arrowWidth;
    return 6;
}

@end
