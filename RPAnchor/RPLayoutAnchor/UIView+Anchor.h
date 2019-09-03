//
//  UIView+Anchor.h
//  StudentsMarch
//
//  Created by rp.wang on 2019/8/31.
//  Copyright © 2019 西安博信信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Anchor)

typedef NS_ENUM(NSInteger, RPdirection) {
    rpLeading = 0,
    rpTrailing,
    rpLeft,
    rpRight,
    rpTop,
    rpSafeTop,
    rpBottom,
    rpSafeBottom,
    rpWidth,
    rpHeight,
    rpCenterX,
    rpCenterY,
};

- (UIView *(^)(UIView *))rp_addView;

- (UIView *(^)(CGFloat,UIView*))rp_leading;
- (UIView *(^)(CGFloat,UIView*))rp_trailing;

- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_top;
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_safeAreaTop;

- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_left;

- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_right;

- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_bottom;
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_safeAreaBottom;

- (UIView *(^)(CGFloat))rp_width;
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierWidth;
- (UIView *(^)(CGFloat))rp_lessWidth;
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierLessWidth;
- (UIView *(^)(CGFloat))rp_greaterWidth;
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierGreaterWidth;

- (UIView *(^)(CGFloat))rp_height;
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierHeight;
- (UIView *(^)(CGFloat))rp_lessHeight;
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierLessHeight;
- (UIView *(^)(CGFloat))rp_greaterHeight;
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_multiplierGreaterHeight;

- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_centerX;
- (UIView *(^)(CGFloat,UIView*,RPdirection))rp_centerY;

- (UIView *(^)(CGFloat,CGFloat))rp_size;
- (UIView *(^)(CGSize))rp_cgsize;

@end

NS_ASSUME_NONNULL_END
