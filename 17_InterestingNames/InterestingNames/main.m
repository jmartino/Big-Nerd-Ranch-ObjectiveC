//
//  main.m
//  InterestingNames
//
//  Created by jm on 12/23/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

/*
 Challenge: interesting names
 
 Hillegass, Aaron (2013-11-20). Objective-C Programming: The Big Nerd Ranch Guide (2nd Edition) (Big Nerd Ranch Guides) (Kindle Location 2861). Pearson Education. Kindle Edition.
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // read in a files as a huge string
         // turns out that the propernames are in the words file so dont need to do anything with the propernames file
        // NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        //break it into an array of strings
        // NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        //go thru the array one word at a time
        //look at the word and the next word in the file, if they're case insensitive the same, a name is found
        NSUInteger wordCount = [words count];
        int foundCounter = 0;
        for (int i=0; i< wordCount-1; i++){
            if ([words[i] compare:words[i+1] options:NSCaseInsensitiveSearch]==NSOrderedSame){
                NSLog(@"%@ , %@ \n",words[i],words[i+1]);
                foundCounter++;
            }
         
        
        }
        NSLog(@"the list of %lu words had %d proper names found \n",(unsigned long)wordCount,foundCounter++);
    return 0;

}
}
