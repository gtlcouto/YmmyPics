//
//  User.h
//  Ymmy Pics
//
//  Created by Diego Cichello on 2/2/15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import <Parse/Parse.h>

@interface User : PFObject<PFSubclassing>

+ (NSString *)parseClassName;

@property (retain) NSString *firstName;
@property (retain) NSString *lastName;
@property (retain) NSString *email;
@property (retain) NSData *profilePictureMedium;
@property (retain) NSData *profilePictureSmall;
@property (retain) NSString *username;
@property (retain) NSString *password;

@end
