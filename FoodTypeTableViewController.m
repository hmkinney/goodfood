//
//  FoodTypeTableViewController.m
//  GoodFood
//
//  Created by Hilary on 12/14/15.
//  Copyright (c) 2015 Hilary. All rights reserved.
//

#import "FoodTypeTableViewController.h"


@interface FoodTypeTableViewController ()

@property (nonatomic, strong) NSString *selectedChoice;
@property (nonatomic, strong) NSArray *foodTypeChoices;
@property (nonatomic) NSString *selectedIndex;



@end



@implementation FoodTypeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;

    self.foodTypeChoices = [NSArray arrayWithObjects:@"Ready-to-Eat", @"Frozen", @"Non-perishable", @"Produce", @"Baked goods", nil];
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row < 6  && indexPath.row > 0) {
        for (NSInteger i = 1; i<6; i++) {
            NSIndexPath *ip = [NSIndexPath indexPathForRow:i inSection:0];
            UITableViewCell *selCell = [tableView cellForRowAtIndexPath:ip];
            selCell.contentView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleHeight;
            if (i == indexPath.row) {
                selCell.accessoryType = UITableViewCellAccessoryCheckmark;
                self.selectedChoice = self.foodTypeChoices[i-1];
                NSLog(@"Selected: %@",self.selectedChoice);
            }else{
                selCell.accessoryType = UITableViewCellAccessoryNone;
        
//                NSString *selectedFoodType = self.selectedChoice[self.selectedIndex];
//                
//                [_delegate setFoodType: selectedFoodType]
            }
        }
    }else if(indexPath.row == 6){
        NSLog(@"DONE BUTTON TAPPED");
        if (!self.selectedChoice) {
            [self.selectTypeLabel setTextColor:[UIColor redColor]];
        }else{
            [self.selectTypeLabel setTextColor:[UIColor blackColor]];
            [self.delegate setFoodType:self.selectedChoice];
            [self.navigationController popViewControllerAnimated:YES];
        }
    }
}



#pragma mark - Table view data source

@end

