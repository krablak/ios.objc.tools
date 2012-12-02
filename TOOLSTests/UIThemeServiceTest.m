//
//  UIThemeServiceTest.m
//  TOOLS
//
//  Created by Michal Racek on 12/1/12.
//  Copyright (c) 2012 Michal Racek. All rights reserved.
//

#import "UIThemeServiceTest.h"
#import "UIThemeService.h"
#import "DefaultUITheme.h"

@implementation UIThemeServiceTest

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

/**
 * Checks using themes without setting any custom theme.
 **/
- (void)testUseWithoutSettingTheme
{
	[self assertNotNilThemeResults];
}

/**
 * Checks that setting nil theme do not fails. And some results are returned when getting values.
 **/
- (void)testSetNilTheme
{
	[UIThemeService setTheme:nil];
	STAssertTrue(true,@"Setting nil custom theme do not fail.");
	[self assertNotNilThemeResults];
}

/**
 * Basic check of usage default theme set as custom theme.
 **/
- (void)testSetDefaultTheme
{
	DefaultUITheme* dft = [[DefaultUITheme alloc] init];
	[UIThemeService setTheme:dft];
	[self assertNotNilThemeResults];
}

/**
 * Helper method which performs nil assert on all return values from theme service.
 **/
-(void)assertNotNilThemeResults
{
	//Fonts
	STAssertNotNil([UIThemeService font:UIThemeFontBigger],@"Not nil font sould be returned.");
	STAssertNotNil([UIThemeService font:UIThemeFontDefault],@"Not nil font sould be returned.");
	STAssertNotNil([UIThemeService font:UIThemeFontHuge],@"Not nil font sould be returned.");
	STAssertNotNil([UIThemeService font:UIThemeFontLarge],@"Not nil font sould be returned.");
	
	//Colors
	STAssertNotNil([UIThemeService color:UIThemeColorBackground],@"Not nil color sould be returned.");
	STAssertNotNil([UIThemeService color:UIThemeColorDefaultButton],@"Not nil color sould be returned.");
	STAssertNotNil([UIThemeService color:UIThemeColorDefaultCell],@"Not nil color sould be returned.");
	STAssertNotNil([UIThemeService color:UIThemeColorDefaultFont],@"Not nil color sould be returned.");
	STAssertNotNil([UIThemeService color:UIThemeColorSpecialCell],@"Not nil color sould be returned.");
	
	//Images
	STAssertNotNil([UIThemeService image:UIThemeImageBackButton],@"Not nil mage sould be returned.");
	STAssertNotNil([UIThemeService image:UIThemeImageNavBarBg],@"Not nil mage sould be returned.");
	STAssertNotNil([UIThemeService image:UIThemeImageNavBarButtonBg],@"Not nil mage sould be returned.");
	STAssertNotNil([UIThemeService image:UIThemeImageRefreshButton],@"Not nil mage sould be returned.");
}


@end
