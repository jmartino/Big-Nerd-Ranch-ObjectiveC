//
//  main.c
//  ifthenelse
//
//  Created by jm on 12/20/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 20;
    int j = 25;
    int k = (i>j) ? 10 : 5;
    
    if (5 < j-k) {
        printf("the first\n");
    } else if (j>i) {
        printf("the second\n");
    } else {
        printf("neither\n");
    }
    return 0;
}

