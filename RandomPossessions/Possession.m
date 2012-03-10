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
    
    int adjectiveIndex = rand();
    int nounIndex = rand();
    
    NSLog(@"%d", adjectiveIndex);
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
	NSString *descriptionString =
		[[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
									possessionName,
										serialNumber,
											valueInDollars,
												dateCreated];
	return descriptionString;
}

- (void)setPossessionName:(NSString *)str
{
	possessionName = str;
}
- (NSString *)possessionName
{
	return possessionName;
}
- (void)setSerialNumber:(NSString *)str
{
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

@end
