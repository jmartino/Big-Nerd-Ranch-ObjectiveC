//
//  BNRLogger.m
//  Callbacks
//
//  Created by jm on 1/4/14.
//  Copyright (c) 2014 jm. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter)
    {
        dateFormatter = [[NSDateFormatter alloc]init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
    
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"just set time to %@", self.lastTimeString);
}

//called each time a chunk of data arrives

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);


//create a mutable data if it does not already exist
    if (!_incomingData) {
    _incomingData = [[NSMutableData alloc]init];
    }

    [_incomingData appendData:data];
}

// called when the last chunk has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"got it all");
    NSString *string = [[NSString alloc]initWithData:_incomingData encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    //uncomment the next line to see the entire fetched file
    //NSLog(@"the whole string is %@", string);
}

//called if the fetch fails
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"the system time zone has changed");
}

@end
