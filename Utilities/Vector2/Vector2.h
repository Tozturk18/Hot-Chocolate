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
    Vector2* initVector2(CGFloat x, CGFloat y);         // Initialize the vector2 with x and y coordinates using a C function
    /* --- End of Initializers --- */

    /* --- Deinitialize --- */
    - (void)dealloc;                            // Deinitialize the vector2
    void freeVector2(Vector2 *vector);          // Deinitialize the vector2 using a C function
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

    // Copy Operations
    - (instancetype)copy;                        // Copy the vector2

    // Rotational Operations
    - (instancetype)rotateByDegrees:(CGFloat)angle aroundPoint:(Vector2 *)center; // Rotate the vector2 around a point by given degrees
    - (instancetype)rotateByDegrees:(CGFloat)angle;                               // Rotate the vector2 around the origin by given degrees

    - (instancetype)rotateByRadians:(CGFloat)angle aroundPoint:(Vector2 *)center; // Rotate the vector2 around a point by given radians
    - (instancetype)rotateByRadians:(CGFloat)angle;                               // Rotate the vector2 around the origin by given radians
    /* --- End of Methods --- */

    /* --- C Methods --- */
    // Vector Operations
    Vector2* Vector2Add(Vector2 *vector1, Vector2 *vector2);       // Add two vector2s using a C function
    Vector2* Vector2Subtract(Vector2 *vector1, Vector2 *vector2);  // Subtract two vector2s using a C function
    Vector2* Vector2Multiply(Vector2 *vector, float scalar);     // Multiply a vector2 by a scalar using a C function
    Vector2* Vector2Divide(Vector2 *vector, float scalar);       // Divide a vector2 by a scalar using a C function
    float Vector2Dot(Vector2 *vector1, Vector2 *vector2);        // Dot product of two vector2s using a C function

    // Scaling Operations
    Vector2* Vector2Scale(Vector2 *vector, float factor);        // Scale a vector2 by a factor using a C function
    Vector2* Vector2ScaleXY(Vector2 *vector, float xFactor, float yFactor);  // Scale the x and y components of a vector2 by separate factors using a C function
    Vector2* Vector2ScaleX(Vector2 *vector, float xFactor);      // Scale the x component of a vector2 by a factor using a C function
    Vector2* Vector2ScaleY(Vector2 *vector, float yFactor);      // Scale the y component of a vector2 by a factor using a C function

    // Vector Properties
    float Vector2Length(Vector2 *vector);                        // Get the length of a vector2 using a C function
    Vector2* Vector2Normalize(Vector2 *vector);                    // Normalize a vector2 using a C function
    float Vector2Distance(Vector2 *vector1, Vector2 *vector2);   // Get the distance between two vector2s using a C function
    float Vector2Angle(Vector2 *vector1, Vector2 *vector2);      // Get the angle between two vector2s using a C function

    // Vector Comparisons
    int Vector2IsEqualTo(Vector2 *vector1, Vector2 *vector2);     // Check if two vector2s are equal using a C function

    // String Representation
    char* Vector2Description(Vector2 *vector);                 // Get the string representation of a vector2 using a C function

    // Copy Operations
    Vector2* Vector2Copy(Vector2 *vector);                      // Copy a vector2 using a C function

    // Rotational Operations
    Vector2* Vector2RotateByDegreesAroundPoint(Vector2 *vector, float angle, Vector2 *center);  // Rotate a vector2 around a point by given degrees using a C function
    Vector2* Vector2RotateByDegrees(Vector2 *vector, float angle);       // Rotate a vector2 around the origin by given degrees using a C function

    Vector2* Vector2RotateByRadiansAroundPoint(Vector2 *vector, float angle, Vector2 *center);  // Rotate a vector2 around a point by given radians using a C function
    Vector2* Vector2RotateByRadians(Vector2 *vector, float angle);       // Rotate a vector2 around the origin by given radians using a C function
    /* --- End of C Methods --- */


@end
/* --- End of Vector2 Object --- */