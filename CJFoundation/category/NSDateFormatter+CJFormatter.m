//
//  NSDateFormatter+CJFormatter.m
//  CJFoundation
//
//  Created by jimmy Chan on 2016/12/21.
//  Copyright © 2016年 jimmychan. All rights reserved.
//

#import "NSDateFormatter+CJFormatter.h"

@implementation NSDateFormatter (CJFormatter)
+ (instancetype)initWithString:(NSString *)formatter {
    NSTimeZone* GTMzone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:GTMzone];
    [dateFormatter setDateFormat:formatter];  //大写HH表示24小时制
    return dateFormatter;
}

@end
