//
//  main.c
//  TwoFloats
//
//  Created by jm on 12/20/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    float pi = 3.14;
    float ft = 42.0;
    double sum = pi+ft;
    printf("the sum of %.2f and %.1f is %.2f.\n",pi, ft, sum);
    return 0;
}

