//
//  CreateFoodTableViewController.h
//  GoodFood
//
//  Created by Hilary on 12/10/15.
//  Copyright (c) 2015 Hilary. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuantityTableViewController.h"
#import "FoodTypeTableViewController.h"

@interface FoodEntryViewController : UITableViewController<QuantityDelegate, FoodTypeDelegate>

-(void)setQuantityUnits:(NSString *)quantUnits;
-(void)setQuantityNumber:(NSNumber *)quantNum;
-(void)setFoodType:(NSString *)foodType;

@property (nonatomic, strong) NSNumber *quantityNumber;
@property (nonatomic, strong) NSString *quantityUnits;
@property (nonatomic, strong) NSString *foodType;

@property (weak, nonatomic) IBOutlet UILabel *postTitleLabel;


@property (weak, nonatomic) IBOutlet UITextField *postTitleTextField;


@property (weak, nonatomic) IBOutlet UILabel *restaurantNameLabel;


@property (weak, nonatomic) IBOutlet UITextField *restaurantNameTextField;

@property (weak, nonatomic) IBOutlet UILabel *restaurantAddressLabel;


@property (weak, nonatomic) IBOutlet UITextField *restaurantAddressTextField;


@property (weak, nonatomic) IBOutlet UILabel *contactNameNumLabel;

@property (weak, nonatomic) IBOutlet UILabel *numLabel;


@property (weak, nonatomic) IBOutlet UITextField *contactNameTextField;


@property (weak, nonatomic) IBOutlet UITextField *contactNumTextField;


@property (weak, nonatomic) IBOutlet UILabel *foodTypeLabel;


@property (weak, nonatomic) IBOutlet UILabel *quantityLabel;


@property (weak, nonatomic) IBOutlet UILabel *allergensLabel;

@property (weak, nonatomic) IBOutlet UITextField *allergensTextField;


@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;

@property (weak, nonatomic) IBOutlet UITextField *detailsTextField;



@end
