//
//  Access.h
//  L01-code
//
//  Created by Isreal on 15/11/25.
//  Copyright © 2015年 Isreal. All rights reserved.
//

#ifndef Access_h
#define Access_h


#endif /* Access_h */

#import <Foundation/NSObject.h>

@interface Access : NSObject {
    
@public
    int publicVar;
    
@private
    int privateVar1;
    int privateVar2;
    
@protected
    int protectedVar;
    
}

@end