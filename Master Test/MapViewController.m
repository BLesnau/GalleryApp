//
//  MyMapViewController.m
//  Master Test
//
//  Created by Brett Lesnau on 2/6/13.
//  Copyright (c) 2013 Vigilante Panda. All rights reserved.
//

#import <MapKit/MapKit.h>
#import "MapViewController.h"

@interface MapViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *map;

- (IBAction)centerOnArtClick:(id)sender;

@end

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //custom setup
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //[_map setUserTrackingMode:MKUserTrackingModeFollow];
    CLLocationCoordinate2D artCoord = {42.73, -84.55};
    [_map setCenterCoordinate:artCoord animated:true];
    [self centerOnArt];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)centerOnArtClick:(id)sender
{
    [self centerOnArt];
}

- (void)centerOnArt
{
    CLLocationCoordinate2D artCoord = {42.73, -84.55};
    MKCoordinateSpan artSpan = {.003, .003};
    MKCoordinateRegion artRegion = {artCoord, artSpan};
    //[_map setCenterCoordinate:artCoord animated:true];
    [_map setRegion:artRegion animated:true];
}



@end
