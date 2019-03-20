//
//  FourController.m
//  NSTimer
//
//  Created by Jn on 2019/3/20.
//  Copyright © 2019年 JnKindle. All rights reserved.
//

#import "FourController.h"
#import "NSTimer+JNTimer.h"

@interface FourController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation FourController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
#pragma mark - 第四种
    
    /** 只有10.0之后才支持的
    __weak typeof(self) weakSelf = self;
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        __strong typeof(self) strongSelf = weakSelf;
        [strongSelf test];
    }];
     */
    
    
    __weak typeof(self) weakSelf = self;
    _timer = [NSTimer jn_scheduledTimerWithTimeInterval:1.0 repeats:YES block:^{
        __strong typeof(self) strongSelf = weakSelf;
        [strongSelf test];
    }];
    
}

- (void)test
{
    NSLog(@"test");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)dealloc{
    NSLog(@"%@ dealloc",self);
    [_timer invalidate];
    _timer = nil;
}


@end
