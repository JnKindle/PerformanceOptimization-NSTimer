//
//  TestProxy.h
//  NSTimer
//
//  Created by Jn_Kindle on 2019/3/19.
//  Copyright © 2019年 JnKindle. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface TestProxy : NSProxy

@property (nonatomic, weak) id target;

@end

NS_ASSUME_NONNULL_END
