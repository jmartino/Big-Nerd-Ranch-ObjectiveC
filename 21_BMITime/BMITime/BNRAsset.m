//
//  BNRAsset.m
//  BMITime
//
//  Created by jm on 12/26/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"


@implementation BNRAsset



- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc
{
    NSLog(@"deallocating %@",self);
}

@end
