//
//  ChangeNavColorViewController.m
//  LGW_NavigationBar
//
//  Created by Lilong on 16/4/19.
//  Copyright © 2016年 第七代目. All rights reserved.
//

#import "ChangeNavColorViewController.h"

@interface ChangeNavColorViewController ()

@end

@implementation ChangeNavColorViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //设置UINavigationBar背景颜色
    [self.navigationController.navigationBar setBackgroundImage:[self createImageWithColor:[UIColor colorWithRed:0.667 green:0.557 blue:0.408 alpha:1.000]] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController.navigationBar setBackgroundImage:[self createImageWithColor:[UIColor redColor]] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
}



- (UIImage*) createImageWithColor:(UIColor*) color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
