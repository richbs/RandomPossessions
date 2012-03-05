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
    
    
    [items addObject:@"foo"];
    [items addObject:@"bar"];
    [items addObject:@"baz"];
    
    [items insertObject:@"snafu" atIndex:0];
    
    for (int i = 0; i < [items count]; i++) {
        
        int strLen = (int)[[items objectAtIndex:i] length];
        NSLog(@"%@: %d", [items objectAtIndex:i], strLen);
    }
	
	Possession *p = [[Possession alloc] init];
	
		//Set stfi
	[p setPossessionName:@"Red Sofa"];
	
	[p setSerialNumber:@"OIUTSD&77"];
	
	[p setValueInDollars:123];
	
	NSLog(@"%@ %@ %@ %d", [p possessionName], [p dateCreated],
						[p serialNumber], [p valueInDollars]);

	
	
    // housekeeping
    [items release];
    items = nil;
    [pool drain];
    
    return 0;
}

