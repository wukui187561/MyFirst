//
//  ViewController.m
//  动画
//
//  Created by 李国峰 on 16/6/3.
//  Copyright © 2016年 李国峰. All rights reserved.
//

#import "ViewController.h"
#import "NEWView.h"
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NEWView *VIew = [[NEWView alloc]initWithFrame:CGRectMake(100, 100, 300, 300)];
    VIew.backgroundColor = [UIColor brownColor];
    [self.view addSubview:VIew];
}


- (IBAction)click:(id)sender {
    
    
    NSLog(@"这个button没用  本来想写别的了的");

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
