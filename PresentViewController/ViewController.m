//
//  ViewController.m
//  PresentViewController
//
//  Created by ppzc on 16/8/11.
//  Copyright © 2016年 ppzc. All rights reserved.
//

#import "ViewController.h"
#import "PresentViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [button setTitle:@"click" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(showPresentViewWithAnnotation) forControlEvents:UIControlEventTouchUpInside];
}

- (void)showPresentView{
    PresentViewController *presentViewController = [PresentViewController new];
    self.modalPresentationStyle = UIModalPresentationPageSheet;

    presentViewController.modalTransitionStyle = UIModalTransitionStylePartialCurl;//从下向上卷
    presentViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;//default
    presentViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;//消失
    presentViewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;//180度向里面旋转
    [self presentViewController:presentViewController animated:YES completion:^{
        ;
    }];
}

- (void)showPresentViewWithAnnotation{
    CATransition *animation = [CATransition animation];
    animation.duration = 0.5;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
//    常見的轉換類型（type）：
//    kCATransitionFade               淡出
//    kCATransitionMoveIn          覆盖原图
//    kCATransitionPush               推出
//    kCATransitionReveal          底部显出来
    
    
//    pageCurl   向上翻一页
//    pageUnCurl 向下翻一页
//    rippleEffect 滴水效果
//    suckEffect 收缩效果，如一块布被抽走
//    cube 立方体效果
//    oglFlip 上下翻转效果
    animation.type = @"cube";
    
    animation.subtype = kCATransitionFromLeft;
    [self.view.window.layer addAnimation:animation forKey:nil];
    
    PresentViewController *presentViewControlller = [PresentViewController new];
    [self presentViewController:presentViewControlller animated:NO completion:^{
        ;
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
