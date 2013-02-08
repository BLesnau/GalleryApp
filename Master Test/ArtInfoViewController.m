//
//  MyDetailViewController.m
//  Master Test
//
//  Created by Brett Lesnau on 2/7/13.
//  Copyright (c) 2013 Vigilante Panda. All rights reserved.
//

#import "ArtInfoViewController.h"
#import "ArtObject.h"

@interface ArtInfoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *artImage;
@property (weak, nonatomic) IBOutlet UILabel *artName;
@property (weak, nonatomic) IBOutlet UILabel *artistName;
@property (weak, nonatomic) IBOutlet UITextView *artInfo;

- (void)configureView;

@end

@implementation ArtInfoViewController

- (void)setDetailItem:(ArtObject*)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        [self configureView];
    }
}

- (void)configureView
{
    if (self.detailItem) {
        self.artName.text = _detailItem.artName;
        self.artistName.text = _detailItem.artistName;
        self.artInfo.text = _detailItem.infoText;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
