//
//  ViewController.m
//  RPAnchor
//
//  Created by rp.wang on 2019/9/2.
//  Copyright © 2019 西安博信信息科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Anchor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"demo";
    
    //--------------------- redView
    UIView *redView = [[UIView alloc] init];
    redView
    .rp_addView(self.view)
    .rp_top(0,self.view.safeTop)
    .rp_left(0,self.view.left)
    .rp_right(0,self.view.right)
    .rp_bottom(0,self.view.safeBottom);
    redView.backgroundColor = UIColor.redColor;
    //--------------------- blueView
    UIView *blueView = [[UIView alloc] init];
    blueView
    .rp_addView(redView)
    .rp_top(0,self.view.safeTop)
    .rp_left(90,redView.left)
    .rp_greaterWidth(80)
    .rp_greaterHeight(80);
    blueView.backgroundColor = UIColor.blueColor;
    //--------------------- greenBtn
    UIButton *greenBtn = [[UIButton alloc] init];
    greenBtn
    .rp_addView(redView)
    .rp_centerX(0,redView.centerX)
    .rp_centerY(0,redView.centerY)
    .rp_size(180,45);
    greenBtn.backgroundColor = UIColor.greenColor;
    //--------------------- orangeView
    UIView *orangeView = [[UIView alloc] init];
    orangeView
    .rp_addView(redView)
    .rp_centerX(0,redView.centerX)
    .rp_multiplierWidth(0.7,redView.width)
    .rp_top(20,blueView.bottomAnchor)
    .rp_height(45);
    orangeView.backgroundColor = UIColor.orangeColor;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [orangeView updateConstraintsIfNeeded];
    });
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIViewController *grilsViewm = [[NSClassFromString(@"GrilsViewController") alloc] init];
    [self.navigationController pushViewController:grilsViewm animated:true];
}
@end
