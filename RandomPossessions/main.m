//
//  main.m
//  RandomPossessions
//
//  Created by Richard Barrett-Small on 04/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import "Possession.h"
#import "RBSContainer.h"
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    
    RBSContainer *c = [[RBSContainer alloc] initWithContainerName:@"Foo" valueInDollars:3 serialNumber:@"N557"];
    
    for (int i = 0; i < 10; i++) {
        Possession *p = [Possession randomPossession];
        [items addObject:p];
        [[c subItems] addObject:p];
    }

    [[c subItems] addObject:c];
    
    NSLog(@"%@", [c description]);
    
    // housekeeping
    [items release];
    items = nil;
    [pool drain];
    
    return 0;
}

