/**
 * @file Window.m
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the implementation file for Window class. The window class generates a new MacOS app window,
 *  where all the objects can be displayed.
 * @version 0.1
 * @date 2024-06-19
 * 
 * @copyright MIT License (c) 2024
 * 
 */

 /* --- Imports --- */
#import "Window.h"
#import "../AppDelegate/AppDelegate.h"
/* --- End of Imports --- */

/* --- Implementation --- */
@implementation Window

    /* --- Initializers --- */

    /**
     * @brief Initializes a new instance of the Window class with the given Frame2 object.
     *
     * @param Frame2 The 2D frame of the window.
     *
     * @return A new instance of the Window class.
     */
    - (instancetype)initWithFrame:(Frame2*)frame {
        self = [super init];                                // Call the super class's initializer.
        
        if (self) {
            self.frame = frame;                             // Set the frame of the window.

            // Create a new window with the given frame.
            self.window = [[NSWindow alloc] initWithContentRect:frame.frame
                styleMask:NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskResizable | NSWindowStyleMaskMiniaturizable
                backing:NSBackingStoreBuffered 
                defer:NO];
            
            self.app = [NSApplication sharedApplication];   // Get the shared application.
            [self.app setDelegate:[[AppDelegate alloc] init]];      // Set the app delegate to the AppDelegate class.

            self.title = @"Window";                         // Set the default title of the window.
            self.backgroundColor = [NSColor whiteColor];    // Set the default background color of the window.
            self.contentView = [[NSView alloc] initWithFrame:frame.frame]; // Set the default content view of the window.


            // Set the window's title.
            [self.window setTitle:self.title];

            // Set the window's background color.
            [self.window setBackgroundColor:self.backgroundColor];

            // Add the window to the application
            [NSApp setWindowsMenu:[[[NSMenu alloc] init] autorelease]];
            [NSApp setMainMenu:[[[NSMenu alloc] init] autorelease]];
            [NSApp activateIgnoringOtherApps:YES];
            [self.window makeKeyAndOrderFront:nil];

            // Set the window's content view.
            [self.window setContentView:self.contentView];

            // Create the menu bar
            NSMenu *menuBar = [[NSMenu alloc] init];

            // Create the application menu
            NSMenuItem *appMenuItem = [[NSMenuItem alloc] init];
            [menuBar addItem:appMenuItem];
            [NSApp setMainMenu:menuBar];

            NSMenu *appMenu = [[NSMenu alloc] initWithTitle:@"test"];
            NSMenuItem *quitMenuItem = [[NSMenuItem alloc] initWithTitle:@"Quit test" action:@selector(terminate:) keyEquivalent:@"q"];
            [appMenu addItem:quitMenuItem];
            [appMenuItem setSubmenu:appMenu];

            // Add the window to the application
            [NSApp activateIgnoringOtherApps:YES];
            [self.window makeKeyAndOrderFront:nil];
        }
        return self;
    }

    /**
     * @brief Initializes a new instance of the Window class with the given Frame2 object
     *  and allocates memory for the given content view.
     *
     * @param Frame2 The 2D frame of the window.
     *
     * @return A new instance of the Window class.
     */
    + (instancetype)initWithFrame:(Frame2*)frame {
        // Return a new instance of the Window class with the given frame.
        return [[Window alloc] initWithFrame:frame];;
    }
    /* --- End of Initializers --- */

    /* --- Deinitializers --- */

    /**
     * @brief Deallocates the memory occupied by the current instance of the Window class.
     */
    - (void)dealloc {
        // Deallocate the memory occupied by the current instance of the Window class.
        [super dealloc];
    }
    /* --- End of Deinitializers --- */

    /* --- Methods --- */

    /**
     * @brief Shows the window on the screen.
     */
    - (void)show {
        [self.window makeKeyAndOrderFront:nil];
        // Run the application
        [self.app run];
    }

    /**
     * @brief Hides the window from the screen.
     */
    - (void)hide {
        [self.window orderOut:nil];
    }

    /**
     * @brief Closes the window.
     */
    - (void)close {
        [self.window close];
    }
    /* --- End of Methods --- */

@end
/* --- End of Implementation --- */