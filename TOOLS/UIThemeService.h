//
//  UIThemeService.h
//  TOOLS
//
//  Created by Michal Racek on 12/1/12.
//  Copyright (c) 2012 Michal Racek. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "CustomUITheme.h"

/**
 *
 * Provides access to theme color,fonts and images values. 
 *
 **/
@interface UIThemeService : NSObject

/**
 * Sets theme to service. This theme will used to provide its values by its class methods.
 *
 * @param aInnerTheme aInnerTheme theme instance to be set into service.
 **/
+(void)setTheme:(id<CustomUITheme>) aInnerTheme;

/**
 * Returns theme color by specified parameter.
 *
 * @param aColorType ThemeColors enum value which specifies requested color.
 *
 * @return theme color by specified parameter.
 **/
+(UIColor*)color:(UIThemeColors) aColorType;

/**
 * Returns theme font by specified parameter.
 *
 * @param aFontType ThemeFont enum value which specifies requested font.
 *
 * @return theme font by specified parameter.
 **/
+(UIFont*)font:(UIThemeFont) aFontType;

/**
 * Returns theme image by specified parameter.
 *
 * @param aImage ThemeImage enum value which specifies requested image.
 *
 * @return theme font by specified parameter.
 **/
+(UIImage*)image:(UIThemeImage) aImage;

@end
