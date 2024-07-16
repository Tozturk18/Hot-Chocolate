/**
 * @file Frame2.h
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the header file for the 2D Frame class. 
 *  It declares the properties and methods of the Frame2 class.
 * @version 0.1
 * @date 2024-06-19
 * 
 * @copyright MIT License (c) 2024
 * 
 */

/* --- Imports --- */
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "../Vector2/Vector2.h"
/* --- End of Imports --- */

/* --- 2D Frame Object --- */
@interface Frame2 : NSObject

    /* --- Properties -- */
    @property (nonatomic, assign) Vector2 *position;            // Position of the frame object
    @property (nonatomic, assign) CGFloat rotation;             // Rotation--around the center of the object--angle in degrees 

    @property (nonatomic, assign) CGFloat width;                // Width of the frame object
    @property (nonatomic, assign) CGFloat height;               // Height of the frame object

    @property (nonatomic, assign) NSRect frame;                 // The frame of the frame

    @property (nonatomic, assign) NSMutableArray<Vector2*> *vertices;  // The vertices of the frame
    /* --- End of Properties --- */

    /* --- Initializers --- */
    - (instancetype)initWithPos:(Vector2 *)pos Width:(CGFloat)width Height:(CGFloat)height;         // Initialize a new frame with the given position, width, and height values
    + (instancetype)initWithPos:(Vector2 *)pos Width:(CGFloat)width Height:(CGFloat)height;         // Initialize a new frame with the given positions, width, and height values and allocate memory
    + (instancetype)initWithPos:(Vector2 *)pos Dim:(Vector2 *)dim;                                  // Initialize a new frame with the given position, and dimensions as Vector2 objects and allocate memory
    + (instancetype)initWithNSRect:(NSRect *)rect;                                                  // Initialize a new frame with the given NSRect object
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y Width:(CGFloat)width Height:(CGFloat)height;  // Initialize a new frame with the given x, y, width, and height values and allocate memory
    Frame2* initFrame2(float x, float y, float width, float height);                                // Initialize a new frame with the given x, y, width, and height values
    Frame2* initFrame2WithVector2s(Vector2 *pos, Vector2 *dim);                                                 // Initialize a new frame with the given position, and dimensions as Vector2 objects
    /* --- End of Initializers --- */

    /* --- Deinitialize --- */
    - (void)dealloc;                                            // Deallocates memory space used by the frame
    void freeFrame2(Frame2 *frame);                             // Deallocates memory space used by the frame
    /* --- End of Deinitialize --- */

    /* --- Methods --- */
    // Drawing Operations
    //- (void)draw;                                                                   // Draw the frame object

    // Transformation Operations
    - (Frame2*)scale:(CGFloat)scale;                                                   // Scale the frame by a given amount
    - (Frame2*)scaleWidth:(CGFloat)scaleX Height:(CGFloat)scaleY;                      // Scale the frame by a given amount in x and y directions
    - (Frame2*)scaleWidth:(CGFloat)scaleX;                                             // Scale the frame by a given amount in x direction
    - (Frame2*)scaleHeight:(CGFloat)scaleY;                                            // Scale the frame by a given amount in x direction

    // Comparison Operations 
    //- (BOOL)isTouching:(NSObject *)object;                                          // Checks if two objects touching eachother

    // Copy Operations
    - (Frame2*)copy;                                                                 // Returns a copy of the frame object

    // Description Operations
    - (NSString*)description;                                                      // Returns a string representation of the frame object

    // Transitional Operations
    - (Frame2*)moveWithVector:(Vector2 *)vector;                                       // Move the frame by a given amount
    - (Frame2*)moveToPos:(Vector2 *)vector;                                            // Move the frame to a given position 

    // Rotational Operations
    - (Frame2*)rotateByDegrees:(CGFloat)angle aroundPoint:(Vector2 *)point;            // Rotate the frame by a given angle in degrees around a given point
    - (Frame2*)rotateByDegrees:(CGFloat)angle;                                         // Rotate the frame by a given angle in degrees around its center

    - (Frame2*)rotateByRadians:(CGFloat)angle aroundPoint:(Vector2 *)point;            // Rotate the frame by a given angle in radians around a given point
    - (Frame2*)rotateByRadians:(CGFloat)angle;                                         // Rotate the frame by a given angle in radians around its center
    /* --- End of Methods --- */

    /* --- C Class Methods --- */
    // Scaling Operations
    Frame2* Frame2Scale(Frame2 *frame, float scale);                                    // Scale the frame by a given amount
    Frame2* Frame2ScaleWidthHeight(Frame2 *frame, float scaleX, float scaleY);          // Scale the frame by a given amount in x and y directions
    Frame2* Frame2ScaleWidth(Frame2 *frame, float scaleX);                              // Scale the frame by a given amount in x direction
    Frame2* Frame2ScaleHeight(Frame2 *frame, float scaleY);                             // Scale the frame by a given amount in x direction

    // Copy Operations
    Frame2* Frame2Copy(Frame2 *frame);                                                  // Returns a copy of the frame object

    // Description Operations
    char* Frame2Description(Frame2 *frame);                                             // Returns a string representation of the frame object

    // Transitional Operations
    Frame2* Frame2MoveWithVector(Frame2 *frame, Vector2 *vector);                          // Move the frame by a given amount
    Frame2* Frame2MoveToPos(Frame2 *frame, Vector2 *vector);                               // Move the frame to a given position

    // Rotational Operations
    Frame2* Frame2RotateByDegreesAroundPoint(Frame2 *frame, float angle, Vector2 *point);  // Rotate the frame by a given angle in degrees around a given point
    Frame2* Frame2RotateByDegrees(Frame2 *frame, float angle);                             // Rotate the frame by a given angle in degrees around its center

    Frame2* Frame2RotateByRadiansAroundPoint(Frame2 *frame, float angle, Vector2 *point);  // Rotate the frame by a given angle in radians around a given point
    Frame2* Frame2RotateByRadians(Frame2 *frame, float angle);                             // Rotate the frame by a given angle in radians around its center
    /* --- End of C Class Methods --- */

@end
/* --- End of frame Object --- */