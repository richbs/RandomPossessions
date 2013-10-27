//
//  RBSContainer.h
//  RandomPossessions
//
//  Created by Rich Barrett-Small on 26/10/2013.
//
//

#import "Possession.h"

@interface RBSContainer : Possession {
    NSMutableArray *subItems;
}

-(id)initWithContainerName:(NSString *)name
                        valueInDollars:(int)value
                            serialNumber:(NSString *)sNumber;

@property (nonatomic, strong) NSMutableArray *subItems;

@end
