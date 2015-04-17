
#import <UIKit/UIKit.h>

@interface FootballShadowView : UIView
{
    CGContextRef context;
    float length;
    float xPos;
    float yPos;
}

- (void)setContext;
- (void)setLength;
- (void)setOrigin;
- (void)drawShadow;

@end
