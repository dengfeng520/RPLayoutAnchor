//
//  UIView+Anchor.h
//  StudentsMarch
//
//  Created by rp.wang on 2019/8/31.
//  Copyright © 2019 西安博信信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Fetch.h"

NS_ASSUME_NONNULL_BEGIN


@interface UIView (Anchor)

- (UIView *(^)(void))rp_config;
- (UIView *(^)(UIView *))rp_addView;
- (UIView *(^)(void))rp_activate;

- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_leading;
- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_trailing;

- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutYAxisAnchor *> *))rp_top;

- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_left;
 
- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_right;

- (UIView *(^)(CGFloat,NSLayoutAnchor<NSLayoutYAxisAnchor *>*))rp_bottom;

- (UIView *(^)(CGFloat))rp_width;
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierWidth;
- (UIView *(^)(CGFloat))rp_lessWidth;
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierLessWidth;
- (UIView *(^)(CGFloat))rp_greaterWidth;
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierGreaterWidth;

- (UIView *(^)(CGFloat))rp_height;
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierHeight;
- (UIView *(^)(CGFloat))rp_lessHeight;
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierLessHeight;
- (UIView *(^)(CGFloat))rp_greaterHeight;
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_multiplierGreaterHeight;

- (UIView *(^)(UIView*))rp_center;
- (UIView *(^)(CGFloat,NSLayoutXAxisAnchor *))rp_centerX;
- (UIView *(^)(CGFloat,NSLayoutYAxisAnchor *))rp_centerY;

- (UIView *(^)(CGFloat,CGFloat))rp_size;
- (UIView *(^)(CGSize))rp_cgsize;

- (BOOL)isiPhoneX;

@end

NS_ASSUME_NONNULL_END
