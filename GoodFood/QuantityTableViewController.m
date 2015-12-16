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

//NSString *postTitle = self.numericalQuantityTextField.text;
//Above does not recognize 'self', even though numericalQuantityTextField has an equivalent text field in the appropriate slide!



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    self.choices = [NSArray arrayWithObjects:@"Servings", @"Pounds", @"Count", nil];
    self.selectedChoice = @"";
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
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
        
    }
}

#pragma mark - Table view data source

@end
