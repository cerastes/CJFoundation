//
//  UIView+CJSize.h
//  CJFoundation
//
//  Created by jimmy Chan on 2016/12/21.
//  Copyright © 2016年 jimmychan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CJSize)
@property CGPoint origin;
@property CGSize size;

@property(readonly) CGPoint bottomLeft;
@property(readonly) CGPoint bottomRight;
@property(readonly) CGPoint topRight;

@property(nonatomic) CGFloat left;
@property(nonatomic) CGFloat top;

// Setting these modifies the origin but not the size.
@property(nonatomic) CGFloat right;
@property(nonatomic) CGFloat bottom;

@property(nonatomic) CGFloat width;
@property(nonatomic) CGFloat height;

@property(nonatomic, assign) CGFloat centerX;
@property(nonatomic, assign) CGFloat centerY;

- (void)verticalCenterInView:(UIView *)aView;

- (void)horizontalCenterInView:(UIView *)aView;

- (void)rightAlignInView:(UIView *)aView margin:(CGFloat)margin;

- (void)bottomAlignInView:(UIView *)aView margin:(CGFloat)margin;

@end
