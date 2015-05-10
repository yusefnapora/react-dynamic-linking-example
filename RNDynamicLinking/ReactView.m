//
//  ReactView.m
//  RNDynamicLinking
//
//  Created by Yusef Napora on 5/9/15.
//  Copyright (c) 2015 Yusef Napora. All rights reserved.
//
@import React;

#import "ReactView.h"

@implementation ReactView

- (instancetype) initWithFrame:(CGRect)frame {
  if (!(self = [super initWithFrame:frame])) {
    return nil;
  }
  
  NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle"];
  // For production use, this `NSURL` could instead point to a pre-bundled file on disk:
  //
  //   NSURL *jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
  //
  // To generate that file, run the curl command and add the output to your main Xcode build target:
  //
  //   curl http://localhost:8081/index.ios.bundle -o main.jsbundle
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName: @"SimpleApp"
                                                   launchOptions:nil];
  [self addSubview:rootView];
  [rootView setFrame:self.bounds];
  
  return self;
}

@end
