//
//  BNRAsset.m
//  BMITime
//
//  Created by jm on 12/26/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"



@implementation BNRAsset



- (NSString *)description
{
    //return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
    // is holder non-nil?
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",self.label,self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@",self);
}

@end
