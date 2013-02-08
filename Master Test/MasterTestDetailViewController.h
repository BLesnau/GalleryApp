//
//  MasterTestDetailViewController.h
//  Master Test
//
//  Created by Brett Lesnau on 2/5/13.
//  Copyright (c) 2013 Vigilante Panda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterTestDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
