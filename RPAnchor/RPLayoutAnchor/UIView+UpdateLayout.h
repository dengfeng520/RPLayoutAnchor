//
//  UIView+UpdateLayout.h
//  StudentsMarch
//
//  Created by rp.wang on 2020/10/29.
//  Copyright © 2020 西安博信信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPLayoutExtension.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (UpdateLayout)
/// remake leading
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_remakeLeading;
/// remake trailing
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_remakeTrailing;
/// remake top
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutYAxisAnchor *> *))rp_remakeTop;
/// remake bottom
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutYAxisAnchor *> *))rp_remakeBottom;
/// remake left
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_remakeLeft;
/// remake right
- (UIView *(^)(CGFloat, NSLayoutAnchor<NSLayoutXAxisAnchor *> *))rp_remakeRight;
/// remake width
- (UIView *(^)(CGFloat))rp_remakeWidth;
/// remake less width
- (UIView *(^)(CGFloat))rp_remakeLessWidth;
/// remake greater width
- (UIView *(^)(CGFloat))rp_remakeGreaterWidth;
/// remake multiplier width
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_remakeMultiplierWidth;
/// remake multiplier greate width
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_remakeMultiplierGreaterWidth;
/// remake height
- (UIView *(^)(CGFloat))rp_remakeHeight;
/// remake less height
- (UIView *(^)(CGFloat))rp_remakeLessHeight;
/// remake greater height
- (UIView *(^)(CGFloat))rp_remakeGreaterHeight;
/// remake multiplier height
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_remakeMultiplierHeight;
/// remake multiplier greate height
- (UIView *(^)(CGFloat,NSLayoutDimension *))rp_remakeMultiplierGreaterHeight;
/// remake centerX
- (UIView *(^)(CGFloat,NSLayoutXAxisAnchor *))rp_remakeCenterX;
/// remake centerY
- (UIView *(^)(CGFloat,NSLayoutYAxisAnchor *))rp_remakeCenterY;
@end

NS_ASSUME_NONNULL_END
