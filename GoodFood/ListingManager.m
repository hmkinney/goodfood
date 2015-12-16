//
//  ListingManager.m
//  GoodFood
//
//  Created by Anthony Stewart on 12/14/15.
//  Copyright © 2015 Hilary. All rights reserved.
//

#import "ListingManager.h"

@implementation ListingManager

+ (id)Manager {
    static ListingManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (void)getSortedListingsWithinFiftyMiles:(void(^)(NSArray *listings))completion{
    
    PFGeoPoint *pt = [PFGeoPoint geoPointWithLatitude:40.0 longitude:-30.0];
    
    PFQuery *query = [PFQuery queryWithClassName:@"Listing"];
    [query whereKey:@"location" nearGeoPoint:pt withinMiles:50];
    NSArray *allListings =  [query findObjects];
    completion(allListings);
    
//    [PFGeoPoint geoPointForCurrentLocationInBackground:^(PFGeoPoint *geoPoint, NSError *error) {
//        if (!error) {
//            // do something with the new geoPoint
//            NSLog(@"GeoPt: %@",geoPoint.description);
//            
//            
//            completion(allListings);
//        }else{
//            NSLog(error.description);
//        }
//    }];
}

//- (void)getSortedListingsWithinFiftyMiles:(void(^)(NSArray *listings))completion{
//    [PFGeoPoint geoPointForCurrentLocationInBackground:^(PFGeoPoint *geoPoint, NSError *error) {
//        if (!error) {
//            // do something with the new geoPoint
//            NSLog(@"GeoPt: %@",geoPoint.description);
//            
//            PFQuery *query = [PFQuery queryWithClassName:@"Listing"];
//            [query whereKey:@"location" nearGeoPoint:geoPoint withinMiles:50];
//            NSArray *allListings =  [query findObjects];
//            completion(allListings);
//        }else{
//            NSLog(error.description);
//        }
//    }];
//}

- (id)init {
    if (self = [super init]) {
        
    }
    return self;
}

@end
