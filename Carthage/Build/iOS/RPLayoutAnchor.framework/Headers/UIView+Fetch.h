//
//  UIView+Fetch.h
//  RPAnchor
//
//  Created by rp.wang on 2020/10/28.
//  Copyright © 2020 西安博信信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Fetch)
@property (strong, readonly, nonatomic) NSLayoutXAxisAnchor *leading;
@property (strong, readonly, nonatomic) NSLayoutXAxisAnchor *trailing;
@property (strong, readonly, nonatomic) NSLayoutXAxisAnchor *left;
@property (strong, readonly, nonatomic) NSLayoutXAxisAnchor *right;
@property (strong, readonly, nonatomic) NSLayoutYAxisAnchor *top;
@property (strong, readonly, nonatomic) NSLayoutYAxisAnchor *safeTop;
@property (strong, readonly, nonatomic) NSLayoutYAxisAnchor *bottom;
@property (strong, readonly, nonatomic) NSLayoutYAxisAnchor *safeBottom;
@property (strong, readonly, nonatomic) NSLayoutDimension *width;
@property (strong, readonly, nonatomic) NSLayoutDimension *height;
@property (strong, readonly, nonatomic) NSLayoutXAxisAnchor *centerX;
@property (strong, readonly, nonatomic) NSLayoutYAxisAnchor *centerY;
@end

NS_ASSUME_NONNULL_END
