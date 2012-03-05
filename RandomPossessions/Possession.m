//
//  Possession.m
//  RandomPossessions
//
//  Created by Richard Barrett-Small on 04/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Possession.h"

@implementation Possession

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
