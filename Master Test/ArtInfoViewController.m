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
@property (weak, nonatomic) IBOutlet UIButton *collapseButton;
@property BOOL hasAppeared;
@property BOOL viewCollapsed;
@property CGRect initialImageRect;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeightConstraint;

- (IBAction)collapseClick:(id)sender;
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

- (IBAction)collapseClick:(id)sender
{
    if(self.viewCollapsed)
    {
        self.imageHeightConstraint.constant = self.initialImageRect.size.height;
        [self.view setNeedsUpdateConstraints];
        
        [UIView animateWithDuration:1.3f
                                delay:0.0
                                options:(UIViewAnimationOptions)UIViewAnimationCurveEaseInOut
                                animations:^{
                                    [self.view layoutIfNeeded];
                                    self.collapseButton.transform = CGAffineTransformMakeRotation(270.0*M_PI/180.0);
                                }
                                completion:^(BOOL finished) {}];
    }
    else
    {
        self.imageHeightConstraint.constant = 0.0;
        [self.view setNeedsUpdateConstraints];
        
        [UIView animateWithDuration:1.3f
                                delay:0.0
                                options:(UIViewAnimationOptions)UIViewAnimationCurveEaseInOut
                                animations:^{
                                    [self.view layoutIfNeeded];
                                    self.collapseButton.transform = CGAffineTransformMakeRotation(90.0*M_PI/180.0);
                                }
                                completion:^(BOOL finished) {}];
    }
    
    self.viewCollapsed = !self.viewCollapsed;
    
    [self configureView];
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

    self.viewCollapsed = NO;
    self.hasAppeared = NO;
    self.collapseButton.transform = CGAffineTransformMakeRotation(270.0*M_PI/180.0);
    [self configureView];
}

- (void)viewDidAppear:(BOOL)animated
{
    if(!self.hasAppeared)
    {
        self.initialImageRect = self.artImage.frame;
    }
    
    self.hasAppeared = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
