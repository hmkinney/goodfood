//
//  QuantityTableViewController.m
//  GoodFood
//
//  Created by Hilary on 12/14/15.
//  Copyright (c) 2015 Hilary. All rights reserved.
//

#import "QuantityTableViewController.h"

@interface QuantityTableViewController ()
@property (nonatomic, strong) NSArray *choices;
@property (nonatomic, strong) NSString *selectedChoice;
@end

@implementation QuantityTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    self.choices = [NSArray arrayWithObjects:@"Servings", @"Pounds", @"Count", nil];
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"index is?: %@",[NSNumber numberWithInteger:indexPath.row]);
    if (indexPath.row < 4  && indexPath.row > 0) {
        for (NSInteger i = 1; i<4; i++) {
            NSIndexPath *ip = [NSIndexPath indexPathForRow:i inSection:0];
            UITableViewCell *selCell = [tableView cellForRowAtIndexPath:ip];
            if (i == indexPath.row) {
                selCell.accessoryType = UITableViewCellAccessoryCheckmark;
                self.selectedChoice = self.choices[i-1];
                NSLog(@"Selected: %@",self.selectedChoice);
            }else{
                selCell.accessoryType = UITableViewCellAccessoryNone;
            }
        }
        
    }else if(indexPath.row == 6){
        NSLog(@"HELLO?!");
        NSNumberFormatter *nf = [[NSNumberFormatter alloc]init];
        NSNumber *inputtedQuantity = [nf numberFromString:self.numericalQuantityTextField.text];
        BOOL correctNumber = NO;
        BOOL correctUnit = NO;
        
        if (!inputtedQuantity) {
            [self.numericalQuantityLabel setTextColor:[UIColor redColor]];
        }else{
            [self.numericalQuantityLabel setTextColor:[UIColor blackColor]];
            
            // They entered data correctly
            correctNumber = YES;
            
            [self.delegate setQuantityNumber:inputtedQuantity];
        }
        
        if (!self.selectedChoice) {
            [self.unitMeasurementLabel setTextColor:[UIColor redColor]];
            
        }else{
            [self.unitMeasurementLabel setTextColor:[UIColor blackColor]];
            correctUnit = YES;
            [self.delegate setQuantityUnits:self.selectedChoice];
        }
        
        if (correctUnit && correctNumber) {
            [self.navigationController popViewControllerAnimated:YES];
        }
        
    }
}

#pragma mark - Table view data source

@end
