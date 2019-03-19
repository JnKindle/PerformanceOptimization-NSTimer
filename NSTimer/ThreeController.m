//
//  ThreeController.m
//  NSTimer
//
//  Created by Jn_Kindle on 2019/3/19.
//  Copyright © 2019年 JnKindle. All rights reserved.
//

#import "ThreeController.h"
#import "TestProxy.h"

@interface ThreeController ()
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) TestProxy *testProxy;
@end

@implementation ThreeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
#pragma mark - 第三种
    _testProxy = [TestProxy alloc];
    _testProxy.target = self;
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:_testProxy selector:@selector(test) userInfo:nil repeats:YES];
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
