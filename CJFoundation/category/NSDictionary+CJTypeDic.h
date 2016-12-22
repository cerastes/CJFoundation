//
//  NSDictionary+CJTypeDic.h
//  CJFoundation
//
//  Created by jimmy Chan on 2016/12/21.
//  Copyright © 2016年 jimmychan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (CJTypeDic)
-(id)objectForNotNullKey:(id)aKey;
-(id)objectForStringlKey:(id)aKey;
@end
