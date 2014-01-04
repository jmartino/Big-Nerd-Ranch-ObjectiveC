//
//  BNRPortfolio.h
//  Stocks
//
//  Created by jm on 1/3/14.
//  Copyright (c) 2014 jm. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject
{
    NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray *holdings;
@property (nonatomic) float currentValue;

-(void)addHoldings:(BNRStockHolding *)h;
-(float)currentValue;

@end
