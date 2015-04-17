
#import <Foundation/Foundation.h>

@protocol PlayerMover <NSObject>

- (int)getPlayerCurrentlyMoving;
- (void)setPlayerCurrentlyMoving:(int)playerPosition;

@end
