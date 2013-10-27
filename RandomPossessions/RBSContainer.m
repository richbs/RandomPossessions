//
//  RBSContainer.m
//  RandomPossessions
//
//  Created by Rich Barrett-Small on 26/10/2013.
//
//

#import "RBSContainer.h"

@implementation RBSContainer
@synthesize subItems;

-(id)init
{
    return [self initWithContainerName:@"Default"
                        valueInDollars:400
                          serialNumber:@"SN"];
}

-(id)initWithContainerName:(NSString *)name
            valueInDollars:(int)value
              serialNumber:(NSString *)sNumber
{
	self = [super init];
	
	// Did the superclass initializer succeed
	
	if (self) {
        NSLog(@"Yes");
		// Call the instance variable initial vals
		[self setPossessionName:name];
		[self setValueInDollars:value];
		[self setSerialNumber:sNumber];
		dateCreated = [[NSDate alloc] init];
        subItems = [[NSMutableArray alloc] init];
	}
    
	// Return the address of the new init object
	return self;
}

-(NSString *)description {

    
    uint totalValue = 0;
    
    for (Possession *it in [self subItems]) {
        totalValue += it.valueInDollars;
        NSLog(@"sub %@", it);
    }
    
    totalValue += self.valueInDollars;
    
    return [NSString stringWithFormat:@"I contain %lu items totalling $%d",  (unsigned long)[[self subItems] count],  totalValue];
}

@end
