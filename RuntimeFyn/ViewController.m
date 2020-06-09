//
//  ViewController.m
//  RuntimeFyn
//
//  Created by FuYanan on 2020/6/8.
//  Copyright © 2020 FuYanan. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[Person new] sendMessAge:@"hello"];
}


@end
