
#import "PlayFromScrimmageViewController.h"

@implementation PlayFromScrimmageViewController

- (void)loadView
{	
	PlayFromScrimmageView *myView = [[PlayFromScrimmageView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	self.view = myView;
	[myView release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

-(BOOL)shouldAutorotate{
    return YES;
}

-(NSInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscapeRight;
}

- (void)dealloc
{
	[super dealloc];
}

@end

