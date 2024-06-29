/**
 * @file Window.h
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the header file for Window class. The window class generates a new MacOS app window,
 *  where all the objects can be displayed.
 * @version 0.1
 * @date 2024-06-19
 * 
 * @copyright MIT License (c) 2024
 * 
 */

/* --- Imports --- */
#import <Cocoa/Cocoa.h>
#import "../Frame2/Frame2.h"
/* --- End of Imports --- */

/* --- Window Object --- */
@interface Window : NSObject

    /* --- Properties --- */
    @property (nonatomic, assign) Frame2 *frame;        // 2D Frame of the window
    @property (nonatomic, assign) NSWindow *window;     // MacOS window object
    @property (nonatomic, assign) NSApplication *app;   // MacOS application object

    @property (nonatomic, assign) NSString *title;      // Title of the window

    @property (nonatomic, assign) NSColor *backgroundColor;  // Background color of the window
    @property (nonatomic, assign) NSView *contentView;      // Content view of the window
    /* --- End of Properties --- */

    /* --- Initializers --- */
    - (instancetype)initWithFrame:(Frame2*)frame;       // Create a new window with a frame
    + (instancetype)initWithFrame:(Frame2*)frame;       // Create a new window with a frame and allocate memory for it
    /* --- End of Initializers --- */

    /* --- Deinitializers --- */
    - (void)dealloc;      // Deallocate the memory of the window
    /* --- End of Deinitializers --- */

    /* --- Methods --- */
    - (void)show;       // Show the window
    - (void)hide;       // Hide the window
    - (void)close;      // Close the window

    /*- (void)setTitle:(NSString*)title;  // Set the title of the window
    - (void)setBackgroundColor:(NSColor*)color;  // Set the background color of the window
    - (void)setFrame:(Frame2*)frame;  // Set the frame of the window
    - (void)setContentView:(NSView*)view;  // Set the content view of the window
    - (void)setDelegate:(id)delegate;  // Set the delegate of the window
    - (void)setStyleMask:(NSWindowStyleMask)styleMask;  // Set the style mask of the window
    - (void)setLevel:(NSWindowLevel)level;  // Set the level of the window
    - (void)setIsVisible:(BOOL)isVisible;  // Set the visibility of the window
    - (void)setIsReleasedWhenClosed:(BOOL)isReleasedWhenClosed;  // Set the release behavior of the window
    - (void)setIsMovable:(BOOL)isMovable;  // Set the movability of the window
    - (void)setIsResizable:(BOOL)isResizable;  // Set the resizability of the window
    - (void)setIsClosable:(BOOL)isClosable;  // Set the closability of the window
    - (void)setIsMiniaturizable:(BOOL)isMiniaturizable;  // Set the miniaturizability of the window
    - (void)setIsZoomable:(BOOL)isZoomable;  // Set the zoomability of the window
    - (void)setIsFloatingPanel:(BOOL)isFloatingPanel;  // Set the floating panel behavior of the window
    - (void)setIsOpaque:(BOOL)isOpaque;  // Set the opacity of the window
    - (void)setHasShadow:(BOOL)hasShadow;  // Set the shadow behavior of the window
    - (void)setAcceptsMouseMovedEvents:(BOOL)acceptsMouseMovedEvents;  // Set the mouse moved event behavior of the window
    - (void)setIgnoresMouseEvents:(BOOL)ignoresMouseEvents;  // Set the mouse event behavior of the window
    - (void)setRestorable:(BOOL)restorable;  // Set the restorability of the window
    - (void)setExcludedFromWindowsMenu:(BOOL)excludedFromWindowsMenu;  // Set the exclusion from windows menu behavior of the window*/
    /* --- End of Methods --- */

@end
/* --- End of Window Object --- */