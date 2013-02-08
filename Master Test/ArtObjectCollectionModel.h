//
//  ArtObjectCollectionModel.h
//  Master Test
//
//  Created by Brett Lesnau on 2/6/13.
//  Copyright (c) 2013 Vigilante Panda. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ArtObject;

@interface ArtObjectCollectionModel : NSObject

-(id)initEmpty;
-(void)addObject:(ArtObject*)obj;
-(ArtObject*)getObjectAtIndex:(int)index;
-(uint)getSize;

@end
