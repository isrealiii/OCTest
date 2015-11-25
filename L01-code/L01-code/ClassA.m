//
//  ClassA.m
//  L01-code
//
//  Created by Isreal on 15/11/25.
//  Copyright © 2015年 Isreal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

@implementation ClassA

-(id) init {
    self = [super init];
    count++;
    return self;
}

+(int) intCount {
    return count;
}

+(void) initialize {
    count = 0;
}

@end