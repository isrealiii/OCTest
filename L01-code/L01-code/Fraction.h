//
//  Fraction.h
//  OCTest
//
//  Created by Isreal on 15/11/25.
//  Copyright © 2015年 Isreal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject {
    
    int n1;
    int n2;

}

-(void) print;

-(void) setN1: (int) n;

-(void) setN2: (int) n;

-(void) setNumber: (int) number1 number2: (int) number2;

-(Fraction*) initNumber: (int) number1 number2: (int) number2;

-(int) n1;

-(int) n2;

@end