//
//  CreateFoodTableViewController.m
//  GoodFood
//
//  Created by Hilary on 12/10/15.
//  Copyright (c) 2015 Hilary. All rights reserved.
//

#import "FoodEntryViewController.h"
#import "Listing.h"

@interface FoodEntryViewController ()

@end

@implementation FoodEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 14) {
        NSLog(@"Post button tapped");
        NSString *details = self.detailsTextField.text;
        NSString *allergens = self.allergensTextField.text;
        NSString *contactNum = self.contactNumTextField.text;
        NSString *contactName = self.contactNameTextField.text;
        NSString *restaurantAddress = self.restaurantAddressTextField.text;
        NSString *restaurantName = self.restaurantNameTextField.text;
        NSString *postTitle = self.postTitleTextField.text;
    }
}








@end
