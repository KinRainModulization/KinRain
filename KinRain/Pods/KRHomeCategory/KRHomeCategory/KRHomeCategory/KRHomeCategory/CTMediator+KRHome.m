//
//  CTMediator+KRHome.m
//  KRHomeCategory
//
//  Created by LX on 2017/12/12.
//  Copyright © 2017年 Ace. All rights reserved.
//

#import "CTMediator+KRHome.h"

@implementation CTMediator (KRHome)

- (UIViewController *)homeViewController {
//    NSDictionary *params = @{
//                             @"goodsId": goodsId,
//                             @"goodsName": goodsName
//                             };
    return [self performTarget:@"KRHome" action:@"HomeViewController" params:nil shouldCacheTarget:NO];
}

@end
