//
//  main.m
//  ComputerName
//
//  Created by jm on 12/22/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 In this challenge, you will write a Foundation Command Line Tool that prints out the name of your computer. This program will use two classes from the Foundation framework: NSHost and NSString. First, you will get an instance of NSHost that has your computer’s information. Then you will ask the NSHost object for your computer’s name. Finally, you will use NSLog() to print out this name. Here are more details that you will need: To get an instance of NSHost, send the currentHost message to the NSHost class. Once you have an instance of NSHost, send it the localizedName message. The localizedName method returns a pointer to an instance of NSString. Thus, you can store the result of sending this message in a variable of type NSString *. Use NSLog() and the %@ token to print out your computer’s name.
 
 Hillegass, Aaron (2013-11-20). Objective-C Programming: The Big Nerd Ranch Guide (2nd Edition) (Big Nerd Ranch Guides) (Kindle Locations 2189-2205). Pearson Education. Kindle Edition.
 */

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *myHost = [NSHost currentHost];
        NSString *myLocalizedName = [myHost localizedName];
        NSArray *myNames = [myHost names];
        NSLog(@"my machine name is: %@\n",myLocalizedName);
        NSLog(@"an array of all my machine names: %@\n",myNames);
        NSLog(@"and here's the whole host object %@\n",myHost);
        
    }
    return 0;
}

