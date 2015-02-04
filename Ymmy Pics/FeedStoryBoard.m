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


#import "FeedStoryBoard.h"
#import <Parse/Parse.h>
#import <FacebookSDK/FacebookSDK.h>
#import "User.h"
#import "HeaderTableViewCell.h"
#import "DetailTableViewCell.h"

@interface FeedStoryBoard () <UITableViewDelegate, UITableViewDataSource, FBLoginViewDelegate>

@property NSArray * testArray;

@end

@implementation FeedStoryBoard

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // Kevin's Comment

    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];

    self.testArray = [[NSArray alloc]initWithObjects:@"one",@"two",@"three",@"four", @"five", @"six", nil];

    FBLoginView *loginView = [[FBLoginView alloc] initWithReadPermissions:@[@"public_profile", @"picture", @"email", @"user_friends",]];
    loginView.center = self.view.center;
    [self.view addSubview:loginView];
    // facebook login delegate
    loginView.delegate = self;
}

#pragma mark - TableView Delegate Methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"detailCell";
    DetailTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.customImageView.image = [UIImage imageNamed:@"riodejaneiro"];
    if (cell == nil){
        [NSException raise:@"headerView == nil.." format:@"No cells with matching CellIdentifier loaded from your storyboard"];
    }


    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.testArray.count;
}

-(UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    static NSString *CellIdentifier = @"headerCell";
    HeaderTableViewCell *headerView = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (headerView == nil){
        [NSException raise:@"headerView == nil.." format:@"No cells with matching CellIdentifier loaded from your storyboard"];
    }

    headerView.userNameLabel.text = self.testArray[section];
    headerView.backgroundColor = [UIColor cyanColor];
    return headerView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50.0;
}
@end
