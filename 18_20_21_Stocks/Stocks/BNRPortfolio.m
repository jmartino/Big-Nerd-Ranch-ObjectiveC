//
//  BNRPortfolio.m
//  Stocks
//
//  Created by jm on 1/3/14.
//  Copyright (c) 2014 jm. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@implementation BNRPortfolio

//accessors for holding properties
- (void)setHoldings:(NSArray *)h
{
    _holdings = [h mutableCopy];
}

- (NSArray *)holdings
{
    return [_holdings copy];
    
}

-(void)addHoldings:(BNRStockHolding *)h
{
    //is holidngs nil?
    if (!_holdings)
    {
        //create the array
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:h];
}

- (float)currentValue
{
    //sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRStockHolding *h in _holdings) {
        sum += [h valueInDollars];
    }
    return sum;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<value: %.2f>", self.currentValue];
}

@end
