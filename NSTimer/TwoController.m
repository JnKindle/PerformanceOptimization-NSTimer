//
//  TwoController.m
//  NSTimer
//
//  Created by Jn_Kindle on 2019/3/19.
//  Copyright © 2019年 JnKindle. All rights reserved.
//

#import "TwoController.h"
#import <objc/runtime.h>

@interface TwoController ()
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) id target;
@end

@implementation TwoController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    #pragma mark - 第二种
    _target = [NSObject new];
    class_addMethod([_target class], @selector(test), class_getMethodImplementation([self class], @selector(test)), "v@:");
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:_target selector:@selector(test) userInfo:nil repeats:YES];
}

- (void)test
{
    NSLog(@"test");
}




-(void)dealloc{
    NSLog(@"%@ dealloc",self);
    [_timer invalidate];
    _timer = nil;
}

@end
