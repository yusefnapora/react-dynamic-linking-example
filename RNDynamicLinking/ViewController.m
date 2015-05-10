//
//  ViewController.m
//  RNDynamicLinking
//
//  Created by Yusef Napora on 5/9/15.
//  Copyright (c) 2015 Yusef Napora. All rights reserved.
//

#import "ViewController.h"
#import "ReactView.h"

@interface ViewController ()
@property (nonatomic, retain) ReactView *reactView;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.reactView = [[ReactView alloc] initWithFrame:self.view.bounds];
  [self.view addSubview:self.reactView];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
