//
//  UIView+UpdateLayout.m
//  StudentsMarch
//
//  Created by rp.wang on 2020/10/29.
//  Copyright © 2020 西安博信信息科技有限公司. All rights reserved.
//

#import "UIView+UpdateLayout.h"
#import "UIView+Anchor.h"

@implementation UIView (UpdateLayout)
// remake leading
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_remakeLeading {
    @rp_weakSelf(self);
    return ^(CGFloat leading,NSLayoutAnchor<NSLayoutXAxisAnchor *> *axis){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeLeading) {
                    [self removeConstraint:constraint];
                    [[self.leadingAnchor constraintEqualToAnchor:axis constant:leading] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake trailing
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_remakeTrailing {
    @rp_weakSelf(self);
    return ^(CGFloat trailing,NSLayoutAnchor<NSLayoutXAxisAnchor *> *axis){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeTrailing) {
                    [self removeConstraint:constraint];
                    [[self.leadingAnchor constraintEqualToAnchor:axis constant:trailing] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake top
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutYAxisAnchor *> *))rp_remakeTop {
    @rp_weakSelf(self);
    return ^(CGFloat top,NSLayoutAnchor<NSLayoutYAxisAnchor *> *anchor){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeTop) {
                    [self removeConstraint:constraint];
                    [[self.topAnchor constraintEqualToAnchor:anchor constant:top] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake bottom
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutYAxisAnchor *> *))rp_remakeBottom {
    @rp_weakSelf(self);
    return ^(CGFloat bottom,NSLayoutAnchor<NSLayoutYAxisAnchor *> *anchor){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeBottom) {
                    [self removeConstraint:constraint];
                    [[self.bottomAnchor constraintEqualToAnchor:anchor constant:bottom] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake left
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_remakeLeft {
    @rp_weakSelf(self);
    return ^(CGFloat left,NSLayoutAnchor<NSLayoutXAxisAnchor *> *axis){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeLeft) {
                    [self removeConstraint:constraint];
                    [[self.leftAnchor constraintEqualToAnchor:axis constant:left] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake right
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_remakeRight {
    @rp_weakSelf(self);
    return ^(CGFloat right,NSLayoutAnchor<NSLayoutXAxisAnchor *> *axis){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeRight) {
                    [self removeConstraint:constraint];
                    [[self.leftAnchor constraintEqualToAnchor:axis constant:right] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake width
- (UIView *(^)(CGFloat))rp_remakeWidth {
    @rp_weakSelf(self);
    return ^(CGFloat width){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeWidth) {
                    [self removeConstraint:constraint];
                    [[self.widthAnchor constraintEqualToConstant:width] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake less width
- (UIView *(^)(CGFloat))rp_remakeLessWidth {
    @rp_weakSelf(self);
    return ^(CGFloat width){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeWidth) {
                    [self removeConstraint:constraint];
                    [[self.widthAnchor constraintLessThanOrEqualToConstant:width] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake greater width
- (UIView *(^)(CGFloat))rp_remakeGreaterWidth {
    @rp_weakSelf(self);
    return ^(CGFloat width){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeWidth) {
                    [self removeConstraint:constraint];
                    [[self.widthAnchor constraintGreaterThanOrEqualToConstant:width] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake multiplier width
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_remakeMultiplierWidth {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,NSLayoutDimension *anchor){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeWidth) {
                    [self removeConstraint:constraint];
                    [[self.widthAnchor constraintEqualToAnchor:anchor multiplier:multiplier] setActive: true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake multiplier greate width
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_remakeMultiplierGreaterWidth {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,NSLayoutDimension *anchor){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeWidth) {
                    [self removeConstraint:constraint];
                    [[self.widthAnchor constraintGreaterThanOrEqualToAnchor:anchor multiplier:multiplier] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake height
- (UIView *(^)(CGFloat))rp_remakeHeight {
    @rp_weakSelf(self);
    return ^(CGFloat height){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeHeight) {
                    [self removeConstraint:constraint];
                    [[self.heightAnchor constraintEqualToConstant:height] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake less height
- (UIView *(^)(CGFloat))rp_remakeLessHeight {
    @rp_weakSelf(self);
    return ^(CGFloat height){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeHeight) {
                    [self removeConstraint:constraint];
                    [[self.widthAnchor constraintLessThanOrEqualToConstant:height] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake greater height
- (UIView *(^)(CGFloat))rp_remakeGreaterHeight {
    @rp_weakSelf(self);
    return ^(CGFloat height){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeHeight) {
                    [self removeConstraint:constraint];
                    [[self.heightAnchor constraintGreaterThanOrEqualToConstant:height] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake multiplier height
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_remakeMultiplierHeight {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,NSLayoutDimension *anchor){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeHeight) {
                    [self removeConstraint:constraint];
                    [[self.height constraintEqualToAnchor:anchor multiplier:multiplier] setActive: true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake multiplier greate height
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_remakeMultiplierGreaterHeight {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,NSLayoutDimension *anchor){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeHeight) {
                    [self removeConstraint:constraint];
                    [[self.heightAnchor constraintGreaterThanOrEqualToAnchor:anchor multiplier:multiplier] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake centerX
- (UIView *(^)(CGFloat,NSLayoutXAxisAnchor *))rp_remakeCenterX {
    @rp_weakSelf(self);
    return ^(CGFloat centerX,NSLayoutXAxisAnchor *anchor){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeCenterX) {
                    [self removeConstraint:constraint];
                    [[self.centerXAnchor constraintEqualToAnchor:anchor constant:centerX] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
// remake centerY
- (UIView *(^)(CGFloat,NSLayoutYAxisAnchor *))rp_remakeCenterY {
    @rp_weakSelf(self);
    return ^(CGFloat centerY,NSLayoutYAxisAnchor *anchor){
        @rp_strongSelf(self);
        if (self.constraints.count != 0) {
            [self.constraints enumerateObjectsUsingBlock:^(__kindof NSLayoutConstraint * _Nonnull constraint, NSUInteger idx, BOOL * _Nonnull stop) {
                if (constraint.firstAttribute == NSLayoutAttributeCenterY) {
                    [self removeConstraint:constraint];
                    [[self.centerYAnchor constraintEqualToAnchor:anchor constant:centerY] setActive:true];
                    *stop = YES;
                }
            }];
        }
        return self;
    };
}
@end
