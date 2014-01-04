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
    return [self purchaseSharePrice] * [ self numberOfShares];
    
}
- (float)valueInDollars
{
    //return currentSharePrice * numberOfShares;
    return [self currentSharePrice] * [self numberOfShares];
    
}

@end
