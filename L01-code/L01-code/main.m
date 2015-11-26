//
//  main.m
//  OCTest
//
//  Created by Isreal on 15/11/25.
//  Copyright © 2015年 Isreal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Access.h"
#import "ClassA.h"
#import "Cup.h"
#import "OverflowException.h"
#import "WarningException.h"

int main(int argc, const char * argv[]) {
    
    
    @autoreleasepool {
        
        printf("hello world\n");
        
        //***********************  Fraction  ****************************/
        
        Fraction *frac = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        Fraction *frac3 = [[Fraction alloc] initNumber:100 number2:500];
        
        [frac setN1: 1];
        [frac setN2: 5];
        
        [frac2 setNumber:10 number2:50];
        
        printf("The fraction is: ");
        
        [frac print];
        
        printf("fraction2 is: ");
        
        [frac2 print];
        
        printf("fraction3 is: ");
        
        [frac3 print];
        
        
        // **********************  Access  *****************************/
        
        Access *access = [[Access alloc] init];
        
        access->publicVar = 5;
        
        printf("public var %i\n", access->publicVar);
        
        
        // **********************  ClassA  *****************************/
        
        ClassA *c1 = [[ClassA alloc] init];
        ClassA *c2 = [[ClassA alloc] init];
        
//        printf("ClassA count: %i\n", [ClassA initCount]);
        
        // **********************  Exception  *****************************/
        
        Cup *cup = [[Cup alloc] init];
        
        int i;
        
        for (i = 0; i < 4; i++) {
            
            [cup fill];
            [cup print];
            
        }
        
        for (i =0; i < 7; i++) {
            @try {
                [cup fill];
            }
            @catch (WarningException *e) {
                printf("%s : ", [[e name] cString]);
            }
            @catch (OverflowException *e) {
                printf("%s : ", [[e name] cString]);
            }
            @finally {
                [cup print];
            }
        }
        
        @try {
            [cup setLevel: -1];
        }
        @catch (NSException *e) {
            printf("%s : %s\n", [[e name] cString], [[e reason] cString]);
        }
        @finally {
            
        }
        
        return 0;
    }
}
