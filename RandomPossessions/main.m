//
//  main.m
//  RandomPossessions
//
//  Created by Richard Barrett-Small on 04/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

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
	   
    
    // housekeeping
    [items release];
    items = nil;
    [pool drain];
    
    return 0;
}

