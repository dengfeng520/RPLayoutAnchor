//
//  UIView+Fetch.m
//  RPAnchor
//
//  Created by rp.wang on 2020/10/28.
//  Copyright © 2020 西安博信信息科技有限公司. All rights reserved.
//

#import "UIView+Fetch.h"

@implementation UIView (Fetch)
// -------------- leading
- (void)setLeading:(NSLayoutXAxisAnchor *)leading {
    self.leading = leading;
}
- (NSLayoutXAxisAnchor *)leading {
    return self.leadingAnchor;
}
// -------------- trailing
- (void)setTrailing:(NSLayoutXAxisAnchor *)trailing {
    self.trailing = trailing;
}
- (NSLayoutXAxisAnchor *)trailing {
    return self.trailingAnchor;
}
// -------------- left
- (void)setLeft:(NSLayoutXAxisAnchor *)left {
    self.left = left;
}
- (NSLayoutXAxisAnchor *)left {
    return self.leftAnchor;
}
// -------------- right
- (void)setRight:(NSLayoutXAxisAnchor *)right {
    self.right = right;
}
- (NSLayoutXAxisAnchor *)right {
    return self.rightAnchor;
}
// -------------- top
- (void)setTop:(NSLayoutYAxisAnchor *)top {
    self.top = top;
}
- (NSLayoutYAxisAnchor *)top {
    return self.topAnchor;
}
// -------------- safeTop
- (void)setSafeTop:(NSLayoutYAxisAnchor *)safeTop {
    self.safeTop = safeTop;
}
- (NSLayoutYAxisAnchor *)safeTop {
    if (@available(iOS 11.0, *)) {
        return self.safeAreaLayoutGuide.topAnchor;
    } else {
        // Fallback on earlier versions
        return self.topAnchor;
    }
}
// -------------- bottom
- (void)setBottom:(NSLayoutYAxisAnchor *)bottom {
    self.bottom = bottom;
}
- (NSLayoutYAxisAnchor *)bottom {
    return self.bottomAnchor;
}
// -------------- safeBottom
- (void)setSafeBottom:(NSLayoutYAxisAnchor *)safeBottom {
    self.safeBottom = safeBottom;
}
- (NSLayoutYAxisAnchor *)safeBottom {
    if (@available(iOS 11.0, *)) {
        return self.safeAreaLayoutGuide.bottomAnchor;
    } else {
        // Fallback on earlier versions
        return self.bottomAnchor;
    }
}
// -------------- width
- (void)setWidth:(NSLayoutDimension *)width {
    self.width = width;
}
- (NSLayoutDimension *)width {
    return self.widthAnchor;
}
// -------------- height
- (void)setHeight:(NSLayoutDimension *)height {
    self.height = height;
}
- (NSLayoutDimension *)height {
    return self.heightAnchor;
}
// -------------- centerX
- (void)setCenterX:(NSLayoutXAxisAnchor *)centerX {
    self.centerX = centerX;
}
- (NSLayoutXAxisAnchor *)centerX {
    return self.centerXAnchor;
}
// -------------- centerY
- (void)setCenterY:(NSLayoutYAxisAnchor *)centerY {
    self.centerY = centerY;
}
- (NSLayoutYAxisAnchor *)centerY {
    return self.centerYAnchor;
}
@end
