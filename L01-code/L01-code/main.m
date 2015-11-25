//
//  main.m
//  OCTest
//
//  Created by Isreal on 15/11/25.
//  Copyright © 2015年 Isreal. All rights reserved.
//

#import "Fraction.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    
    @autoreleasepool {
        
        printf("hello world\n");
        
        Fraction *frac = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        Fraction *frac3 = [[Fraction alloc] initNumber:100 number2:500];
        
        [frac setN1: 1];
        [frac setN2: 5];
        
        [frac2 setNumber:10 number2:50];
        
        printf("The fraction is: ");
        
        [frac print];
        
        printf("\nfraction2 is: ");
        
        [frac2 print];
        
        printf("\nfraction3 is: ");
        
        [frac3 print];
        
        return 0;
    }
}
