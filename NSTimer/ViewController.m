//
//  ViewController.m
//  NSTimer
//
//  Created by Jn_Kindle on 2019/3/19.
//  Copyright © 2019年 JnKindle. All rights reserved.
//

#import "ViewController.h"
#import "OneController.h"
#import "TwoController.h"
#import "ThreeController.h"
#import "FourController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)goNextOnePage:(id)sender {
    #pragma mark - 第一种
    OneController *vc = [[OneController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)goNextTwoPage:(id)sender {
    #pragma mark - 第二种
    TwoController *vc = [[TwoController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)goNextThreePage:(id)sender {
    #pragma mark - 第三种
    ThreeController *vc = [[ThreeController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)goNextFourPage:(id)sender {
    #pragma mark - 第四种
    FourController *vc = [[FourController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
