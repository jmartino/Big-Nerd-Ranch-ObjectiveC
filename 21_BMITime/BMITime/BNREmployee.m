//
//  BNREmployee.m
//  BMITime
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

//a class extension
@interface BNREmployee ()
{
    NSMutableArray *_assets;
}

@property  (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

//accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSMutableSet *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    //is assets nil?
    if (!_assets)
    {
        //create the array
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (void)removeAsset:(BNRAsset *)a
{
    //is assets nil?
    if (_assets)
    {
        //there's something there to remove
        [_assets removeObject:a];
    }
}

- (unsigned int)valueOfAssets
{
    //sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

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
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@",self);
}
@end
