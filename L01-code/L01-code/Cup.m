//
//  Cup.m
//  L01-code
//
//  Created by Isreal on 15/11/26.
//  Copyright © 2015年 Isreal. All rights reserved.
//

#import "Cup.h"
#import "WarningException.h"
#import "OverflowException.h"
#import "UnderflowException.h"
#import <Foundation/Foundation.h>
#import <Foundation/NSException.h>
#import <Foundation/NSString.h>

@implementation Cup

-(id) init {
    
    self = [super init];
    
    if (self) {
        [self setLevel: 0];
    }
    
    return self;
}

-(int) level {
    return level;
}

-(void) setLevel:(int)l {
    level = l;
    
    if (level > 100) {
        
        // throw overflow
        
        NSException *e = [OverflowException exceptionWithName:@"OverflowException" reason:@"The level is above 100" userInfo:nil];
        
        @throw e;
        
    } else if (level >= 50) {
        
        // throw warning
        
        NSException *e = [WarningException exceptionWithName:@"WarningException" reason:@"The level is above or at 50" userInfo:nil];
        
        @throw e;
        
    } else if (level < 0) {
        
        // throw exception
        
        NSException *e = [NSException exceptionWithName:@"UnderflowException" reason:@"The level is below 0" userInfo:nil];
        
        @throw e;
        
    }
    
}

-(void) fill {
    
    [self setLevel: level + 10];
    
}

-(void) empty {
    
    [self setLevel: level - 10];
    
}

-(void) print {
    
    printf("Level is %i\n", level);
    
}



@end