//
//  BNRPortfolio.m
//  Stocks
//
//  Created by jm on 1/3/14.
//  Copyright (c) 2014 jm. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

//a class extensions
@interface BNRPortfolio ()
{
    NSMutableArray *_holdings;
}


@end

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

-(void)removeHoldings:(BNRStockHolding *)h
{
    //is holidngs non nil?
    if (_holdings)
    {
        //create the array
        //_holdings = [[NSMutableArray alloc] init];
        [_holdings removeObject:h];
    }
    //[_holdings addObject:h];
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

- (NSArray *)topThree
{
    NSSortDescriptor *vid = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    
    [_holdings sortUsingDescriptors: @[vid]];
   
    
    NSArray *top = [_holdings subarrayWithRange:NSMakeRange(0, 3)];
   

    return top;
}

- (NSArray *)topSymbol
{
    NSSortDescriptor *ts = [NSSortDescriptor sortDescriptorWithKey:@"tickerSymbol" ascending:YES];
    
    [_holdings sortUsingDescriptors: @[ts]];
    
    
    NSArray *topSymbol = [_holdings subarrayWithRange:NSMakeRange(0, 3)];
    
    
    return topSymbol;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<value: %.2f>", self.currentValue];
}

@end
