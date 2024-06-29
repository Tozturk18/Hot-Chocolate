/**
 * @file Vector3.h
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the header file for a 3D Vector Class. It declares the properties and methods of the Vector3 class.
 * @version 0.1
 * @date 2024-06-19
 * 
 * @copyright MIT License (c) 2024
 * 
 */

/* --- Imports --- */
#import <Foundation/Foundation.h>
/* --- End of Imports --- */

/* --- Forward Declaration --- */
@class Quaternion;
/* --- End of Forward Declaration --- */

/* --- Vector3 Object --- */
@interface Vector3 : NSObject

    /* --- Properties --- */
    @property (nonatomic, assign) CGFloat x; // X coordinate
    @property (nonatomic, assign) CGFloat y; // Y coordinate
    @property (nonatomic, assign) CGFloat z; // Z coordinate
    /* --- End of Properties --- */

    /* --- Initializers --- */
    - (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z; // Initialize the vector3 with x, y, and z coordinates
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z; // Initialize the vector3 with x, y, and z coordinates and allocate memory
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y;              // Initialize the vector3 with x, y, and z(=0) coordinates and allocate memory
    /* --- End of Initializers --- */

    /* --- Deinitialize --- */
    - (void)dealloc;                            // Deallocates the vector3
    /* --- End of Deinitialize --- */

    /* --- Methods --- */
    // Vector Operations
    - (instancetype)add:(Vector3 *)vector;      // Add a vector3 to the current vector3
    - (instancetype)subtract:(Vector3 *)vector; // Subtract a vector from the current vector3
    - (instancetype)multiply:(CGFloat)scalar;   // Multiply the vector2 by a scalar
    - (instancetype)divide:(CGFloat)scalar;     // Divide the vector3 by a scalar
    - (CGFloat)dot:(Vector3 *)vector;           // Dot product of this vector3 by another vector3
    - (instancetype)cross:(Vector3 *)vector;    // Cross product of this vector3 by another vector3

    // Scaling Operations
    - (instancetype)scale:(CGFloat)factor;      // Scale the x, y, and z components of the vector by the given factor
    - (instancetype)scaleX:(CGFloat)xFactor Y:(CGFloat)yFactor Z:(CGFloat)zFactor;  // Scale the x, y, and z components of the vector with seperate factors
    - (instancetype)scaleX:(CGFloat)xFactor;    // Scale the x component of the vector by the given factor
    - (instancetype)scaleY:(CGFloat)yFactor;    // Scale the y component of the vector by the given factor
    - (instancetype)scaleZ:(CGFloat)zFactor;    // Scale the z component of the vector by the given factor

    // Vector Properties
    - (CGFloat)length;                          // Get the length of the vector3
    - (instancetype)normalize;                  // Normalize the vector3
    - (CGFloat)distance:(Vector3 *)vector;      // Get the distance between two vectors3
    - (CGFloat)angle:(Vector3 *)vector;         // Get the angle between two vectors3

    // Vector Comparisons
    - (BOOL)isEqualTo:(Vector3 *)vector;        // Check if the vector2 is equal to another vector3

    // String Representation
    - (NSString *)description;                  // Get the string representation of the vector3

    // Copy Operations
    - (instancetype)copy;                        // Copy the vector3

    // Rotational Operations
    - (instancetype)rotateByQuaternion:(Quaternion *)quaternion;                    // Rotate the vector3 by a quaternion

    - (instancetype)rotateByDegrees:(CGFloat)angle aroundAxis:(Vector3 *)center;    // Rotate the vector3 around an axis by given degrees
    - (instancetype)rotateByDegrees:(CGFloat)angle;                                 // Rotate the vector3 around the origin by given degrees

    - (instancetype)rotateByRadians:(CGFloat)angle aroundAxis:(Vector3 *)center;    // Rotate the vector3 around an axis by given radians
    - (instancetype)rotateByRadians:(CGFloat)angle;                                 // Rotate the vector3 around the origin by given radians
    /* --- End of Methods --- */

@end
/* --- End of Vector2 Object --- */