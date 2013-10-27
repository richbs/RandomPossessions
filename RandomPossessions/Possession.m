//
//  Possession.m
//  RandomPossessions
//
//  Created by Richard Barrett-Small on 04/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//x

#import "Possession.h"

@implementation Possession
@synthesize possessionName, serialNumber, valueInDollars, dateCreated;

-(id)init
{
    return [self initWithPossessionName:@"Item"
                         valueInDollars:0
                           serialNumber:@"N507"];
}

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

-(id)initWithPossessionName:(NSString *)name serialNumber:(NSString *)sNumber
{
    return [self initWithPossessionName:name
                         valueInDollars:300
                           serialNumber:sNumber];
}

- (NSString *)description
{

    return [NSString stringWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
									possessionName,
										serialNumber,
											valueInDollars,
												dateCreated];
}

- (void)dealloc
{
    [possessionName release];
    [serialNumber release];
    [dateCreated release];
    [super dealloc];
}

@end
