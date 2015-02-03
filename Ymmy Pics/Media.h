//
//  Media.h
//  Ymmy Pics
//
//  Created by Diego Cichello on 2/2/15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import <Parse/Parse.h>

@interface Media : PFObject<PFSubclassing>

+ (NSString *)parseClassName;

@property NSData *mediaFile;
@property NSString *caption;

@end
