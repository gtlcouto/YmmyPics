//
//  User.h
//  Ymmy Pics
//
//  Created by Diego Cichello on 2/2/15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import <Parse/Parse.h>

@interface User : PFUser<PFSubclassing>

+ (NSString *)parseClassName;

@property (retain) NSString *firstName;
@property (retain) NSString *lastName;
@property (retain) NSData *profilePictureMedium;
@property (retain) NSData *profilePictureSmall;



@end
