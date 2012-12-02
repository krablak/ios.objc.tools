//
//  UIThemeService.h
//  TOOLS
//
//  Created by Michal Racek on 12/1/12.
//  Copyright (c) 2012 Michal Racek. All rights reserved.
//

#import "UIThemeService.h"
#import "DefaultUITheme.h"

@interface UIThemeService(){}
    +(id<CustomUITheme>)getTheme;
@end

@implementation UIThemeService

/**
 * Reference to inner theme which will be used to provide values from UIThemeService.
 **/
static id<CustomUITheme> innerTheme = nil;

+(id<CustomUITheme>)getTheme
{
    if(innerTheme == nil){
		NSLog(@"ERROR : Cannot get null inner theme. The default one will be used.");
        innerTheme = [[DefaultUITheme alloc] init];
    }
    return innerTheme;
}

+(void)setTheme:(id<CustomUITheme>) aInnerTheme
{
	if(aInnerTheme == nil){
		NSLog(@"ERROR : Cannot set null inner theme. The default one will be used.");
		innerTheme = [[DefaultUITheme alloc] init];
	}else{
		innerTheme = aInnerTheme;
	}
}

+(UIColor*)color:(UIThemeColors) aColorType
{
	return [innerTheme color:aColorType];
}

+(UIFont*)font:(UIThemeFont) aFontType
{
	return [innerTheme font:aFontType];
}

+(UIImage*)image:(UIThemeImage) aImage
{
	return [innerTheme image:aImage];
}

@end
