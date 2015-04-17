//
//  TitleView.h
//  Gridiron
//
//  Created by David Hardenbrook on 1/17/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Defines.h"

@interface TitleView : UIView
{
	UILabel *myUiLabel;
	NSString *myLabel;
}

- (void) setLabel:(NSString *)label;

@end
