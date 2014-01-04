//
//  BNREmployee.h
//  BMITime
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;
- (double) yearsOfEmployment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
