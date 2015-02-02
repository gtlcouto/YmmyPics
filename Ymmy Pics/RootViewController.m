//
//  ViewController.m
//  Ymmy Pics
//
//  Created by Gustavo Couto on 2015-02-02.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//
/* Feb 2, 2015 - Added Parse Frameworks
 */


#import "RootViewController.h"
#import <Parse/Parse.h>

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // Kevin's Comment

    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
}

@end
