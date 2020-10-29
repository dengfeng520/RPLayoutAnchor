//
//  UIView+Anchor.m
//  StudentsMarch
//
//  Created by rp.wang on 2019/8/31.
//  Copyright © 2019 西安博信信息科技有限公司. All rights reserved.
//

#import "UIView+Anchor.h"
#import "RPLayoutExtension.h"

@implementation UIView (Anchor)

- (UIView *(^)(void))rp_config {
    @rp_weakSelf(self);
    return ^(void){
        @rp_strongSelf(self);
        if (self.translatesAutoresizingMaskIntoConstraints) {
            self.translatesAutoresizingMaskIntoConstraints = false;
        }
        return self;
    };
}
// MARK: - addView
- (UIView *(^)(UIView *))rp_addView {
    @rp_weakSelf(self);
    return ^(UIView *addView){
        NSAssert(addView, @"withView must not be empty");
        @rp_strongSelf(self);
        [addView addSubview:self];
        if (self.translatesAutoresizingMaskIntoConstraints) {
            self.translatesAutoresizingMaskIntoConstraints = false;
        }
        return self;
    };
}
// MARK: - activate
- (UIView *(^)(void))rp_activate {
    @rp_weakSelf(self);
    return ^(void){
        @rp_strongSelf(self);
        if (self.translatesAutoresizingMaskIntoConstraints) {
            self.translatesAutoresizingMaskIntoConstraints = false;
            
        }
        return self;
    };
}
// MARK: - leading
- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_leading {
    @rp_weakSelf(self);
    return ^(CGFloat leading,NSLayoutAnchor<NSLayoutXAxisAnchor *> *axis){
        NSAssert(axis, @"axis must not be empty");
        @rp_strongSelf(self);
        [[self.leadingAnchor constraintEqualToAnchor:axis] setActive:true];
        return self;
    };
}
// MARK: - trailing
- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_trailing {
    @rp_weakSelf(self);
    return ^(CGFloat trailing,NSLayoutAnchor<NSLayoutXAxisAnchor *> *axis){
        NSAssert(axis, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.trailingAnchor constraintEqualToAnchor:axis] setActive:true];
        return self;
    };
}
// MARK: - top
- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutYAxisAnchor *> *))rp_top {
    @rp_weakSelf(self);
    return ^(CGFloat top, NSLayoutAnchor<NSLayoutYAxisAnchor *> *anchor){
        @rp_strongSelf(self);
        [[self.topAnchor constraintEqualToAnchor:anchor constant:top] setActive:true];
        return self;
    };
}
// MARK: - left
- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_left {
    @rp_weakSelf(self);
    return ^(CGFloat left,NSLayoutAnchor<NSLayoutXAxisAnchor *> *axis){
        NSAssert(axis, @"axis must not be empty");
        @rp_strongSelf(self);
        [[self.leftAnchor constraintEqualToAnchor:axis constant:left] setActive:true];
        return self;
    };
}
// MARK: - right
- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_right {
    @rp_weakSelf(self);
    return ^(CGFloat right,NSLayoutAnchor<NSLayoutXAxisAnchor *> *axis){
        NSAssert(axis, @"axis must not be empty");
        @rp_strongSelf(self);
        [[self.rightAnchor constraintEqualToAnchor:axis constant:right] setActive:true];
        return self;
    };
}
// MARK: - bottom
- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutYAxisAnchor *>*))rp_bottom {
    @rp_weakSelf(self);
    return ^(CGFloat bottom,NSLayoutAnchor<NSLayoutYAxisAnchor *> *axis){
        NSAssert(axis, @"axis must not be empty");
        @rp_strongSelf(self);
        [[self.bottomAnchor constraintEqualToAnchor:axis constant:bottom] setActive:true];
        return self;
    };
}
// MARK: - width
- (UIView *(^)(CGFloat))rp_width {
    @rp_weakSelf(self);
    return ^(CGFloat width){
        @rp_strongSelf(self);
        [[self.widthAnchor constraintEqualToConstant:width] setActive:true];
        return self;
    };
}
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierWidth {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,NSLayoutDimension *anchor){
        NSAssert(anchor, @"anchor must not be empty");
        @rp_strongSelf(self);
        [[self.widthAnchor constraintEqualToAnchor:anchor constant:multiplier] setActive: multiplier];
        return self;
    };
}
- (UIView *(^)(CGFloat))rp_lessWidth {
    @rp_weakSelf(self);
    return ^(CGFloat width){
        @rp_strongSelf(self);
        [[self.widthAnchor constraintLessThanOrEqualToConstant:width] setActive:true];
        return self;
    };
}
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierLessWidth {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,NSLayoutDimension *anchor){
        @rp_strongSelf(self);
        [[self.widthAnchor constraintLessThanOrEqualToAnchor:anchor multiplier:multiplier] setActive:true];
        return self;
    };
}
- (UIView *(^)(CGFloat))rp_greaterWidth {
    @rp_weakSelf(self);
    return ^(CGFloat width){
        @rp_strongSelf(self);
        [[self.widthAnchor constraintGreaterThanOrEqualToConstant:width] setActive:true];
        return self;
    };
}
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierGreaterWidth {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,NSLayoutDimension *anchor){
        NSAssert(anchor, @"anchor must not be empty");
        @rp_strongSelf(self);
        [[self.widthAnchor constraintGreaterThanOrEqualToAnchor:anchor multiplier:multiplier] setActive:true];
        return self;
    };
}
// MARK: - height
- (UIView *(^)(CGFloat))rp_height {
    @rp_weakSelf(self);
    return ^(CGFloat height){
        @rp_strongSelf(self);
        [[self.heightAnchor constraintEqualToConstant:height] setActive:true];
        return self;
    };
}
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierHeight {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,NSLayoutDimension *anchor){
        NSAssert(anchor, @"anchor must not be empty");
        @rp_strongSelf(self);
        [[self.heightAnchor constraintEqualToAnchor:anchor multiplier:multiplier] setActive:true];
        return self;
    };
}
- (UIView *(^)(CGFloat))rp_lessHeight {
    @rp_weakSelf(self);
    return ^(CGFloat height){
        @rp_strongSelf(self);
        [[self.heightAnchor constraintLessThanOrEqualToConstant:height] setActive:true];
        return self;
    };
}
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierLessHeight {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,NSLayoutDimension *anchor){
        NSAssert(anchor, @"anchor must not be empty");
        @rp_strongSelf(self);
        [[self.heightAnchor constraintLessThanOrEqualToAnchor:anchor multiplier:multiplier] setActive:true];
        return self;
    };
}
- (UIView *(^)(CGFloat))rp_greaterHeight {
    @rp_weakSelf(self);
    return ^(CGFloat height){
        @rp_strongSelf(self);
        [[self.heightAnchor constraintGreaterThanOrEqualToConstant:height] setActive:true];
        return self;
    };
}
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierGreaterHeight {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,NSLayoutDimension *anchor){
        NSAssert(anchor, @"anchor must not be empty");
        @rp_strongSelf(self);
        [[self.heightAnchor constraintGreaterThanOrEqualToAnchor:anchor multiplier:multiplier] setActive:true];
        return self;
    };
}
// MARK: - center
- (UIView *(^)(UIView*))rp_center {
    @rp_weakSelf(self);
    return ^(UIView *withView){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.centerXAnchor constraintEqualToAnchor:withView.centerXAnchor constant:0] setActive:true];
        [[self.centerYAnchor constraintEqualToAnchor:withView.centerYAnchor constant:0] setActive:true];
        return self;
    };
}
// MARK: - centerXAnchor
- (UIView *(^)(CGFloat,NSLayoutXAxisAnchor *))rp_centerX {
    @rp_weakSelf(self);
    return ^(CGFloat centerX,NSLayoutXAxisAnchor *anchor){
        NSAssert(anchor, @"anchor must not be empty");
        @rp_strongSelf(self);
        [[self.centerXAnchor constraintEqualToAnchor:anchor constant:centerX] setActive:true];
        return self;
    };
}
// MARK: - centerYAnchor
- (UIView *(^)(CGFloat,NSLayoutYAxisAnchor *))rp_centerY {
    @rp_weakSelf(self);
    return ^(CGFloat centerY,NSLayoutYAxisAnchor *anchor){
        NSAssert(anchor, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.centerYAnchor constraintEqualToAnchor:anchor constant:centerY] setActive:true];
        return self;
    };
}

// MARK: - size
- (UIView *(^)(CGFloat,CGFloat))rp_size {
    @rp_weakSelf(self);
    return ^(CGFloat width,CGFloat height){
        @rp_strongSelf(self);
        [[self.widthAnchor constraintEqualToConstant:width] setActive:true];
        [[self.heightAnchor constraintEqualToConstant:height] setActive:true];
        return self;
    };
}
- (UIView *(^)(CGSize))rp_cgsize {
    @rp_weakSelf(self);
    return ^(CGSize size){
        @rp_strongSelf(self);
        [[self.widthAnchor constraintEqualToConstant:size.width] setActive:true];
        [[self.heightAnchor constraintEqualToConstant:size.height] setActive:true];
        return self;
    };
}
- (BOOL)isiPhoneX {
    if (@available(iOS 11.0, *)) {
        UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
        CGFloat bottomSafeInset = keyWindow.safeAreaInsets.bottom;
        if (bottomSafeInset == 34 || bottomSafeInset == 21) {
            return true;
        }
    }
    return false;
}

@end
