//
//  ALButton.m
//  自动布局
//
//  Created by Allen on 16/7/19.
//  Copyright © 2016年 张其锋. All rights reserved.
//

#import "ALButton.h"

@interface ALButton ()

@property(nonatomic,weak)UILabel *label;

@end

@implementation ALButton
//重写init
- (instancetype)init
{
    self = [super init];
    if (self) {
        UILabel *label = [[UILabel alloc]init];
        
        self.label = label;
        
        [self addSubview:label];
        
        //添加约束
        self.label.translatesAutoresizingMaskIntoConstraints = NO;
        //上
        NSLayoutConstraint *labelT = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:20];
        
        [self addConstraint:labelT];
        
       //左
        NSLayoutConstraint *labelL = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1 constant:20];
        
        [self addConstraint:labelL];
        
        NSLayoutConstraint *labelM = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1 constant:-20];
        
        [self addConstraint:labelM];

        NSLayoutConstraint *labelR = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20];
        
        [self addConstraint:labelR];

    }
    return self;
}
//文字
-(void)setTitle:(NSString *)title forState:(UIControlState)state
{
    self.label.text = title;
}
//调用get方法时 会使用
-(UILabel *)titleLabel
{
    return self.label;
}
//字体颜色
-(void)setTitleColor:(UIColor *)color forState:(UIControlState)state
{
    
    self.label.textColor = color;
    
}

@end
