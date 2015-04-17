
#import "PlayerShadowView.h"

@implementation PlayerShadowView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    float length;
    float xPos;
    float yPos;
    
    if (self.bounds.size.width <  self.bounds.size.height)
    {
        length = self.bounds.size.width;
    }
    else
    {
        length = self.bounds.size.height;
    }
    
    xPos = self.bounds.size.width / 2 - length / 2;
    yPos = self.bounds.size.height / 2 - length / 2;
	
    CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 0.33);
    
    CGContextAddEllipseInRect(context, CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height));
    
    CGContextFillPath(context);

    CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)dealloc
{
    [super dealloc];
}

@end
