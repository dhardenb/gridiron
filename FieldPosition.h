
#import <Foundation/Foundation.h>
#import "Distance.h"
#import "Down.h"
#import "LineOfScrimmage.h"
#import "Posession.h"

@interface FieldPosition : NSObject
{
    Distance *distance;
    Down *down;
    LineOfScrimmage *lineOfScimmage;
    Posession *posession;
}

@end
