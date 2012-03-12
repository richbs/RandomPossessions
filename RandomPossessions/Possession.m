//
//  Possession.m
//  RandomPossessions
//
//  Created by Richard Barrett-Small on 04/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Possession.h"

@implementation Possession

+ (id)randomPossession
{
    // Random adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Round", @"Pretty",
                                                                    @"Colourful", nil];

    NSArray *randomNounList = [NSArray arrayWithObjects:@"Pie", @"Poppet", @"Dress", nil];
    
    int adjectiveIndex = rand() % (int)[randomAdjectiveList count];
    int nounIndex = (int)rand() % (int)[randomNounList count];
    
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    
    int randValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c", 
                                                '0' + rand() % 10,
                                                'A' + rand() % 26,
                                                '0' + rand() % 10];
    
    // What memory problems with this method?
    Possession *newPossession = [[self alloc] initWithPossessionName:randomName
                                                        valueInDollars:randValue
                                                        serialNumber:randomSerialNumber];

    return [newPossession autorelease];
}

-(id)initWithPossessionName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
	self = [super init];
	
	// Did the superclass initializer succeed
	
	if (self) {
		// Call the instance variable initial vals
		[self setPossessionName:name];
		[self setValueInDollars:value];
		[self setSerialNumber:sNumber];
		dateCreated = [[NSDate alloc] init];		
	}

	// Return the address of the new init object
	return self;
}

- (NSString *)description
{

    return [NSString stringWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
									possessionName,
										serialNumber,
											valueInDollars,
												dateCreated];
}

- (void)setPossessionName:(NSString *)str
{
    [str retain];
    [possessionName release];
	possessionName = str;
}
- (NSString *)possessionName
{
	return possessionName;
}
- (void)setSerialNumber:(NSString *)str
{
    [str retain];
    [serialNumber release];
	serialNumber = str;
}
- (NSString *)serialNumber
{
	return serialNumber;
}
- (void)setValueInDollars:(int)i
{
	valueInDollars = i;
}
- (int)valueInDollars
{
	return valueInDollars;
}
- (NSDate *)dateCreated
{
	return dateCreated;
}
- (void)dealloc
{
    [possessionName release];
    [serialNumber release];
    [dateCreated release];
    [super dealloc];
}

@end
