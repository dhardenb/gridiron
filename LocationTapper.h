
#import <Foundation/Foundation.h>

@protocol LocationTapper <NSObject>

- (void)locationTapped:(int)locationSelected;
- (int)getLocationBeingTapped;
- (void)setLocationBeingTapped:(int)location;

@end
