//
//  UIView+CJSize.m
//  CJFoundation
//
//  Created by jimmy Chan on 2016/12/21.
//  Copyright © 2016年 jimmychan. All rights reserved.
//

#import "UIView+CJSize.h"

@implementation UIView (CJSize)
- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)newOrigin {
    self.frame = CGRectMake(newOrigin.x, newOrigin.y, self.frame.size.width, self.frame.size.height);
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)newSize {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y,
                            newSize.width, newSize.height);
}

- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)newX {
    self.frame = CGRectMake(newX, self.frame.origin.y,
                            self.frame.size.width, self.frame.size.height);
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)newY {
    self.frame = CGRectMake(self.frame.origin.x, newY,
                            self.frame.size.width, self.frame.size.height);
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)newRight {
    self.frame = CGRectMake(newRight - self.frame.size.width, self.frame.origin.y,
                            self.frame.size.width, self.frame.size.height);
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)newBottom {
    self.frame = CGRectMake(self.frame.origin.x, newBottom - self.frame.size.height,
                            self.frame.size.width, self.frame.size.height);
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)newWidth {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y,
                            newWidth, self.frame.size.height);
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)newHeight {
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y,
                            self.frame.size.width, newHeight);
}

- (CGFloat)centerX;
{
    return [self center].x;
}

- (void)setCenterX:(CGFloat)centerX;
{
    [self setCenter:CGPointMake(centerX, self.center.y)];
}

- (CGFloat)centerY;
{
    return [self center].y;
}

- (void)setCenterY:(CGFloat)centerY;
{
    [self setCenter:CGPointMake(self.center.x, centerY)];
}

- (CGPoint) bottomRight
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}

- (CGPoint) bottomLeft
{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}

- (CGPoint) topRight
{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y;
    return CGPointMake(x, y);
}

- (void)verticalCenterInView:(UIView*)aView {
    self.top = floorf(aView.height/2 - self.height/2);
}
- (void)bottomAlignInView:(UIView*)aView margin:(CGFloat)margin {
    self.top = aView.height - self.height - margin;
}
- (void)horizontalCenterInView:(UIView*)aView {
    self.left = floorf(aView.width/2 - self.width/2);
}

- (void)rightAlignInView:(UIView*)aView margin:(CGFloat)margin {
    self.left = aView.width - self.width - margin;
}

@end
