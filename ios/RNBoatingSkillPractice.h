//
//  RNBoatingSkillPractice.h
//  RNBoatingSkillLore
//
//  Created by Charmee on 10/23/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNBoatingSkillPractice : UIResponder

+ (instancetype)boatingPractice_shared;
- (BOOL)boatingPractice_tryThisWay;
- (UIInterfaceOrientationMask)boatingPractice_getOrientation;
- (UIViewController *)boatingPractice_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
