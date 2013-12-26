//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by jm on 12/24/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate;

@end
