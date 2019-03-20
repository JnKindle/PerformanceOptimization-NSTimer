//
//  NSTimer+JNTimer.h
//  NSTimer
//
//  Created by Jn on 2019/3/20.
//  Copyright © 2019年 JnKindle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (JNTimer)

+ (NSTimer *)jn_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(void))block;

@end
