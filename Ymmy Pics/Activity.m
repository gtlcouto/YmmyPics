//
//  Activity.m
//  Ymmy Pics
//
//  Created by Diego Cichello on 2/2/15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import "Activity.h"

@implementation Activity



@dynamic toUser;
@dynamic fromUser;
@dynamic createdAt;
@dynamic updatedAt;
@dynamic media;
@dynamic content;
@dynamic type;

+ (void)load
{
    [self registerSubclass];
}

+ (NSString *)parseClassName
{
    return @"Activity";
}


@end
