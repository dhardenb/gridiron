//
//  UnitTestManager.h
//  Gridiron
//
//  Created by David Hardenbrook on 9/1/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RollManager.h"

@interface UnitTestManager : NSObject
{
}

+ (void)testRollManagerRollTwoThreeSidedDice;
+ (void)testRollManagerRollTwoSixSidedDice;

@end
