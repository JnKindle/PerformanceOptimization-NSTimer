//
//  NSTimer+JNTimer.m
//  NSTimer
//
//  Created by Jn on 2019/3/20.
//  Copyright © 2019年 JnKindle. All rights reserved.
//

#import "NSTimer+JNTimer.h"

@implementation NSTimer (JNTimer)

+ (NSTimer *)jn_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(void))block
{
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(jn_blockHandle:) userInfo:block repeats:YES];
}

+ (void)jn_blockHandle:(NSTimer *)timer
{
    void(^block)(void) = timer.userInfo;
    if (block) {
        block();
    }
}

@end
