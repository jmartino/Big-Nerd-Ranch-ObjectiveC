//
//  main.m
//  BMITime
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //create an array of BNREmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        //create a dictionary of execs
        NSMutableDictionary *executives = [[NSMutableDictionary alloc]init];
        
        for (int i=0; i<10; i++) {
            // create an instance
            BNREmployee *person = [[BNREmployee alloc] init];
            
            //give the instance variables values
            [person setWeightInKilos:90*i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            //put the employee in the employess array
            [employees addObject:person];
            
            //is this the first employee?
            if (i==0) {
                [executives setObject:person forKey:@"CEO"];
            }
            //is this the second employess?
            if (i==1) {
                [executives setObject:person forKey:@"CTO"];
            }
            
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        //create 10 assets
        for (int i =0; i<10; i++) {
            //create an asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            //give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:350 + i * 17];
           
            
            //NSLog(@"employees = %@", employees);
            
            //get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            
            
            //find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //assign the asset to the employee
            
            [randomEmployee addAsset:asset];
            [allAssets addObject:asset];
            
           NSLog(@"somekind of Array: %@", randomEmployee);
            
            
           
            }
        
      
        
        
        NSLog(@"Employees: %@",employees);
        
        
        
        NSLog(@"giving up ownership of one employee\n");
        [employees removeObjectAtIndex:5];
        
        
        NSLog(@"allAssets: %@", allAssets);
        
        //print out the entire dictionary
        NSLog(@"executives: %@",executives);
        //print out the ceo's information
        NSLog(@"CEO: %@", executives[@"CEO"]);
        
        executives = nil;
        
        
        NSLog(@"giving up ownership of arrays\n");
        allAssets  = nil;
        employees = nil;
        
        
        
        
    }
    sleep(100);
    return 0;
    
}

