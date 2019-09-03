//
//  UIView+Anchor.m
//  StudentsMarch
//
//  Created by rp.wang on 2019/8/31.
//  Copyright © 2019 西安博信信息科技有限公司. All rights reserved.
//

#import "UIView+Anchor.h"

#define rp_weakSelf(object) autoreleasepool   {} __weak  typeof(object) weak##object = object;
#define rp_strongSelf(object) autoreleasepool {} __strong  typeof(weak##object) object = weak##object;

@implementation UIView (Anchor)

// MARK:- addView
- (UIView *(^)(UIView *))rp_addView {
    @rp_weakSelf(self);
    return ^(UIView *addView){
        NSAssert(addView, @"withView must not be empty");
        @rp_strongSelf(self);
        [addView addSubview:self];
        self.translatesAutoresizingMaskIntoConstraints = false;
        return self;
    };
}
// MARK: - leading
- (UIView *(^)(CGFloat,UIView*))rp_leading {
    @rp_weakSelf(self);
    return ^(CGFloat leading,UIView *withView){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.leadingAnchor constraintEqualToAnchor:withView.leadingAnchor constant:leading] setActive:true];
        return self;
    };
}
// MARK: - trailing
- (UIView *(^)(CGFloat,UIView*))rp_trailing {
    @rp_weakSelf(self);
    return ^(CGFloat trailing,UIView *withView){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.trailingAnchor constraintEqualToAnchor:withView.trailingAnchor constant:trailing] setActive:true];
        return self;
    };
}
// MARK: - top
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_top {
    @rp_weakSelf(self);
    return ^(CGFloat top,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.topAnchor constraintEqualToAnchor:[self fetchConstraint:dir withView:withView] constant:top] setActive:true];
        return self;
    };
}
// if iOS 11
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_safeAreaTop {
    @rp_weakSelf(self);
    return ^(CGFloat safeAreaTop,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.topAnchor constraintEqualToAnchor:[self fetchConstraint:dir withView:withView] constant:safeAreaTop] setActive:true];
        return self;
    };
}
// MARK: - left
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_left {
    @rp_weakSelf(self);
    return ^(CGFloat left,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.leftAnchor constraintEqualToAnchor:[self fetchConstraint:dir withView:withView] constant:left] setActive:true];
        return self;
    };
}
// MARK: - right
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_right {
    @rp_weakSelf(self);
    return ^(CGFloat right,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.rightAnchor constraintEqualToAnchor:[self fetchConstraint:dir withView:withView] constant:right] setActive:true];
        return self;
    };
}
// MARK: - bottom
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_bottom {
    @rp_weakSelf(self);
    return ^(CGFloat bottom,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.bottomAnchor constraintEqualToAnchor:[self fetchConstraint:dir withView:withView] constant:bottom] setActive:true];
        return self;
    };
}
// if iOS 11
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_safeAreaBottom {
    @rp_weakSelf(self);
    return ^(CGFloat bottom,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.bottomAnchor constraintEqualToAnchor:[self fetchConstraint:dir withView:withView] constant:bottom] setActive:true];
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
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierWidth {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.widthAnchor constraintEqualToAnchor:[self fetchDimension:dir withView:withView] multiplier:multiplier] setActive:true];
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
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierLessWidth {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,UIView *withView,RPdirection dir){
        @rp_strongSelf(self);
        [[self.widthAnchor constraintLessThanOrEqualToAnchor:[self fetchDimension:dir withView:withView] multiplier:multiplier] setActive:true];
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
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierGreaterWidth {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.widthAnchor constraintGreaterThanOrEqualToAnchor:[self fetchDimension:dir withView:withView] multiplier:multiplier] setActive:true];
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
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierHeight {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.heightAnchor constraintEqualToAnchor:[self fetchDimension:dir withView:withView] multiplier:multiplier] setActive:true];
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
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierLessHeight {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.heightAnchor constraintLessThanOrEqualToAnchor:[self fetchDimension:dir withView:withView] multiplier:multiplier] setActive:true];
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
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierGreaterHeight {
    @rp_weakSelf(self);
    return ^(CGFloat multiplier,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.heightAnchor constraintGreaterThanOrEqualToAnchor:[self fetchDimension:dir withView:withView] multiplier:multiplier] setActive:true];
        return self;
    };
}
// MARK: - centerXAnchor
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_centerX {
    @rp_weakSelf(self);
    return ^(CGFloat centerX,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.centerXAnchor constraintEqualToAnchor:[self fetchConstraint:dir withView:withView] constant:centerX] setActive:true];
        return self;
    };
}
// MARK: - centerYAnchor
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_centerY {
    @rp_weakSelf(self);
    return ^(CGFloat centerY,UIView *withView,RPdirection dir){
        NSAssert(withView, @"withView must not be empty");
        @rp_strongSelf(self);
        [[self.centerYAnchor constraintEqualToAnchor:[self fetchConstraint:dir withView:withView] constant:centerY] setActive:true];
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
// MARK: - ===============
- (NSLayoutAnchor *)fetchConstraint:(RPdirection)attribute withView:(UIView *)isView {
    NSAssert(attribute, @"attribute must not be empty");
    // -----------------------------
    if (attribute == rpLeading) {
       return isView.leadingAnchor;
    }
    // -----------------------------
    if (attribute == rpTrailing) {
        return isView.trailingAnchor;
    }
    // -----------------------------
    if (attribute == rpLeft) {
        return isView.leftAnchor;
    }
    // -----------------------------
    if (attribute == rpRight) {
        return isView.rightAnchor;
    }
    // -----------------------------
    if (attribute == rpTop) {
        return isView.topAnchor;
    }
    // -----------------------------
    if (attribute == rpSafeTop) {
        if (@available(iOS 11.0, *)) {
            return isView.safeAreaLayoutGuide.topAnchor;
        } else {
            return isView.topAnchor;
        }
    }
    // -----------------------------
    if (attribute == rpBottom) {
        return isView.bottomAnchor;
    }
    // -----------------------------
    if (attribute == rpSafeBottom) {
        if (@available(iOS 11.0, *)) {
            return isView.safeAreaLayoutGuide.bottomAnchor;
        } else {
            return isView.bottomAnchor;
        }
    }
    // -----------------------------
    if (attribute == rpCenterX) {
        return isView.centerXAnchor;
    }
    // -----------------------------
    if (attribute == rpCenterY) {
        return isView.centerYAnchor;
    }
    return self.superview.topAnchor;
}

- (NSLayoutDimension *)fetchDimension:(RPdirection)attribute withView:(UIView *)isView {
    // -----------------------------
    if (attribute == rpWidth) {
        return isView.widthAnchor;
    }
    // -----------------------------
    if (attribute == rpHeight) {
        return isView.heightAnchor;
    }
   
    return self.superview.widthAnchor;
}

@end
