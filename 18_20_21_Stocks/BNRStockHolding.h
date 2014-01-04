//
//  BNRStockHolding.h
//  Stocks
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject


@property float purchaseSharePrice, currentSharePrice;
@property int numberOfShares;
@property (nonatomic, copy) NSString *tickerSymbol;
    

//calculation methods
- (float)costInDollars;
- (float)valueInDollars;


@end
