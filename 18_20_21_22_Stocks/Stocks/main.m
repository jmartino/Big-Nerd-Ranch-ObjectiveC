//
//  main.m
//  Stocks
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRPortfolio *portfolioForeign = [[BNRPortfolio alloc]init];
        BNRPortfolio *portfolioUS = [[BNRPortfolio alloc]init];
        
        BNRStockHolding *msft = [[BNRStockHolding alloc]init];
        [msft setTickerSymbol:@"MSFT"];
        BNRStockHolding *goog = [[BNRStockHolding alloc]init];
        [goog setTickerSymbol:@"GOOG"];
        BNRStockHolding *ibm = [[BNRStockHolding alloc]init];
        [ibm setTickerSymbol:@"IBM"];
        
        BNRForeignStockHolding  *phg = [[BNRForeignStockHolding alloc]init];
        [phg setConversionRate:.50];
        [phg setTickerSymbol:@"PHG"];

        
        // Create an empty mutable array and populate with the stocks
        NSMutableArray *stockList = [NSMutableArray array];
        [stockList addObject:msft];
        [stockList addObject:goog];
        [stockList addObject:ibm];
        [stockList addObject:phg];
        
        int seed = 10; //just to get some dummy data going
        //populate individual stocks with data
        for (BNRStockHolding *s in stockList) {
            [s setPurchaseSharePrice:seed*10];
            [s setCurrentSharePrice:seed*15];
            [s setNumberOfShares:seed*1];
            seed+=10;
        }
        
        [portfolioUS addHoldings:msft];
        [portfolioUS addHoldings:goog];
        [portfolioUS addHoldings:ibm];
        [portfolioForeign addHoldings:phg];
        //[portfolioUS removeHoldings:ibm];
        
        for (BNRStockHolding *s in stockList){
//            NSLog(@"purchaseSharePrice %.2f, currentSharePrice %.2f, numberOfShares %d, costInDollars %.2f,valueInDollars %.2f",[s purchaseSharePrice], [s currentSharePrice], [s numberOfShares], [s costInDollars],[s valueInDollars]);
        
            NSLog(@"stock: %@ purchaseSharePrice %.2f, currentSharePrice %.2f, numberOfShares %d, costInDollars %.2f,valueInDollars %.2f\n",s.tickerSymbol,s.purchaseSharePrice, s.currentSharePrice, s.numberOfShares, s.costInDollars, s.valueInDollars);
        }
        NSLog(@"portfolio value: %.2f\n",portfolioForeign.currentValue + portfolioUS.currentValue);
       
       
        NSArray *top = [portfolioUS topThree];
        NSLog(@"topThree holdings by dollar value: " );
        for (BNRStockHolding *h in top)
        {
            NSLog(@"%@ $%.2f",h.tickerSymbol, h.valueInDollars   );
        }
        
        
        NSArray *ts = [portfolioUS topSymbol];
        NSLog(@"topThree holdings by ticker symbol: " );
        for (BNRStockHolding *h in ts)
        {
            NSLog(@"%@ $%.2f",h.tickerSymbol, h.valueInDollars   );
        }
        
      
        
        

        }
    return 0;
        
    }

