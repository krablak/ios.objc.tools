//
//  MetroUITools.m
//  ST
//
//  Created by Michal Racek on 4/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIUtil.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIUtil


+(id)loadFromNib:(NSString*) aNibName
{
    id result = nil;
    NSArray* views = [[NSBundle mainBundle] loadNibNamed:aNibName owner:nil options:nil];    
    for (UIView *view in views) {
            result = view;
            break;
    }
    return result;
}

+(void)setCustomTitle:(UIViewController*) aController title:(NSString*) aTitle
{
    if(![[aController.navigationItem.titleView class]isKindOfClass:[UILabel class]]){
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont fontWithName:@"Futura" size:17.0];
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        label.text=aTitle;
        aController.navigationItem.titleView = label;
        aController.navigationItem.title = aTitle;
    }else{
        ((UILabel*)aController.navigationItem.titleView).text = aTitle;
        aController.navigationItem.title = aTitle;
    }
}

+(void)setNavigationBarBg:(UIImage*) aBgImage
{
    [[UINavigationBar appearance] setBackgroundImage:aBgImage forBarMetrics:UIBarMetricsDefault];
	[[UIToolbar appearance] setBackgroundImage:aBgImage forToolbarPosition:UIToolbarPositionAny barMetrics:UIBarMetricsDefault];
    
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    [attributes setValue:[UIFont fontWithName:@"Futura" size:15.0] forKey:UITextAttributeFont];
    [[UIBarButtonItem appearance] setTitleTextAttributes:attributes forState:UIControlStateNormal];
	
	[[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(-1.0, -4.0) forBarMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[UIImage imageNamed:@"nvbar-bck.png"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[UIImage imageNamed:@"nvbar-bck.png"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[UIImage imageNamed:@"nvbar-bck.png"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];

    
}

@end
