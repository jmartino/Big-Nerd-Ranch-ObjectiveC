//
//  main.c
//  Triangle
//
//  Created by jm on 12/20/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#include <stdio.h>

float remainingAngle(angleA, angleB)
{
    
    return 180 - angleA - angleB;
}

int main(int argc, const char * argv[])
{

   
    float angleA = 30.0;
    float angleB = 60.0;
    printf("third angle is %.2f degrees \n",remainingAngle(angleA, angleB));
    return 0;
}

