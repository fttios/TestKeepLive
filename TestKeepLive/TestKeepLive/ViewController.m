//
//  ViewController.m
//  TestKeepLive
//
//  Created by tantan fan on 2018/9/14.
//  Copyright © 2018年 tantan fan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *label;

@property (strong, nonatomic) NSTimer *testTimer;

@end

static long long count = 0;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label = [[UILabel alloc]init];
    self.label.backgroundColor = [UIColor lightGrayColor];
    self.label.font = [UIFont systemFontOfSize:12];
    [self.label sizeToFit];
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.label];
    self.label.center = self.view.center;
    self.label.bounds = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40);
    self.label.text = [NSString stringWithFormat:@"%lld", count];
    [self initTimer];
}

- (void)initTimer {
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countChange) userInfo:nil repeats:true];
    self.testTimer = timer;
}

- (void)countChange {
    count ++;
    self.label.text = [NSString stringWithFormat:@"%lld", count];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
