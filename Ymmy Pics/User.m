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
@dynamic facebookId;


<<<<<<< HEAD

=======
>>>>>>> 98fc91753a11aa8260a13544cfa6c69c926e66a7
+ (void)load
{
    [self registerSubclass];
}



+ (User*) currentUser
{
    return (User*)[PFUser user];
}

<<<<<<< HEAD
+ (void) retrieveFollowedPeopleMedias:(void (^)(NSArray *))complete
{
    PFQuery *query = [PFQuery queryWithClassName:@"Activity"];
    [query whereKey:@"fromUser" equalTo:[User currentUser]];
    [query whereKey:@"type" equalTo:@"FOLLOW"];

    PFQuery *userQuery = [PFQuery queryWithClassName:@"Media"];
    [userQuery whereKey:@"mediaOwner" matchesKey:@"fromUser" inQuery:query];
    [userQuery addAscendingOrder:@"createdAt"];

    NSArray *mediaFromFollowedPeople  = [userQuery findObjects];

    complete(mediaFromFollowedPeople);


}

=======
>>>>>>> 98fc91753a11aa8260a13544cfa6c69c926e66a7







@end
