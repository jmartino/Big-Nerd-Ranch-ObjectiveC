//
//  main.m
//  Stocks
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BNRStockHolding *stock01 = [[BNRStockHolding alloc]init];
        BNRStockHolding *stock02 = [[BNRStockHolding alloc]init];
        BNRStockHolding *stock03 = [[BNRStockHolding alloc]init];

        
        // Create an empty mutable array and populate with the stocks
        NSMutableArray *stockList = [NSMutableArray array];
        [stockList addObject:stock01];
        [stockList addObject:stock02];
        [stockList addObject:stock03];
        
        int seed = 10; //just to get some dummy data going
        //populate individual with stocks with data
        for (BNRStockHolding *s in stockList) {
            [s setPurchaseSharePrice:seed*10];
            [s setCurrentSharePrice:seed*15];
            [s setNumberOfShares:seed*1];
            seed+=10;
        }
        
        
        for (BNRStockHolding *s in stockList){
            NSLog(@"purchaseSharePrice %.2f, currentSharePrice %.2f, numberOfShares %d, costInDollars %.2f,valueInDollars %.2f",[s purchaseSharePrice], [s currentSharePrice], [s numberOfShares], [s costInDollars],[s valueInDollars]);
        }
        
        

        }
    return 0;
        
    }

