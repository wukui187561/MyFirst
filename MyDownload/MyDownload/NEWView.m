//
//  NEWView.m
//  动画
//
//  Created by 李国峰 on 16/6/3.
//  Copyright © 2016年 李国峰. All rights reserved.
//

#import "NEWView.h"

@implementation NEWView


-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
#warning 超哥  你这个endAngle  和  starAngle  修改这个 就可以改变这个圆的角度 你需要动态计算 初中数学题 我给忘了  你自己搞吧  主要是计算角度  怎么算我不会了  你可以适当的改动 一下看看效果怎么样
        
        // 半径
        CGFloat rabius = 60;
        // 开始角
        CGFloat startAngle = 3*M_PI / 2;
        
        // 中心点
        CGPoint point = CGPointMake(150, 150);  // 中心店我手动写的,你看看怎么弄合适 自己在搞一下
        
        // 结束角
        CGFloat endAngle = 2*M_PI;
        
        
        CGFloat starAngle2 = endAngle;
        CGFloat endAngle2 = M_PI;
        
        CGFloat starAngle3 = endAngle2;
        CGFloat endAngle3 = 4 * M_PI/3;
        
        CGFloat starAngle4 = endAngle3;
        CGFloat endAngle4 = 3 * M_PI / 2;
        
        
        CAShapeLayer *layer = [[CAShapeLayer alloc]init];
        CAShapeLayer *layer2 = [[CAShapeLayer layer]init];
        CAShapeLayer *layer3 = [[CAShapeLayer layer]init];
        CAShapeLayer *layer4 = [[CAShapeLayer layer]init];
        
        
        /**
         *  路径
         *
         *  center:弧线中心点的坐标
         *  radius:弧线所在圆的半径
         *  startAngle:弧线开始的角度值
         *  endAngle:弧线结束的角度值
         *  clockwise:是否顺时针画弧线
         */
        
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:point radius:rabius startAngle:startAngle endAngle:endAngle clockwise:YES];
        
        UIBezierPath *path2 = [UIBezierPath bezierPathWithArcCenter:point radius:rabius startAngle:starAngle2 endAngle:endAngle2 clockwise:YES];
        
        UIBezierPath *path3 = [UIBezierPath bezierPathWithArcCenter:point radius:rabius startAngle:starAngle3 endAngle:endAngle3 clockwise:YES];
        
        UIBezierPath *path4 = [UIBezierPath bezierPathWithArcCenter:point radius:rabius startAngle:starAngle4 endAngle:endAngle4 clockwise:YES];
        
        
        layer.path = path.CGPath;       // 添加路径 下面三个同理
        layer2.path = path2.CGPath;
        layer3.path = path3.CGPath;
        layer4.path = path4.CGPath;
        
        layer.strokeColor = [UIColor redColor].CGColor; //  添加外围颜色
        layer.fillColor = [UIColor clearColor].CGColor; // 填充颜色设置为 clear 要不内部就有填充了
        layer.lineWidth = 20;                           // 宽度10  随便修改
        
        layer2.strokeColor = [UIColor greenColor].CGColor;
        layer2.fillColor = [UIColor clearColor].CGColor;
        layer2.lineWidth = 20;
        
        layer3.strokeColor = [UIColor blueColor].CGColor;
        layer3.fillColor = [UIColor clearColor].CGColor;
        layer3.lineWidth = 20;
        
        layer4.strokeColor = [UIColor yellowColor].CGColor;
        layer4.fillColor = [UIColor clearColor].CGColor;
        layer4.lineWidth = 20;
        
        
        // 添加到view 的layer 图层中  你要是自定义View  上面拷贝 直接添加到你自定VIew的layer 图层中就OK
        [self.layer addSublayer:layer];
        [self.layer addSublayer:layer2];
        [self.layer addSublayer:layer3];
        [self.layer addSublayer:layer4];
    }
    return self;
}


@end
