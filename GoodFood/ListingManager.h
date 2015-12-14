//
//  ListingManager.h
//  GoodFood
//
//  Created by Anthony Stewart on 12/14/15.
//  Copyright © 2015 Hilary. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Listing.h"
@interface ListingManager : NSObject

+ (id)Manager;

- (void)getSortedListingsWithinFiftyMiles:(void(^)(NSArray *listings))completion;

@end
