/**
 * @file Window.m
 * @author Ozgur Tuna Ozturk
 * @brief Implementation of the Window class for creating and managing macOS application windows.
 * @version 0.1
 * @date 2024-06-19
 *
 * @copyright MIT License
 *
 */

#import "Window.h"
#import "../AppDelegate/AppDelegate.h"
#import "../Frame2/Frame2.h"

@implementation Window

    /* --- Initializers --- */

    /**
    * @brief Initializes a Window instance with a specified frame.
    * This initializer sets up the window with basic properties including title, background color, and default content view.
    * It also sets the AppDelegate for the application and creates a basic menu bar.
    *
    * @param frame The frame for the window, determining its size and position.
    *
    * @return An instance of Window.
    */
    - (instancetype)initWithFrame:(Frame2*)frame {
        self = [super init]; // Call the superclass's initializer.
        
        if (self) {
            self.frame = frame; // Assign the provided frame to the window.
            
            // Initialize the window with specified style masks and buffering.
            self.window = [[NSWindow alloc] initWithContentRect:frame.frame
                styleMask:NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskResizable | NSWindowStyleMaskMiniaturizable
                backing:NSBackingStoreBuffered 
                defer:NO];
            
            // Setup the shared application and its delegate.
            self.app = [NSApplication sharedApplication];
            [self.app setDelegate:[[AppDelegate alloc] init]];
            
            // Initialize the content view with the frame and set it to the window.
            self.contentView = [[NSView alloc] initWithFrame:frame.frame];
            [self.window setTitle:@"Window"];
            [self.window setBackgroundColor:[NSColor whiteColor]];
            
            // Setup the menu bar and application menu with a quit option.
            NSMenu *menuBar = [[NSMenu alloc] init];
            NSMenuItem *appMenuItem = [[NSMenuItem alloc] init];
            [menuBar addItem:appMenuItem];
            [NSApp setMainMenu:menuBar];
            
            NSMenu *appMenu = [[NSMenu alloc] initWithTitle:@"test"];
            NSMenuItem *quitMenuItem = [[NSMenuItem alloc] initWithTitle:@"Quit test" action:@selector(terminate:) keyEquivalent:@"q"];
            [appMenu addItem:quitMenuItem];
            [appMenuItem setSubmenu:appMenu];
            
            // Finalize window setup by making it key and ordering front.
            [NSApp activateIgnoringOtherApps:YES];
            [self.window makeKeyAndOrderFront:nil];
            [self.window setContentView:self.contentView];
        }
        return self;
    }

    /**
    * @brief Class method to initialize a Window instance with a specified frame.
    * This is a convenience method that directly returns a new Window instance.
    *
    * @param frame The frame for the window.
    *
    * @return A new Window instance.
    */
    + (instancetype)initWithFrame:(Frame2*)frame {
        return [[Window alloc] initWithFrame:frame];
    }

    /**
    * @brief Class method to initialize a Window instance with specified dimensions.
    * This method creates a Frame2 instance with the given dimensions and then initializes a Window instance.
    *
    * @param x The x-coordinate of the window.
    * @param y The y-coordinate of the window.
    * @param width The width of the window.
    * @param height The height of the window.
    *
    * @return A new Window instance.
    */
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y Width:(CGFloat)width Height:(CGFloat)height {
        Frame2 *frame = [Frame2 initWithX:x Y:y Width:width Height:height];
        return [[Window alloc] initWithFrame:frame];
    }

    /**
    * @brief C function to initialize a Window instance with specified dimensions.
    * This function is a wrapper around the Objective-C initialization, providing a C interface.
    *
    * @param x The x-coordinate of the window.
    * @param y The y-coordinate of the window.
    * @param width The width of the window.
    * @param height The height of the window.
    *
    * @return A pointer to a new Window instance.
    */
    Window* initWindow(float x, float y, float width, float height) {
        return [[Window alloc] initWithFrame:[Frame2 initWithX:(CGFloat)x Y:(CGFloat)y Width:(CGFloat)width Height:(CGFloat)height]];
    }

    /* --- End of Initializers --- */

    /* --- Deinitializers --- */

    /**
    * @brief Deallocates the memory occupied by the Window instance.
    * This method ensures proper cleanup of the Window instance upon deallocation.
    */
    - (void)dealloc {
        [super dealloc];
    }

    /**
    * @brief C function to deallocate a Window instance.
    * This function provides a C interface for deallocating a Window instance.
    * @param window A pointer to the Window instance to be deallocated.
    */
    void freeWindow(Window* window) {
        [window dealloc];
    }

    /* --- End of Deinitializers --- */

    /* --- Methods --- */

    /**
    * @brief Shows the window on the screen.
    * This method makes the window key and orders it to the front, effectively displaying it.
    */
    - (void)show {
        [self.window makeKeyAndOrderFront:nil];
        [self.app run];
    }
    void showWindow(Window* window) {
        [window show];
    }

    /**
    * @brief Hides the window from the screen.
    * This method orders the window out, effectively hiding it without closing it.
    */
    - (void)hide {
        [self.window orderOut:nil];
    }
    void hideWindow(Window* window) {
        [window hide];
    }

    /**
    * @brief Closes the window.
    * This method closes the window, effectively removing it from the screen and terminating any associated processes.
    */
    - (void)close {
        [self.window close];
    }
    void closeWindow(Window* window) {
        [window close];
    }

    /* --- End of Methods --- */
@end