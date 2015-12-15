//
//  CreateFoodTableViewController.h
//  GoodFood
//
//  Created by Hilary on 12/10/15.
//  Copyright (c) 2015 Hilary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateFoodTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *postTitleLabel;


@property (weak, nonatomic) IBOutlet UITextField *postTitleTextField;

NSString *postTitle = self.postTitleTextField.text;


@property (weak, nonatomic) IBOutlet UILabel *restaurantNameLabel;


@property (weak, nonatomic) IBOutlet UITextField *restaurantNameTextField;

NSString *restaurantName = self.restaurantNameTextField


@property (weak, nonatomic) IBOutlet UILabel *restaurantAddressLabel;


@property (weak, nonatomic) IBOutlet UITextField *restaurantAddressTextField;

NSString *restaurantAddress = self.restaurantAddressTextField.text;




@property (weak, nonatomic) IBOutlet UILabel *contactNameNumLabel;

@property (weak, nonatomic) IBOutlet UILabel *numLabel;


@property (weak, nonatomic) IBOutlet UITextField *contactNameTextField;

NSString *contactName = self.contactNameTextField.text;



@property (weak, nonatomic) IBOutlet UITextField *contactNumTextField;

NSString *contactNum = self.contactNumTextField.text;




@property (weak, nonatomic) IBOutlet UILabel *foodTypeLabel;


@property (weak, nonatomic) IBOutlet UILabel *quantityLabel;


@property (weak, nonatomic) IBOutlet UILabel *allergensLabel;

@property (weak, nonatomic) IBOutlet UITextField *allergensTextField;

NSString *allergens = self.allergensTextField.text;



@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;

@property (weak, nonatomic) IBOutlet UITextField *detailsTextField;

NSString *details = self.detailsTextField.text;




@end
