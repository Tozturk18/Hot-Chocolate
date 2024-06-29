/**
 * @file Quaternion.h
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @contributors Jemidiah (https://www.vbforums.com/showthread.php?584390-Quaternion-from-two-3D-Position-Vectors#post_3609310)
 * @brief This is the header file for Quaternion class. This class allows for defining quaternion rotation vectors.
 * @version 0.1
 * @date 2024-06-17
 * 
 * @copyright MIT License (c) 2024
 * 
 */

/* --- Imports --- */
#import <Foundation/Foundation.h>
/* --- End of Imports --- */

/* --- Forward Declaration --- */
@class Vector3;
/* --- End of Forward Declaration --- */

/* --- Quaternion Object --- */
@interface Quaternion : NSObject

    /* --- Properties --- */
    @property (nonatomic, assign) Vector3 *vector;      // Vector3 coordinates
    @property (nonatomic, assign) CGFloat w;            // W coordinate
    /* --- End of Properties --- */

    /* --- Initializers --- */
    - (instancetype)initWithW:(CGFloat)w Vector:(Vector3*)vector;                   // Initialize the quaternion with a vector3 and w coordinates
    + (instancetype)initWithW:(CGFloat)w Vector:(Vector3*)vector;                   // Initialize the quaternion with a vector3 and w coordinates and allocate memory
    + (instancetype)initWithDegrees:(CGFloat)degrees Vector:(Vector3*)vector;       // Initialize the quaternion with a vector3 and degrees and allocate memory
    + (instancetype)initWithRadians:(CGFloat)radians Vector:(Vector3*)vector;       // Initialize the quaternion with a vector3 and radians and allocate memory
    + (instancetype)initWithW:(CGFloat)w X:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z;    // Initialize the quaternion with x, y, z, and w coordinates and allocate memory
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z;                 // Initialize the quaternion with x, y, z, and w(=0) coordinates and allocate memory
    /* --- End of Initializers --- */

    /* --- Deinitialize --- */
    - (void)dealloc;                                    // Deallocates the quaternion
    /* --- End of Deinitialize --- */

    /* --- Methods --- */
    // Quaternion Operations
    - (instancetype)add:(Quaternion *)quaternion;       // Add a quaternion to the current quaternion
    - (instancetype)subtract:(Quaternion *)quaternion;  // Subtract a quaternion from the current quaternion
    - (instancetype)multiply:(Quaternion *)quaternion;  // Multiply the quaternion by another quaternion
    - (instancetype)scalarMultiply:(CGFloat)scalar;     // Multiply the quaternion by a scalar
    - (instancetype)divide:(CGFloat)scalar;             // Divide the quaternion by a scalar

    // Might add scaling operations later

    // Quaternion Properties
    - (CGFloat)length;                                  // Get the length of the quaternion
    - (instancetype)normalize;                          // Normalize the quaternion
    - (instancetype)conjugate;                          // Get the conjugate of the quaternion

    // Quaternion Comparisons
    - (BOOL)isEqualTo:(Quaternion *)quaternion;         // Check if the quaternion is equal to another quaternion

    // String Representation
    - (NSString *)description;                          // Get the string representation of the quaternion

    // Copying
    - (instancetype)copy;                               // Copy the quaternion
    /* --- End of Methods --- */

@end
/* --- End of Quaternion Object --- */