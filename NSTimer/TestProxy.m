//
//  TestProxy.m
//  NSTimer
//
//  Created by Jn_Kindle on 2019/3/19.
//  Copyright © 2019年 JnKindle. All rights reserved.
//

#import "TestProxy.h"

@implementation TestProxy

-(NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    return [self.target methodSignatureForSelector:sel];
}

-(void)forwardInvocation:(NSInvocation *)invocation
{
    [invocation invokeWithTarget:self.target];
}

@end
