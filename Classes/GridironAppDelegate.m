
#import "GridironAppDelegate.h"

@implementation GridironAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[GameManager initializeGameSettings];
    playFromScrimmageViewController = [[PlayFromScrimmageViewController alloc] init];
    window.rootViewController = playFromScrimmageViewController;
    [window makeKeyAndVisible];
	
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	[GameManager saveGameSettings];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{    
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	[GameManager saveGameSettings];
}

- (void)dealloc
{
    [playFromScrimmageViewController release];
    [super dealloc];
}

@end
