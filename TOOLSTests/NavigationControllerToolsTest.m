//
//  NavigationControllerToolsTest.m
//  TOOLS
//
//  Created by Michal Racek on 12/4/12.
//  Copyright (c) 2012 Michal Racek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "NavigationControllerToolsTest.h"
#import "NavigationControllerTools.h"

@implementation NavigationControllerToolsTest

/**
 * Call with nils. It should not ends with error.
 **/
- (void)testUseWithNils{
	[NavigationControllerTools setTitle:nil withFont:nil withColor:nil to:nil];
	[NavigationControllerTools setTitle:@"Title" withFont:nil withColor:nil to:nil];
	[NavigationControllerTools setTitle:@"Title" withFont:[UIFont systemFontOfSize:10] withColor:nil to:nil];
	[NavigationControllerTools setTitle:@"Title" withFont:[UIFont systemFontOfSize:10] withColor:[UIColor blackColor] to:nil];
	[NavigationControllerTools setTitle:@"Title" withFont:[UIFont systemFontOfSize:10] withColor:[UIColor blackColor] to:[[UIViewController alloc]init]];
	STAssertTrue(true, @"Passed without error");
}

/**
 * Stanadart method use.
 **/
- (void)testNormalUse{
	NSString* title = @"Title";
	UIFont* font = [UIFont systemFontOfSize:15];
	UIColor* color = [UIColor blackColor];
	UIViewController* contrl = [[UIViewController alloc]init];
	
	[NavigationControllerTools setTitle:title withFont:font withColor:color to:contrl];
	STAssertEqualObjects(title, contrl.navigationItem.title, @"Check title");
	STAssertEqualObjects(font, ((UILabel*)contrl.navigationItem.titleView).font, @"Check font");
	STAssertEqualObjects(color, ((UILabel*)contrl.navigationItem.titleView).textColor, @"Check Color");
}

@end
