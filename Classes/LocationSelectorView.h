//
//  PlayerView.h
//  Gridiron
//
//  Created by David Hardenbrook on 1/17/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Defines.h"
#import "GameManager.h"
#import "LocationTapper.h"

@interface LocationSelectorView : UIView
{
	int position;
}

@property int position;

- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event;
- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event;

@end
