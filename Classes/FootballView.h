
#import <UIKit/UIKit.h>
#import "Defines.h"
 
@interface FootballView : UIView
{
    CGContextRef context;
    float length;
    float xPos;
    float yPos;
}

- (void)setContext;
- (void)setLength;
- (void)setOrigin;
- (void)drawBody;
- (void)drawLaces;

@end
