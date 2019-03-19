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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)goNextOnePage:(id)sender {
    OneController *vc = [[OneController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)goNextTwoPage:(id)sender {
    TwoController *vc = [[TwoController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)goNextThreePage:(id)sender {
    ThreeController *vc = [[ThreeController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
