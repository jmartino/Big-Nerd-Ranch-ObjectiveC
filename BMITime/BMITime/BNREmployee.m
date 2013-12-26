//
//  BNREmployee.m
//  BMITime
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment
{
    //do i have a non-nil hireDate?
    if (self.hireDate){
        //NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs/ 31557600.0; //secs per year
    } else {
        return 0;
    
    }
}

- (float)bodyMassIndex
{
//    return 19.0;
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}
@end
