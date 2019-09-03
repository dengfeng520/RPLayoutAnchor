//
//  GrilsViewController.m
//  RPAnchor
//
//  Created by rp.wang on 2019/9/3.
//  Copyright © 2019 西安博信信息科技有限公司. All rights reserved.
//

#import "GrilsViewController.h"
#import "UIView+Anchor.h"

@interface GrilsViewController ()

@end

@implementation GrilsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    self.title = @"gril demo";
    
    UIImageView *fristGrilImg = [[UIImageView alloc] init];
    fristGrilImg.rp_addView(self.view)
    .rp_safeAreaTop(20,self.view,rpSafeTop)
    .rp_centerX(0,self.view,rpCenterX)
    .rp_height(250)
    .rp_multiplierWidth(1.45,fristGrilImg,rpHeight);
    fristGrilImg.image = [UIImage imageNamed:@"one_gril"];
    fristGrilImg.backgroundColor = UIColor.redColor;
    
    UIImageView *secondGrilImg = [[UIImageView alloc] init];
    [self.view addSubview:secondGrilImg];
    secondGrilImg.rp_config()
    .rp_top(10,fristGrilImg,rpBottom)
    .rp_centerX(0,self.view,rpCenterX)
    .rp_width(280)
    .rp_multiplierHeight(1.46,secondGrilImg,rpWidth);
    secondGrilImg.image = [UIImage imageNamed:@"second_gril"];
}



@end
