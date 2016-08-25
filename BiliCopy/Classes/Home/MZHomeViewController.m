//
//  MZHomeViewController.m
//  BiliCopy
//
//  Created by 马忠 on 16/8/24.
//  Copyright © 2016年 马忠. All rights reserved.
//

#import "MZHomeViewController.h"
#import "MZLiveViewController.h"
#import "MZRecommendViewController.h"
#import "MZBangumiViewController.h"

@implementation MZHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupAllViewController];
}

- (void)setupAllViewController {
//    self.navigationController.navigationBar.hidden = YES;
    self.isfullScreen = YES;
    [self addChildVC:[MZLiveViewController new] withTitle:@"直播"];
    [self addChildVC:[MZRecommendViewController new] withTitle:@"推荐"];
    [self addChildVC:[MZBangumiViewController new] withTitle:@"番剧"];
}

- (void)addChildVC:(UIViewController *)vc withTitle:(NSString *)title {
    vc.title = title;
    UINavigationController *nv = [[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nv];
}

@end
