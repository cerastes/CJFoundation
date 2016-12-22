//
//  CJBase.h
//  CJFoundation
//
//  Created by jimmy Chan on 2016/12/21.
//  Copyright © 2016年 jimmychan. All rights reserved.
//

#ifndef CJBase_h
#define CJBase_h

#define user_defaults_get_bool(key)   [[NSUserDefaults standardUserDefaults] boolForKey:key]
#define user_defaults_get_int(key)    ((int) [[NSUserDefaults standardUserDefaults] integerForKey:key])
#define user_defaults_get_double(key) [[NSUserDefaults standardUserDefaults] doubleForKey:key]
#define user_defaults_get_string(key) cw_safeString([[NSUserDefaults standardUserDefaults] stringForKey:key])
#define user_defaults_get_array(key)  [[NSUserDefaults standardUserDefaults] arrayForKey:key]
#define user_defaults_get_object(key) [[NSUserDefaults standardUserDefaults] objectForKey:key]

#define user_defaults_set_bool(key, b)   { [[NSUserDefaults standardUserDefaults] setBool:b    forKey:key]; [[NSUserDefaults standardUserDefaults] synchronize]; }
#define user_defaults_set_int(key, i)    { [[NSUserDefaults standardUserDefaults] setInteger:i forKey:key]; [[NSUserDefaults standardUserDefaults] synchronize]; }
#define user_defaults_set_double(key, d) { [[NSUserDefaults standardUserDefaults] setDouble:d  forKey:key]; [[NSUserDefaults standardUserDefaults] synchronize]; }
#define user_defaults_set_string(key, s) { [[NSUserDefaults standardUserDefaults] setObject:s  forKey:key]; [[NSUserDefaults standardUserDefaults] synchronize]; }
#define user_defaults_set_array(key, a)  { [[NSUserDefaults standardUserDefaults] setObject:a  forKey:key]; [[NSUserDefaults standardUserDefaults] synchronize]; }
#define user_defaults_set_object(key, o) { [[NSUserDefaults standardUserDefaults] setObject:o  forKey:key]; [[NSUserDefaults standardUserDefaults] synchronize]; }

#define is_ipad()   (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define is_iphone() (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define APP_DISPLAY_NAME    [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"]
#define APP_VERSION     	[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]

#define SCREEN_BOUNDS [[UIScreen mainScreen] bounds]
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
#define SCREEN_WIDTH  [[UIScreen mainScreen] bounds].size.width

#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size)) : NO)


#define reusableCell(indetifier)  [tableView dequeueReusableCellWithIdentifier:indetifier]
#define nibView(nibName) [[[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil] objectAtIndex:0]

inline __attribute__((always_inline)) NSString *cw_safeString(NSString *str) { return str ? str : @""; }

#endif /* CJBase_h */
