//
//  BNRLogger.h
//  Callbacks
//
//  Created by jm on 1/4/14.
//  Copyright (c) 2014 jm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject
<NSURLConnectionDelegate, NSURLConnectionDelegate>
{
    NSMutableData *_incomingData;
}
@property (nonatomic) NSDate *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;

@end
