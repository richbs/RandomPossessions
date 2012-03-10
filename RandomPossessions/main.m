//
//  main.m
//  RandomPossessions
//
//  Created by Richard Barrett-Small on 04/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import "Possession.h"
#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSMutableArray *items = [[NSMutableArray alloc] init];
    
    
    for (int i = 0; i < 10; i++) {
        Possession *p = [Possession randomPossession];
        [items addObject:p];
    }
    
    for (Possession *item in items)
        NSLog(@"%@", item);        

    // housekeeping
    [items release];
    items = nil;
    [pool drain];
    
    return 0;
}

