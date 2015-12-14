//
//  Listing.m
//  GoodFood
//
//  Created by Anthony Stewart on 12/14/15.
//  Copyright © 2015 Hilary. All rights reserved.
//

#import "Listing.h"

@implementation Listing

@dynamic businessName;
@dynamic location;
@dynamic quantity;
@dynamic contactName;
@dynamic expiration;
@dynamic phoneNo;
@dynamic address;
@dynamic title;
@dynamic allergies;

static Listing *newListing = nil;

+ (NSString *)parseClassName{
    return @"Listing";
}

+ (void)load {
    [self registerSubclass];
}

@end
