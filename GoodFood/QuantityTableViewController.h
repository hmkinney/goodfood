//
//  QuantityTableViewController.h
//  GoodFood
//
//  Created by Hilary on 12/14/15.
//  Copyright (c) 2015 Hilary. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol QuantityDelegate

-(void)setQuantityUnits:(NSString *)quantUnits;
-(void)setQuantityNumber:(NSNumber *)quantNum;
@end

@interface QuantityTableViewController : UITableViewController

@property (nonatomic, strong) id<QuantityDelegate> delegate;


@property (weak, nonatomic) IBOutlet UILabel *unitMeasurementLabel;


@property (weak, nonatomic) IBOutlet UILabel *servingsLabel;


@property (weak, nonatomic) IBOutlet UILabel *poundsLabel;


@property (weak, nonatomic) IBOutlet UILabel *countLabel;


@property (weak, nonatomic) IBOutlet UILabel *numericalQuantityLabel;


@property (weak, nonatomic) IBOutlet UITextField *numericalQuantityTextField;


@property (weak, nonatomic) IBOutlet UIButton *doneLabel;



@end
