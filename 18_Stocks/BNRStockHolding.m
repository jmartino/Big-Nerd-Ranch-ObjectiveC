//
//  BNRStockHolding.m
//  Stocks
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import "BNRStockHolding.h"


@implementation BNRStockHolding



//calculation methods
- (float)costInDollars
{
   // return purchaseSharePrice * numberOfShares ;
    float c = [self numberOfShares]*[self purchaseSharePrice];
    return c;
}
- (float)valueInDollars
{
    //return currentSharePrice * numberOfShares;
    float v = [self currentSharePrice] * [self numberOfShares];
    return v;
}

@end
