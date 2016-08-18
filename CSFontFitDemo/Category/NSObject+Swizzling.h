//
//  NSObject+Swizzling.h
//  SwizzlingDemo
//
//  Created by Shaochong Du on 16/5/25.
//  Copyright © 2016年 Shaochong Du. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (Swizzling)

//  交换两个方法的IMP实现
+ (void)swizzleSelector:(SEL)originalSelector withSwizzledSelector:(SEL)swizzledSelector;

@end
