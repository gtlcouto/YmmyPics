//
//  User.m
//  Ymmy Pics
//
//  Created by Diego Cichello on 2/2/15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import "User.h"

@implementation User

@dynamic firstName;
@dynamic lastName;
@dynamic email;
@dynamic profilePictureMedium;
@dynamic profilePictureSmall;
@dynamic username;
@dynamic password;


+ (void)load
{
    [self registerSubclass];
}

+ (NSString *)parseClassName
{
    return @"User";
}








@end
