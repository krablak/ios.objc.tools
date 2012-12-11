//
//  NavigationControllerTools.m
//  TOOLS
//
//  Created by Michal Racek on 12/4/12.
//  Copyright (c) 2012 Michal Racek. All rights reserved.
//

#import "NavigationControllerTools.h"

/**
 * Provides set of helper class level methods making life with UINavigationController easier.
 */
@implementation NavigationControllerTools


+(void)setTitle:(NSString*) aTitle withFont:(UIFont*) aFont withColor:(UIColor*) aColor to:(UIViewController*) aController
{
	if(!aTitle || !aFont || !aColor || !aController){
		NSLog(@"ERROR : Some of passed parameters is nil. Title will be not set.");
	}else{
		NSLog(@"Setting custom title '%@' with font '%@' and color '%@' to controller '%@'",aTitle,aFont,aColor,aController);
		if(![[aController.navigationItem.titleView class]isKindOfClass:[UILabel class]]){
			if(aController.navigationItem){
				UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
				label.backgroundColor = [UIColor clearColor];
				label.font = aFont;
				label.textAlignment = NSTextAlignmentCenter;
				label.textColor = aColor;
				label.text=aTitle;
				aController.navigationItem.titleView = label;
				aController.navigationItem.title = aTitle;
			}else{
				NSLog(@"ERROR : Controller has not navigation item defined.");
			}
		}else{
			((UILabel*)aController.navigationItem.titleView).text = aTitle;
			aController.navigationItem.title = aTitle;
		}
	}
}

@end
