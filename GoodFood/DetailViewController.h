//
//  DetailViewController.h
//  GoodFood
//
//  Created by Hilary on 12/10/15.
//  Copyright (c) 2015 Hilary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

