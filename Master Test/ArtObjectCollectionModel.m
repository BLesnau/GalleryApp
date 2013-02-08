//
//  ArtObjectCollectionModel.m
//  Master Test
//
//  Created by Brett Lesnau on 2/6/13.
//  Copyright (c) 2013 Vigilante Panda. All rights reserved.
//

#import "ArtObjectCollectionModel.h"
#import "ArtObject.h"

@interface ArtObjectCollectionModel ()

@property NSMutableArray *artObjects;

@end

@implementation ArtObjectCollectionModel

-(id)initEmpty
{
    self = [super init];
    
    self.artObjects = [[NSMutableArray alloc] init];
    
    return self;
}

- (void)addObject:(ArtObject *)obj
{
    [self.artObjects addObject:obj];
}

-(ArtObject*)getObjectAtIndex:(int)index
{
    if(self.getSize < index)
    {
        return nil;
    }

    return self.artObjects[index];
}

-(uint)getSize
{
    return [self.artObjects count];
}

@end
