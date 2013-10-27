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
    
    return [NSString stringWithFormat:@"I contain %lu items totalling $%d. They are %@", [[self subItems] count],  [self fullValue], [self allItems]];
}

-(int)fullValue
{
    uint totalValue = 0;
    for (Possession *it in [self subItems]) {
        totalValue += it.valueInDollars;
    }
    totalValue += self.valueInDollars;
    return totalValue;
}

-(NSString *)allItems
{
    NSString *itemString;
    itemString = [NSString stringWithFormat:@"goo"];
    
    for (id thing in [self subItems])
    {

        if ([thing isMemberOfClass:[self class]]) {
            itemString = [NSString stringWithFormat:@"Container: %@, %@", self.possessionName, itemString];
        } else {
            itemString = [NSString stringWithFormat:@"%@, %@", thing, itemString];
  
        }
    }
    return itemString;
}

- (void)dealloc
{
    [subItems release];
    [super dealloc];
}


@end
