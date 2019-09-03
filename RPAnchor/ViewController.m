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
    .rp_safeAreaTop(0,self.view,rpSafeTop)
    .rp_left(0,self.view,rpLeft)
    .rp_right(0,self.view,rpRight)
    .rp_safeAreaBottom(0,self.view,rpSafeBottom);
    redView.backgroundColor = UIColor.redColor;
    //--------------------- blueView
    UIView *blueView = [[UIView alloc] init];
    blueView
    .rp_addView(redView)
    .rp_top(70,redView,rpTop)
    .rp_left(90,redView,rpLeft)
    .rp_greaterWidth(80)
    .rp_greaterHeight(80);
    blueView.backgroundColor = UIColor.blueColor;
    //--------------------- greenBtn
    UIButton *greenBtn = [[UIButton alloc] init];
    greenBtn
    .rp_addView(redView)
    .rp_centerX(0,redView,rpCenterX)
    .rp_centerY(0,redView,rpCenterY)
    .rp_size(180,45);
    greenBtn.backgroundColor = UIColor.greenColor;
    //--------------------- orangeView
    UIView *orangeView = [[UIView alloc] init];
    orangeView
    .rp_addView(redView)
    .rp_centerX(0,redView,rpCenterX)
    .rp_multiplierWidth(0.7,redView,rpWidth)
    .rp_top(20,blueView,rpBottom)
    .rp_height(45);
    orangeView.backgroundColor = UIColor.orangeColor;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIViewController *grilsViewm = [[NSClassFromString(@"GrilsViewController") alloc] init];
    [self.navigationController pushViewController:grilsViewm animated:true];
}
@end
