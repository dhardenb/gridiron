
#import <Foundation/Foundation.h>

@protocol DefenseViewTouchEvents <NSObject>

- (void)playerTouchesBegan:(CGPoint)hitPointTest;
- (void)playerTouchesMoved:(CGPoint)hitPointTest;
- (void)playerTouchesEnded:(CGPoint)hitPointTest;

@end
