//
//  PresentViewController.m
//  PresentViewController
//
//  Created by ppzc on 16/8/11.
//  Copyright © 2016年 ppzc. All rights reserved.
//

#import "PresentViewController.h"

@implementation PresentViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [button setTitle:@"click" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(showPresentViewWithAnnotation) forControlEvents:UIControlEventTouchUpInside];
}

- (void)showPresentViewWithAnnotation{
    CATransition *transition = [CATransition animation];
    transition.duration = 0.5;
    transition.timingFunction = UIViewAnimationCurveEaseInOut;
    transition.type = @"cube";
    transition.subtype = kCATransitionFromLeft;
    
    [self.view.window.layer addAnimation:transition forKey:nil];
    [self dismissViewControllerAnimated:YES completion:^{
        ;
    }];
}

@end
