//
//  Cup.h
//  L01-code
//
//  Created by Isreal on 15/11/26.
//  Copyright © 2015年 Isreal. All rights reserved.
//

#ifndef Cup_h
#define Cup_h


#endif /* Cup_h */

#import <Foundation/NSObject.h>

@interface Cup : NSObject {

    int level;
}

-(int) level;

-(void) setLevel: (int) l;

-(void) fill;

-(void) empty;

-(void) print;

@end