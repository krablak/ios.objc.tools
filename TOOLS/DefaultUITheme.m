//
//  DefaultUITheme.m
//  TOOLS
//
//  Created by Michal Racek on 12/1/12.
//  Copyright (c) 2012 Michal Racek. All rights reserved.
//

#import "DefaultUITheme.h"
#import <UIKit/UIKit.h>

@implementation DefaultUITheme


-(UIColor*)color:(UIThemeColors) aColorType
{
	UIColor* result = nil;
	switch (aColorType){
		case UIThemeColorBackground:
			result = [UIColor blackColor];
			break;
		case UIThemeColorDefaultButton:
			result = [UIColor blueColor];
			break;
		case UIThemeColorDefaultCell:
			result = [UIColor redColor];
			break;
		case UIThemeColorDefaultFont:
			result = [UIColor whiteColor];
			break;
		case UIThemeColorSpecialCell:
			result = [UIColor greenColor];
			break;
		default:
			result = [UIColor brownColor];
			break;
	}
	return result;
}


-(UIFont*)font:(UIThemeFont) aFontType
{
	UIFont* result = nil;
	switch (aFontType){
		case UIThemeFontBigger:
			result = [UIFont systemFontOfSize:15];
			break;
		case UIThemeFontDefault:
			result = [UIFont systemFontOfSize:15];
			break;
		case UIThemeFontLarge:
			result = [UIFont systemFontOfSize:15];
			break;
		case UIThemeFontHuge:
			result = [UIFont systemFontOfSize:15];
			break;
		default:
			result = [UIFont systemFontOfSize:15];
			break;
	}
	return result;
}

-(UIImage*)image:(UIThemeImage) aImage
{
	NSBundle *bundle = [NSBundle bundleForClass:[self class]];
	NSString *imagePath = [bundle pathForResource:@"default" ofType:@"png"];
	
	UIImage* result = nil;
	switch (aImage){
		case UIThemeImageBackButton:
			result = [UIImage imageWithContentsOfFile:imagePath];
			break;
		case UIThemeImageNavBarBg:
			result = [UIImage imageWithContentsOfFile:imagePath];
			break;
		case UIThemeImageNavBarButtonBg:
			result = [UIImage imageWithContentsOfFile:imagePath];
			break;
		case UIThemeImageRefreshButton:
			result = [UIImage imageWithContentsOfFile:imagePath];
			break;
		default:
			result = [UIImage imageWithContentsOfFile:imagePath];
			break;
	}
	return result;
}

@end
