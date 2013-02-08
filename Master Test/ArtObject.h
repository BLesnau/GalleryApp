//
//  ArtObject.h
//  Master Test
//
//  Created by Brett Lesnau on 2/6/13.
//  Copyright (c) 2013 Vigilante Panda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArtObject : NSObject

@property (copy) NSString *imagePath;
@property (copy) NSString *artName;
@property (copy) NSString *artistName;
@property (copy) NSString *infoText;

-(id)initWithImage:(NSString*)imagePath andArt:(NSString*)artName andArtist:(NSString*)artistName andInfo:(NSString*)infoText;

@end
