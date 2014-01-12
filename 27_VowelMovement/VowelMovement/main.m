//
//  main.m
//  VowelMovement
//
//  Created by jm on 1/11/14.
//  Copyright (c) 2014 jm. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock) (id, NSUInteger, BOOL *);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //create array of strings and a container for devowelized ones
        NSArray *originalStrings = @[@"Sauerkraut",@"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings: %@", originalStrings);
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        //create a list of characters to be removed from the string
        NSArray *vowels = @[@"a",@"e", @"i", @"o", @"u"];
        
        //declare the block variable
        //void (^devowelizer) (id, NSUInteger, BOOL *);
        ArrayEnumerationBlock devowelizer;
        
        //compose a block and assign it to the variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop)
        {
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            //did i find a y?
            if (yRange.location != NSNotFound) {
                *stop = YES; //prevent further iterations
                return; //end this iteration
            
            }
            //}
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            //iterate over the arry of vowels, replacing occurrences of each with an empty string
            
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
                 [devowelizedStrings addObject:newString];
            
        }; //end of block assignment
        
        //iterate over the arry with your block
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"devowelized strings: %@", devowelizedStrings);
        
        
    }
    return 0;
}

