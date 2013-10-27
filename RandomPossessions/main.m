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
    
    RBSContainer *c = [[RBSContainer alloc] init];
    [c setValueInDollars:400];
    NSLog(@"%@", [c possessionName]);
    
    for (int i = 0; i < 10; i++) {
        NSString *sNumber = [NSString stringWithFormat:@"SN%d", i];
        Possession *p = [[Possession alloc] initWithPossessionName:@"goo" serialNumber:sNumber];
        [items addObject:p];
        NSLog(@"%@", p);
        [[c subItems] addObject:p];
        NSLog(@"%lu", (unsigned long)c.subItems.count);
    }

    [[c subItems] addObject:c];
    NSLog(@"%lu", (unsigned long)c.subItems.count);
    NSLog(@"%@", c);
 
    // housekeeping
    [items release];
    items = nil;
    [pool drain];
    
    return 0;
}

