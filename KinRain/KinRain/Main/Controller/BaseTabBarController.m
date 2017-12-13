//
//  LXBaseTabBarController.m
//  Yml
//
//  Created by 希 on 2017/6/12.
//  Copyright © 2017年 xi. All rights reserved.
//

#import "BaseTabBarController.h"
#import <KRHomeCategory/CTMediator+KRHome.h>
#import <BaseNavigationController.h>
#import "LXHomeController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

+ (void)initialize {
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    attrs[NSForegroundColorAttributeName] = RGB(102, 102, 102);
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = RGB(65, 208, 239);
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupChildViewController:[[CTMediator sharedInstance] homeViewController] withTitle:@"美购" withImage:@"home_defaulit" withSelectedImage:@"home_selected"];
    [self setupChildViewController:[[UIViewController alloc]init] withTitle:@"服务" withImage:@"fav_defaullt" withSelectedImage:@"fav_selected"];
    [self setupChildViewController:[[UIViewController alloc]init] withTitle:@"我的" withImage:@"me_defaullt" withSelectedImage:@"me_selected"];
    
    CGRect rect = CGRectMake(0, 0, SCREEN_WIDTH, 0.5);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context,RGB(245, 245, 245).CGColor);
    CGContextFillRect(context, rect);
    UIImage *lineImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc]init]];
    [[UITabBar appearance] setShadowImage:lineImg];
    self.tabBar.backgroundColor = [UIColor whiteColor];
}

- (void)setupChildViewController:(UIViewController *)vc withTitle:(NSString *)title withImage:(NSString *)image withSelectedImage:(NSString *)selectImage {
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    BaseNavigationController *navController = [[BaseNavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:navController];
}

@end
