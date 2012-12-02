//
//  CustomUITheme.h
//  TOOLS
//
//  Created by Michal Racek on 12/1/12.
//  Copyright (c) 2012 Michal Racek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 * Defines methods which should be implemented for each app theme.
 **/
@protocol CustomUITheme <NSObject>

/**
 * Defined color types provided by theme.
 **/
typedef NS_ENUM(NSInteger, UIThemeColors) {
    UIThemeColorBackground = 0,
    UIThemeColorDefaultCell = 1,
    UIThemeColorSpecialCell = 2,
	UIThemeColorDefaultButton = 3,
	UIThemeColorDefaultFont = 4,
};

/**
 * Defined font types provided by theme.
 **/
typedef NS_ENUM(NSInteger, UIThemeFont) {
    UIThemeFontDefault = 0,
    UIThemeFontBigger = 1,
	UIThemeFontLarge = 2,
	UIThemeFontHuge = 3
};

/**
 * Defined images provided by theme.
 **/
typedef NS_ENUM(NSInteger, UIThemeImage) {
    UIThemeImageNavBarBg = 0,
    UIThemeImageNavBarButtonBg = 1,
	UIThemeImageBackButton = 2,
	UIThemeImageRefreshButton = 3
};

@required

/**
 * Returns theme color by specified parameter.
 *
 * @param aColorType enum value which specifies requested color.
 *
 * @return theme color by specified parameter.
 **/
-(UIColor*)color:(UIThemeColors) aColorType;

/**
 * Returns theme font by specified parameter.
 *
 * @param aFontType enum value which specifies requested font.
 *
 * @return theme font by specified parameter.
 **/
-(UIFont*)font:(UIThemeFont) aFontType;

/**
 * Returns theme image by specified parameter.
 *
 * @param aImage enum value which specifies requested image.
 *
 * @return theme font by specified parameter.
 **/
-(UIImage*)image:(UIThemeImage) aImage;


@end
