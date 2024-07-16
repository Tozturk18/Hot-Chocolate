# [Hot Chocolate](../../README.md) - AppDelegate Class (Objective-C)
**Last Updated:** July 14th, 2024 

---

The `AppDelegate` class is the entry point for the application, responsible for handling the application's lifecycle events. This class is implemented in Objective-C for use in iOS and macOS projects.

## Table of Contents
- [Initializers](#initializers)
    - [init](#init)
- [Application Lifecycle](#application-lifecycle)
    - [applicationDidFinishLaunching:](#applicationdidfinishlaunching)
    - [applicationWillTerminate:](#applicationwillterminate)
    - [applicationDidEnterBackground:](#applicationdidenterbackground)
    - [applicationWillEnterForeground:](#applicationwillenterforeground)
    - [applicationDidBecomeActive:](#applicationdidbecomeactive)
    - [applicationWillResignActive:](#applicationwillresignactive)

## Initializers

### [init](./AppDelegate.m#L10)
This instance method initializes an `AppDelegate` object. It sets up the initial state of the application.

- Returns: The initialized `AppDelegate` object.

## Application Lifecycle

### [applicationDidFinishLaunching:](./AppDelegate.m#L20)
This method is called when the application has completed its launch process.

- Parameters:
    - notification: A notification indicating the launch process is complete.

---

### [applicationWillTerminate:](./AppDelegate.m#L30)
This method is called when the application is about to terminate.

- Parameters:
    - notification: A notification indicating the application is about to terminate.

---

### [applicationDidEnterBackground:](./AppDelegate.m#L40)
This method is called when the application enters the background state.

- Parameters:
    - notification: A notification indicating the application has entered the background.

---

### [applicationWillEnterForeground:](./AppDelegate.m#L50)
This method is called as part of the transition from the background to the active state.

- Parameters:
    - notification: A notification indicating the application is transitioning to the foreground.

---

### [applicationDidBecomeActive:](./AppDelegate.m#L60)
This method is called when the application becomes active.

- Parameters:
    - notification: A notification indicating the application has become active.

---

### [applicationWillResignActive:](./AppDelegate.m#L70)
This method is called when the application is about to become inactive.

- Parameters:
    - notification: A notification indicating the application is about to become inactive.