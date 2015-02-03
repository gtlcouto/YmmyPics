//
//  ViewController.m
//  Ymmy Pics
//
//  Created by Gustavo Couto on 2015-02-02.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//
/*
 ChangeLog
 Feb 2, 2015 - Added Parse Frameworks
 Feb 2, 2015 - Added Facebook SDK
 */


#import "RootViewController.h"
#import <Parse/Parse.h>
#import <FacebookSDK/FacebookSDK.h>

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // Kevin's Comment

//    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
//    testObject[@"foo"] = @"bar";
//    [testObject saveInBackground];

    FBLoginView *loginView = [[FBLoginView alloc] init];
    loginView.center = self.view.center;
    [self.view addSubview:loginView];
}

@end
