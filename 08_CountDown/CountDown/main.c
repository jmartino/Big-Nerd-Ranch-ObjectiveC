//
//  main.c
//  CountDown
//
//  Created by jm on 12/21/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#import <readline/readline.h>
#import <stdio.h>

int main(int argc, const char * argv[])
{

    /* Create a new project (C Command Line Tool) named CountDown and write a program that counts backward from 99 through 0 by 3, printing each number. If the number is divisible by 5, it should also print the words “Found one!”. Thus, the output should look something like this: 99 96 93 90 Found one! 87 ... 0 Found one!
     
     
    Hillegass, Aaron (2013-11-20). Objective-C Programming: The Big Nerd Ranch Guide (2nd Edition) (Big Nerd Ranch Guides) (Kindle Locations 1539-1544). Pearson Education. Kindle Edition.
     
     
     modify your code to prompt the user for input and then kick off the countdown from the desired spot. Your output should look something like this: Where should I start counting? 42 42 39 36 33 30 Found one! 27 ...
     
     Hillegass, Aaron (2013-11-20). Objective-C Programming: The Big Nerd Ranch Guide (2nd Edition) (Big Nerd Ranch Guides) (Kindle Locations 1594-1597). Pearson Education. Kindle Edition.
    */
    
   
    printf("where to start the countdown? ");
    const char *number  = readline(NULL);
    int i = atoi(number);
 
   
    
    for (i; i>=0; i-=3) {
        printf("%d\n",i);
        if (i!=0 && i % 5 == 0) {
            printf("found one!\n");
        }
    }
    return 0;
}

