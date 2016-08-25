//
//  MZTabBarViewController.m
//  BiliCopy
//
//  Created by 马忠 on 16/8/24.
//  Copyright © 2016年 马忠. All rights reserved.
//

#import "MZTabBarViewController.h"
#import "MZHomeViewController.h"
#import "MZZoneViewController.h"
#import "MZFollowViewController.h"
#import "MZDiscoverViewController.h"
#import "MZMeViewController.h"

@interface MZTabBarViewController ()

@end

@implementation MZTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSubViewControllers];
}

- (void)addChildVC:(UIViewController *)vc withImageNamed:(NSString *)image selectedImageNamed:(NSString *)selectedImage {
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    UINavigationController *nv = [[UINavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nv];
}

- (void)addSubViewControllers {
    [self addChildVC:[MZHomeViewController new] withImageNamed:@"home_home_tab" selectedImageNamed:@"home_home_tab_s"];
    [self addChildVC:[MZZoneViewController new] withImageNamed:@"home_category_tab" selectedImageNamed:@"home_category_tab_s"];
    [self addChildVC:[MZFollowViewController new] withImageNamed:@"home_attention_tab" selectedImageNamed:@"home_attention_tab_s"];
    [self addChildVC:[MZDiscoverViewController new] withImageNamed:@"home_discovery_tab" selectedImageNamed:@"home_discovery_tab_s"];
    [self addChildVC:[MZMeViewController new] withImageNamed:@"home_mine_tab" selectedImageNamed:@"home_mine_tab_s"];
}

@end
