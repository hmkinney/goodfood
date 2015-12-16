//
//  FoodTypeTableViewController.h
//  GoodFood
//
//  Created by Hilary on 12/14/15.
//  Copyright (c) 2015 Hilary. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FoodTypeDelegate

-(void)setFoodType:(NSString *)foodType;
@end

@interface FoodTypeTableViewController : UITableViewController


@property (weak, nonatomic) IBOutlet UILabel *selectTypeLabel;

@property (weak, nonatomic) IBOutlet UILabel *readyToEatLabel;


@property (weak, nonatomic) IBOutlet UILabel *frozenLabel;


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nonPerishableLabel;

@property (weak, nonatomic) IBOutlet UILabel *produceLabel;


@property (weak, nonatomic) IBOutlet UILabel *bakedGoodsLabel;


@property (weak, nonatomic) IBOutlet UILabel *doneLabel;


@property (weak, nonatomic) IBOutlet UILabel *foodTypeInfoLabel;



@end
