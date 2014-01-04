//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by jm on 12/24/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

@synthesize conversionRate;


- (float)costInDollars
{
    
    return [super costInDollars] * conversionRate;
    
}

- (float)valueInDollars
{
    return [super valueInDollars] * conversionRate;
   
}


@end
