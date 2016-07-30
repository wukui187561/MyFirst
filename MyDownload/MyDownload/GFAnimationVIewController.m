//
//  GFAnimationVIewController.m
//  动画
//
//  Created by 李国峰 on 16/6/3.
//  Copyright © 2016年 李国峰. All rights reserved.
//

#import "GFAnimationVIewController.h"
#import "GFWaterView.h"

@interface GFAnimationVIewController ()

@end
@implementation GFAnimationVIewController

-(void)viewDidLoad{
    [super viewDidLoad];
   
    
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(clickAnimation:) userInfo:nil repeats:YES];
    
}
- (IBAction)clickAnimation:(id)sender {
    __block GFWaterView *waterView = [[GFWaterView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    
    waterView.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:waterView];
    //    self.waterView = waterView;
    
    
    [UIView animateWithDuration:2 animations:^{
        
        waterView.transform = CGAffineTransformScale(waterView.transform, 2, 2);
        
        waterView.alpha = 0;
        
    } completion:^(BOOL finished) {
        [waterView removeFromSuperview];
    }];
    
}


@end
