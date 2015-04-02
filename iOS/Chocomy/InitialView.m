//
//  InitialView.m
//  Chocomy
//
//  Created by Andrew Medvedev on 02.04.15.
//  Copyright (c) 2015 Andrew Medvedev. All rights reserved.
//

#import "InitialView.h"

@interface InitialView ()

@end

@implementation InitialView

- (void)viewDidLoad {
    [super viewDidLoad];
    [self moveView:_rope toPoint:CGPointMake(_rope.center.x, _rope.center.y+10) withDuration:0.2 andDelay:0.3];
    [self moveView:_roller toPoint:CGPointMake(_roller.center.x, -390) withDuration:0.3 andDelay:0.5];
    [self moveView:_rope toPoint:CGPointMake(_rope.center.x, -390) withDuration:0.2 andDelay:0.5];
}

#pragma mark Animations

- (void) moveView:(UIView*) view toPoint:(CGPoint) to withDuration:(CGFloat) duration andDelay:(CGFloat) delay
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:duration];
    [UIView setAnimationDelay:delay];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    view.center = to;
    [UIView commitAnimations];
}


- (void) fadeView:(UIView*) view toValue:(CGFloat) value withDuration:(CGFloat) duration andDelay:(CGFloat) delay
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:duration];
    [UIView setAnimationDelay:delay];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    view.alpha = value;
    [UIView commitAnimations];
}

@end
