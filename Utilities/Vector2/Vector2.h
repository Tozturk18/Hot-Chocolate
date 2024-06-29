/**
 * @file Vector2.h
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the header file for a 2D Vector Object. It declares the properties and methods of the Vector2 class.
 * @version 0.1
 * @date 2024-06-19
 * 
 * @copyright MIT License (c) 2024
 * 
 */

/* --- Imports --- */
#import <Foundation/Foundation.h>
/* --- End of Imports --- */

/* --- Vector2 Object --- */
@interface Vector2 : NSObject

    /* --- Properties --- */
    @property (nonatomic, assign) CGFloat x;    // X coordinate
    @property (nonatomic, assign) CGFloat y;    // Y coordinate
    /* --- End of Properties --- */

    /* --- Initializers --- */
    - (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y;  // Initialize the vector2 with x and y coordinates
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y;  // Initialize the vector2 with x and y coordinates and allocate memory
    /* --- End of Initializers --- */

    /* --- Deinitialize --- */
    - (void)dealloc;                            // Deinitialize the vector2
    /* --- End of Deinitialize --- */

    /* --- Methods --- */
    // Vector Operations
    - (instancetype)add:(Vector2 *)vector;      // Add a vector2 to the current vector2
    - (instancetype)subtract:(Vector2 *)vector; // Subtract a vector from the current vector2
    - (instancetype)multiply:(CGFloat)scalar;   // Multiply the vector2 by a scalar
    - (instancetype)divide:(CGFloat)scalar;     // Divide the vector2 by a scalar
    - (CGFloat)dot:(Vector2 *)vector;           // Dot product of the vector2 by another vector2

    // Scaling Operations
    - (instancetype)scale:(CGFloat)factor;      // Scale the x and y components of the vector by the given factor
    - (instancetype)scaleX:(CGFloat)xFactor Y:(CGFloat)yFactor;  // Scale the x and y components of the vector with separate factors
    - (instancetype)scaleX:(CGFloat)xFactor;    // Scale the x component of the vector by the given factor
    - (instancetype)scaleY:(CGFloat)yFactor;    // Scale the y component of the vector by the given factor

    // Vector Properties
    - (CGFloat)length;                          // Get the length of the vector2
    - (instancetype)normalize;                     // Normalize the vector2
    - (CGFloat)distance:(Vector2 *)vector;      // Get the distance between two vectors2
    - (CGFloat)angle:(Vector2 *)vector;         // Get the angle between two vectors2

    // Vector Comparisons
    - (BOOL)isEqualTo:(Vector2 *)vector;        // Check if the vector2 is equal to another vector2

    // String Representation
    - (NSString *)description;                  // Get the string representation of the vector2

    // Rotational Operations
    - (instancetype)rotateByDegrees:(CGFloat)angle aroundPoint:(Vector2 *)center; // Rotate the vector2 around a point by given degrees
    - (instancetype)rotateByDegrees:(CGFloat)angle;                               // Rotate the vector2 around the origin by given degrees

    - (instancetype)rotateByRadians:(CGFloat)angle aroundPoint:(Vector2 *)center; // Rotate the vector2 around a point by given radians
    - (instancetype)rotateByRadians:(CGFloat)angle;                               // Rotate the vector2 around the origin by given radians
    /* --- End of Methods --- */

@end
/* --- End of Vector2 Object --- */