//
//  main.c
//  Time
//
//  Created by jm on 12/21/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#include <stdio.h>
#include <time.h>

/*
 Your challenge is to write a program that will tell you what the date (4-30-2015 format is fine) will be in 4 million seconds. (One hint: tm_mon = 0 means January, so be sure to add 1. Also, include the < time.h > header at the start of your program.)
 
 Hillegass, Aaron (2013-11-20). Objective-C Programming: The Big Nerd Ranch Guide (2nd Edition) (Big Nerd Ranch Guides) (Kindle Locations 1900-1904). Pearson Education. Kindle Edition.
 */

int main(int argc, const char * argv[])
{

   
    long numSecsSince1970 = time(NULL);
    long numSecsFuture = numSecsSince1970 +4000000;
    printf("%ld\n",numSecsSince1970);
    //struct tm now;
    //localtime_r(&numSecsSince1970, &now);
    //printf("the time is %d:%d:%d\n",now.tm_hour, now.tm_min, now.tm_sec);
    
    struct tm future;
    localtime_r(&numSecsFuture,&future);
    printf("the future is %d-%d-%d\n",future.tm_mday, future.tm_mon+1, future.tm_year+1900);
    return 0;
}

