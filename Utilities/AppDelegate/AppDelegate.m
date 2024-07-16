/**
 * @file AppDelegate.m
 * @author [Your Name] ([Your Email])
 * @brief This is the implementation file for the AppDelegate class.
 *  It manages the application's lifecycle events.
 * @version 0.1
 * @date [Date]
 * 
 * @copyright [License]
 * 
 */

/* --- Imports --- */
#import "AppDelegate.h"
/* --- End of Imports --- */

/* --- Implementation --- */
@implementation AppDelegate

/* --- Application Lifecycle --- */

/**
 * @brief Called when the application is about to finish launching.
 * 
 * @param aNotification: The notification object.
 */
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    // Terminate the application when the last window is closed
    return YES;
}

/**
 * @brief Called when the application is about to finish launching.
 * 
 * @param aNotification: The notification object.
 */
- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    NSLog(@"Application will terminate.");
}

/**
 * @brief Called when the application is about to finish launching.
 * 
 * @param application: The singleton app object.
 * @param launchOptions: A dictionary indicating the reason the app was launched.
 * @return BOOL: YES if the app successfully handled the launch request, NO otherwise.
 */
- (BOOL)application:(NSNotification *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 * @brief Called when the application is about to enter the foreground.
 * 
 * @param application: The singleton app object.
 */
- (void)applicationWillEnterForeground:(NSNotification *)application {
    // Called as part of the transition from the background to the active state.
}

/**
 * @brief Called when the application has become active.
 * 
 * @param application: The singleton app object.
 */
- (void)applicationDidBecomeActive:(NSNotification *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive.
}

/**
 * @brief Called when the application is about to become inactive.
 * 
 * @param application: The singleton app object.
 */
- (void)applicationWillResignActive:(NSNotification *)application {
    // Pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates.
}

/**
 * @brief Called when the application is about to enter the background.
 * 
 * @param application: The singleton app object.
 */
- (void)applicationDidEnterBackground:(NSNotification *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
}

/* --- End of Application Lifecycle --- */

@end