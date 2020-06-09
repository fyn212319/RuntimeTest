//
//  Person.m
//  RuntimeFyn
//
//  Created by FuYanan on 2020/6/8.
//  Copyright © 2020 FuYanan. All rights reserved.
//

#import "Person.h"

@implementation Person
//1、动态方法解析
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    return YES;
}

//2、快速转发

//testtestt

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return [super forwardingTargetForSelector:aSelector];
}

//3、慢速转发
//一方法签名， 二消息转发
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [NSMethodSignature  signatureWithObjCTypes:@""];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    [super forwardInvocation:anInvocation];
}

//防止App崩溃
- (void)doesNotRecognizeSelector:(SEL)aSelector {
    NSLog(@"找不到方法");
}

- (void)test{
    NSLog(@"测试代码");
}

@end
