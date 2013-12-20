//
//  main.c
//  Squarer
//
//  Created by jm on 12/20/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#include <stdio.h>
int Square(squareMe)
{
    return squareMe * squareMe;
    
}

int main(int argc, const char * argv[])
{

   
    int squareMe = 5;
    printf("\"%d\" squared is \"%d\".\n",squareMe,Square(squareMe));
    return 0;
}

