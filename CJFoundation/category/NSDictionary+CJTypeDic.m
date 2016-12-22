//
//  NSDictionary+CJTypeDic.m
//  CJFoundation
//
//  Created by jimmy Chan on 2016/12/21.
//  Copyright © 2016年 jimmychan. All rights reserved.
//

#import "NSDictionary+CJTypeDic.h"

@implementation NSDictionary (CJTypeDic)
-(id)objectForNotNullKey:(id)aKey{
    if ([[self objectForKey:aKey] isKindOfClass:[NSNull class]] ) {
        return @"";
    }
    return [self objectForKey:aKey];
}
-(id)objectForStringlKey:(id)aKey{
    if ([[self objectForKey:aKey] isKindOfClass:[NSNull class]] ) {
        return @"";
    }
    return [NSString stringWithFormat:@"%@",[self objectForNotNullKey:aKey]];
}

@end
