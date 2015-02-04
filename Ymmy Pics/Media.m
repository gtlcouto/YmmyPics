//
//  Media.m
//  Ymmy Pics
//
//  Created by Diego Cichello on 2/2/15.
//  Copyright (c) 2015 Gustavo Couto. All rights reserved.
//

#import "Media.h"

@implementation Media

@dynamic mediaFile;
@dynamic caption;
<<<<<<< HEAD
@dynamic mediaOwner;
=======
>>>>>>> 98fc91753a11aa8260a13544cfa6c69c926e66a7

+ (void)load
{
    [self registerSubclass];
}

+ (NSString *)parseClassName
{
    return @"Media";
}

<<<<<<< HEAD
+(void)addMedia:(PFFile *)mediaFile withCaption:(NSString *)caption;
{
    Media *media = [Media object];
    media.mediaFile = mediaFile;
    media.mediaOwner = [User currentUser];
    media.caption = caption;

    [media save];

}


=======
>>>>>>> 98fc91753a11aa8260a13544cfa6c69c926e66a7


@end
