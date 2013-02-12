//
//  MyMapViewController.m
//  Master Test
//
//  Created by Brett Lesnau on 2/6/13.
//  Copyright (c) 2013 Vigilante Panda. All rights reserved.
//

#import <MapKit/MapKit.h>
#import "MapViewController.h"

static const CLLocationDegrees ART_LAT = 42.73;
static const CLLocationDegrees ART_LON = -84.55;
static const CLLocationDegrees ART_REGION_SPAN = .003;

@interface MapViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *map;

- (IBAction)centerOnArtClick:(id)sender;

@property BOOL hasAppeared;

@end

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.hasAppeared = false;
    }
    return self;
}

- (void)viewDidLoad
{
    //[super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if(!self.hasAppeared)
    {
        [self centerOnArt:false];
        self.hasAppeared = true;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)centerOnArtClick:(id)sender
{
    [self centerOnArt:true];
}

- (void)centerOnArt:(BOOL)animated
{
    CLLocationCoordinate2D artCoord = {ART_LAT, ART_LON};
    MKCoordinateSpan artSpan = {ART_REGION_SPAN, ART_REGION_SPAN};
    MKCoordinateRegion artRegion = {artCoord, artSpan};
    [_map setRegion:artRegion animated:animated];
}

@end
