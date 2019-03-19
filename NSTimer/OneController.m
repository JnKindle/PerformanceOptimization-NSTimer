//
//  OneController.m
//  NSTimer
//
//  Created by Jn_Kindle on 2019/3/19.
//  Copyright © 2019年 JnKindle. All rights reserved.
//

#import "OneController.h"

@interface OneController ()

@property (nonatomic, strong) NSTimer *timer;


@end

@implementation OneController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(test) userInfo:nil repeats:YES];
    
    
}

- (void)test
{
    NSLog(@"test");
}

#pragma mark - 第一种
-(void)didMoveToParentViewController:(UIViewController *)parent
{
    if (!parent) {
        NSLog(@"%@ delloc",self);
        [_timer invalidate];
        _timer = nil;
    }
}

- (void)dealloc
{
    /*
    NSLog(@"%@ delloc",self);
    [_timer invalidate];
    _timer = nil;
     */
}

@end
