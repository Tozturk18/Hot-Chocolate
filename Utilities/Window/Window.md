# [Hot Chocolate](../../README.md) - Window Class (C & Objective-C)
**Last Updated:** July 14th, 2024 

## Overview
The `Window` class is an essential component of macOS applications developed using Objective-C. It encapsulates functionalities for creating, displaying, and managing application windows. This class provides methods for initializing windows with specific dimensions or frames, displaying the window on the screen, and handling user interactions.

## Table of Contents
- [Initializers](#initializers)
    - [-initWithFrame:](#initwithframe)
    - [+initWithFrame:](#initwithframe-1)
    - [+initWithX: Y: Width: Height:](#initwithx-y-width-height)
    - [initWindow](#initwindow)
- [Deinitializers](#deinitializers)
    - [-dealloc](#dealloc)
    - [freeWindow](#freewindow)
- [Window Methods](#window-methods)
    - [show:](#show---objective-c)
    - [hide:](#hide---objective-c)
    - [close:](#close---objective-c)
- [Usage](#usage)
    - [Objective-C Sample Code](#objective-c-sample-code)
    - [C Sample Code](#c-sample-code)

## Initializers

### [-initWithFrame:](./Window.m#L29)
This instance method initializes a `Window` object with the given `Frame2` 2D frame object.

- Parameters:
    - `frame` - The `Frame2` object representing the window's frame.

- Returns: A `Window` object initialized with the given frame.

**Example**
```objc
// Initialize a new window
Window *window = [[Window alloc] initWithFrame:frame];
```

---

### [+initWithFrame:](./Window.m#L77)
This class method initializes a `Window` object with the given `Frame2` 2D frame object. This method is a convenience initializer that calls the instance method `-initWithFrame:` internally and allocates memory for the new object.

- Parameters:
    - `frame` - The `Frame2` object representing the window's frame.

- Returns: A `Window` object initialized with the given frame.

**Example**
```objc
// Initialize a new window
Window *window = [Window initWithFrame:frame];
```

---

### [+initWithX: Y: Width: Height:](./Window.m#L92)
This class method initializes a `Window` object with the given `CGFloat` x and y coordinates, width, and height. This method is a convenience initializer that calls the instance method `-initWithFrame:` internally and allocates memory for the new object.

- Parameters:
    - `x` - The x-coordinate of the window's origin.
    - `y` - The y-coordinate of the window's origin.
    - `width` - The width of the window.
    - `height` - The height of the window.

- Returns: A `Window` object initialized with the given frame.

**Example**
```objc
// Initialize a new window
Window *window = [Window initWithX:0 Y:0 Width:800 Height:600];
```

---

### [initWindow()](./Window.m#L108)
This C function is a C wrapper around the Objective-C class method `+initWithX:Y:Width:Height:`. It initializes a `Window` object with the given `float` x and y coordinates, width, and height.

- Parameters:
    - `x` - The x-coordinate of the window's origin.
    - `y` - The y-coordinate of the window's origin.
    - `width` - The width of the window.
    - `height` - The height of the window.

- Returns: A `Window` object initialized with the given frame.

**Example**
```c
// Initialize a new window
Window *window = initWindow(0, 0, 800, 600);
```

## Deinitializers

### [dealloc:](./Window.m#L120)
This instance method is called when a `Window` object is deallocated. It releases any resources associated with the window object.

**Example**
```objc
// Initialize a new window
Window* window = [window initWithX:0 Y:0 Width:800 Height:600];
// Deallocate the window
[window dealloc];
```

---

### [freeWindow()](./Window.m#L129)
This C function is a C wrapper around the Objective-C instance method `-dealloc`. It releases any resources associated with the given `Window` object.

- Parameters:
    - `window` - The `Window` object to be deallocated.

**Example**
```c
// Initialize a new window
Window* window = initWindow(0, 0, 800, 600);
// Free (Deallocate) the window
freeWindow(window);
```

## Window Methods

### [show: - Objective-C](./Window.m#L141)
This instance method displays the window on the screen.

**Example**
```objc
// Initialize a new window
Window* window = [window initWithX:0 Y:0 Width:800 Height:600];
// Show the window
[window show];
```

### [showWindow() - C](./Window.m#L145)
This C function is a C wrapper around the Objective-C instance method `-show:`. It displays the given `Window` object on the screen.

- Parameters:
    - `window` - The `Window` object to be displayed.

**Example**
```c
// Initialize a new window
Window* window = initWindow(0, 0, 800, 600);
// Show the window
showWindow(window);
```

---

### [hide: - Objective-C](./Window.m#L153)
This instance method hides the window from the screen.

**Example**
```objc
// Initialize a new window
Window* window = [window initWithX:0 Y:0 Width:800 Height:600];
// Show the window
[window show];
// Hide the window
[window hide];
```

### [hideWindow() - C](./Window.m#L156)
This C function is a C wrapper around the Objective-C instance method `-hide:`. It hides the given `Window` object from the screen.

- Parameters:
    - `window` - The `Window` object to be hidden.

**Example**
```c
// Initialize a new window
Window* window = initWindow(0, 0, 800, 600);
// Show the window
showWindow(window);
// Hide the window
hideWindow(window);
```

---

### [close: - Objective-C](./Window.m#L164)
This instance method closes the window and releases any resources associated with it.

**Example**
```objc
// Initialize a new window
Window* window = [window initWithX:0 Y:0 Width:800 Height:600];
// Show the window
[window show];
// Close the window
[window close];
```

### [closeWindow() - C](./Window.m#L167)
This C function is a C wrapper around the Objective-C instance method `-close:`. It closes the given `Window` object and releases any resources associated with it.

- Parameters:
    - `window` - The `Window` object to be closed.

**Example**
```c
// Initialize a new window
Window* window = initWindow(0, 0, 800, 600);
// Show the window
showWindow(window);
// Close the window
closeWindow(window);
```

## Usage
The `Window` class provides a simple and intuitive interface for creating, displaying, and managing application windows in macOS applications. Below is a simple example of the `Window` class usage:

### Objective-C Sample Code
```objc
// Initialize a new frame for Window
Frame2 frame = [Frame2 initWithX:0 Y:0 Width:800 Height:600];

// Initialize a new Window object with the frame
Window* window = [Window initWithFrame:frame];

// Change the window title
window.window.title = @"My Window";
// Change the background color of the window
window.window.backgroundColor = [NSColor whiteColor];

// Show the window on the screen
[window show];
```

### C Sample Code
```c
// Initialize a new Window object
Window* window = initWindow(0, 0, 800, 600);

// Change the window title
window.window.title = @"My Window";
// Change the background color of the window
window.window.backgroundColor = [NSColor whiteColor];

// Show the window on the screen
showWindow(window);
```