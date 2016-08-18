//
//  NSObject+Swizzling.m
//  SwizzlingDemo
//
//  Created by Shaochong Du on 16/5/25.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import "NSObject+Swizzling.h"

@implementation NSObject (Swizzling)

+ (void)swizzleSelector:(SEL)originalSelector withSwizzledSelector:(SEL)swizzledSelector
{
    Class class = [self class];
    
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    
    //首先动态添加方法，实现是被交换的方法，返回值表示添加成功还是失败
    BOOL didAddMehod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    //如果成功，说明类中不存在这个方法的实现
    //将被交换方法的实现替换到这个并不存在的实现
    if (didAddMehod) {
        class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

@end
