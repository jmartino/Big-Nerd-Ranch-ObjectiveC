//
//  main.m
//  ReadlineInput
//
//  Created by jm on 12/22/13.
//  Copyright (c) 2013 jm. All rights reserved.
//



#import <readline/readline.h>
#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        
        
        NSLog(@"Who is cool? ");
       
       NSString *name = [NSString stringWithUTF8String:readline(NULL)];

        NSLog(@"%@ is cool!", name);
        
    }
    return 0;
}

