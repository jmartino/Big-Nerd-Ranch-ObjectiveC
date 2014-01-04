//
//  BNRPerson.m
//  BMITime
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)heightInMeters
{
    return _heightInMeters;
}

- (void)setHeightInMeters:(float)h
{
    _heightInMeters = h;
}

- (int)weightInKilos
{
    return _weightInKilos ;
}

- (void)setWeightInKilos:(int)w
{
    _weightInKilos = w;
}

- (float)bodyMassIndex
{
    //return _weightInKilos / (_heightInMeters * _heightInMeters);
    float h = [self heightInMeters];
    return [self weightInKilos] / (h*h);
}

@end
