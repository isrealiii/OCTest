//
//  Fraction.m
//  OCTest
//
//  Created by Isreal on 15/11/25.
//  Copyright © 2015年 Isreal. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(void) print {
    printf("%i %i\n", n1, n2);
}

-(void) setN1:(int)n {
    n1 = n;
}

-(void) setN2:(int)n {
    n2 = n;
}

-(void) setNumber:(int)number1 number2:(int)number2 {
    n1 = number1;
    n2 = number2;
}

-(Fraction*) initNumber:(int)number1 number2:(int)number2 {
    
    self = [super init];
    
    if (self) {
        [self setNumber:number1 number2:number2];
    }
    
    return self;
    
}

-(int) n1 {
    return n1;
}

-(int) n2 {
    return n2;
}

@end