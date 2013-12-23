//
//  main.m
//  Groceries
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //create an empty mutable array
        NSMutableArray *groceryList = [NSMutableArray array];
        
        //add items to the grocery list
        [groceryList addObject:@"bread"];
        [groceryList addObject:@"milk"];
        [groceryList addObject:@"butter"];
        
        //iterate over the array
        for (NSString *s in groceryList){
        
            NSLog(@"%@\n", s  );
        }
        
    }
    return 0;
}

