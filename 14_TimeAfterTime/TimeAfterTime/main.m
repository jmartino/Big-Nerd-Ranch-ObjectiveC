//
//  main.m
//  TimeAfterTime
//
//  Created by jm on 12/21/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
        
        //NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"this NSDate object lives at %p\n",now);
        NSLog(@"the date is %@\n",now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"it has been %f seconds since the start of 1970.\n",seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:1000000];
        NSLog(@"in 100,000 secs it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"my cal is %@", [cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit  forDate:now];
        NSLog(@"this is day %lu of the month",day);
        */
        
        /*
         Challenge 
         Use two instances of NSDate to figure out how many seconds you have been alive.
         
         Hillegass, Aaron (2013-11-20). Objective-C Programming: The Big Nerd Ranch Guide (2nd Edition) (Big Nerd Ranch Guides) (Kindle Locations 2369-2370). Pearson Education. Kindle Edition.
         */
        
        NSDate *now = [[NSDate alloc]init];
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1969];
        [comps setMonth:4];
        [comps setDay:30];
        [comps setHour:13];
        [comps setMinute:10];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        // NSLog(@"date of birth %@",dateOfBirth);
        
        double secondsSinceEarlierDate = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"seconds since birth %f:",secondsSinceEarlierDate);
        
        
         
        
        
    }
    return 0;
}

