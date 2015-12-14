//
//  Listing.h
//  GoodFood
//
//  Created by Anthony Stewart on 12/14/15.
//  Copyright © 2015 Hilary. All rights reserved.
//

#import <Parse/Parse.h>

@interface Listing : PFObject<PFSubclassing>

@property (nonatomic, strong) NSString *businessName;
@property (nonatomic, strong) PFGeoPoint *location;
@property (nonatomic, strong) NSString *quantity;
@property (nonatomic, strong) NSString *contactName;
@property (nonatomic, strong) NSDate *expiration;
@property (nonatomic, strong) NSString *phoneNo;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *allergies;

+ (NSString *)parseClassName;


@end