//
//  BNRPerson.h
//  BMITime
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

{
    //BNRPerson has two instance variable
    float _heightInMeters;
    int _weightInKilos;
}

//BNRPerson has methods to read and set is instance variables
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;

//BNRPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;

@end
