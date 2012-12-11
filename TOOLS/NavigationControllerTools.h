//
//  NavigationControllerTools.h
//  TOOLS
//
//  Created by Michal Racek on 12/4/12.
//  Copyright (c) 2012 Michal Racek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NavigationControllerTools : NSObject


/**
 * Sets custom title as UILabel into passed controller with defined font.
 *
 * @param aTitle title string which will be set.
 * @param aFont font to be used for title UILabel font.
 * @param aColor color to be used for title UILabel text color.
 * @param aController controller to which will be the title added.
 *
 **/
+(void)setTitle:(NSString*) aTitle withFont:(UIFont*) aFont withColor:(UIColor*) aColor to:(UIViewController*) aController;


@end
