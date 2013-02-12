//
//  ArtObject.m
//  Master Test
//
//  Created by Brett Lesnau on 2/6/13.
//  Copyright (c) 2013 Vigilante Panda. All rights reserved.
//

#import "ArtObject.h"

@implementation ArtObject

- (id)initWithImage:(NSString *)imagePath andArt:(NSString *)artName andArtist:(NSString *)artistName andInfo:(NSString *)infoText
{
    self = [super init];
     
    self.imagePath = imagePath;
    self.artName = artName;
    self.artistName = artistName;
    self.infoText = infoText;
    
    return self;
}

@end
