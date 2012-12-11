//
//  MetroUITools.h
//  ST
//
//  Created by Michal Racek on 4/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface UITools : NSObject

+(id)loadFromNib:(NSString*) aNibName;

+(void)setCustomTitle:(UIViewController*) aController title:(NSString*) aTitle;

+(void)setNavigationBarBg:(UIImage*) aBgImage;

@end
