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

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create an instance
        BNREmployee *mikey = [[BNREmployee alloc]init];
        
        //give the instance variables values using setters
        [mikey setWeightInKilos:96];
        [mikey setHeightInMeters:1.8];
        [mikey setHireDate:[NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"]];
        //log the instance variables using the getters
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        
        
        
        NSLog(@"mikey is %.f meters tall and weighs %d kilos ",height, weight);
        NSDate *date = mikey.hireDate;
        NSLog(@"%@ hired on %@",mikey,date);
        //NSLog(@"employee %u hired on %@", mikey.employeeID, mikey.hireDate );
        
        //log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        NSLog(@"mikey has a bmi of %f has worked with us for %.f years",bmi,years);
        
    }
    return 0;
}

