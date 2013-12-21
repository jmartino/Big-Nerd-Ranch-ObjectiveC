//
//  main.c
//  PBR
//
//  Created by jm on 12/21/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#include <stdio.h>
#include <math.h>

/*
 Challenge In metersToFeedAndInches(), you used floor() and subtraction to break rawFeet into its integer and fractional parts. Change metersToFeedAndInches() to use modf() instead.
 
 Hillegass, Aaron (2013-11-20). Objective-C Programming: The Big Nerd Ranch Guide (2nd Edition) (Big Nerd Ranch Guides) (Kindle Locations 1820-1824). Pearson Education. Kindle Edition.
 */

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr)
{
    //this function assumes non-negative meters
    //convert the number of meteres into a floating point number of feet
    double rawFeet = meters * 3.281; //e.g. 2.4536
    double feet;
    printf("rawFeet = %f\n",rawFeet);
    double inches = modf(rawFeet,&feet) * 12.0;
    
 
    
    //store the number of feet at the supplied address
    if (ftPtr) {
    printf("storing %f to the address %p\n",feet, ftPtr);
    *ftPtr = feet;
    }
    
  
    
    
    //store the number of inches at the supplied address
    if (inPtr) {
    printf("storing %.2f to the address %p\n", inches,inPtr);
    *inPtr = inches;
    }
    
    
}
int main(int argc, const char * argv[])
{

   /* 
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    //pass the address of integerPart as an argument
    fractionPart = modf(pi, &integerPart);
    
    //find the value stored in integerPart
    printf("integerPart = %.0f, fractionPart = %.2f\n",integerPart,fractionPart);
    return 0;
    */
    
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.\n",meters,feet,inches);
}

