/**
 * @file Vector2.m
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the implementation file for the Vector2 class.
 *  It is a simple 2D vector class that has x and y components.
 *  It includes methods for simple Vector operations.
 * @version 0.1
 * @date 2024-06-19
 * 
 * @copyright MIT License (c) 2024
 * 
 */

/* --- Imports --- */
#import "Vector2.h"
/* --- End of Imports --- */

/* --- Implementation --- */
@implementation Vector2

    /* --- Initializers --- */

    /**
     * @brief Initializes the Vector2 object with the given x and y values.
     * 
     * @param x: The x component of the vector.
     * @param y: The y component of the vector.
     * @return instancetype: The initialized Vector2 object.
     */
    - (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y {
        self = [super init];    // Call the super class's initializer.

        // If the object is initialized successfully, set the x and y components.
        if (self) {
            self.x = x;
            self.y = y;
        }
        return self;
    }

    /**
     * @brief Initializes the Vector2 object with the given x and y values.
     * 
     * @param x: The x component of the vector.
     * @param y: The y component of the vector.
     * @return instancetype: The initialized Vector2 object.
     */
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y {
        return [[Vector2 alloc] initWithX:x Y:y]; // Return the initialized Vector2 object.
    }
    /* --- End of Initializers --- */

    /* --- Deinitlialize --- */
    
    /**
     * @brief Deallocates the Vector2 object.
     * 
     */
    - (void)dealloc {
        // Deallocate the Vector2 object.
        [super dealloc];
    }
    /* --- End of Deinitialize --- */

    /* --- Vector Operations --- */

    /**
     * @brief Adds the given vector to the current vector.
     * 
     * @param Vector2*: The Vector2 to be added.
     * @return Vector2*: The resulting Vector2.
     */
    - (Vector2*)add:(Vector2*)vector {
        // Return a new updated Vector2.
        return [[Vector2 alloc] initWithX:self.x + vector.x Y:self.y + vector.y];
    }

    /**
     * @brief Subtracts the given vector from the current vector.
     * 
     * @param Vector2*: The Vector2 to be subtracted.
     * @return Vector2*: The resulting Vector2.
     */
    - (Vector2*)subtract:(Vector2*)vector {
        // Return a new updated Vector2.
        return [[Vector2 alloc] initWithX:self.x - vector.x Y:self.y - vector.y];
    }

    /**
     * @brief Multiplies the current vector with the given scalar.
     * 
     * @param CGFloat: The scalar to be multiplied.
     * @return Vector2*: The resulting Vector2.
     */
    - (Vector2*)multiply:(CGFloat)scalar {
        // Return a new updated Vector2.
        return [[Vector2 alloc] initWithX:self.x * scalar Y:self.y * scalar];
    }

    /**
     * @brief Divides the current vector with the given scalar.
     * 
     * @param CGFloat: The scalar to be divided.
     * @return Vector2*: The resulting Vector2.
     */
    - (Vector2*)divide:(CGFloat)scalar {
        // Return a new updated Vector2.
        return [[Vector2 alloc] initWithX:self.x / scalar Y:self.y / scalar];
    }

    /**
     * @brief Does a dot product between two Vector2s.
     * 
     * @param Vector2*: The Vector2 to do the dot product.
     * @return CGFloat: The result of the ot product.
     */
    - (CGFloat)dot:(Vector2*)vector {
        // Return the dot product of the two Vector2s.
        return self.x * vector.x + self.y * vector.y;
    }

    /**
     * @brief Scales the x and y components of the vector2 by a
     *  given scalar
     *
     * @param CGFloat: The factor to multiply the components with
     *
     * @return Vector3*: A new instance of the scaled version of the vector
     */
    - (instancetype)scale:(CGFloat)factor {
        // Return a new instance of this vector with all components multiplied by a given factor
        return [self multiply:factor];
    }

    /**
     * @brief Scales the x and y components of the vector2 by a
     *  given xFactor, yFactor, and zFactor respectively
     *
     * @param CGFloat: The x factor to multiply the x component with
     * @param CGFloat: The y factor to multiply the y component with
     *
     * @return Vector3*: A new instance of the scaled version of the vector
     */
    - (instancetype)scaleX:(CGFloat)xFactor Y:(CGFloat)yFactor {
        // Return a new instance of this vector with all components multiplied by a given factors
        return [[Vector2 alloc] initWithX:(self.x*xFactor) Y:(self.y*yFactor)];
    }

    /**
     * @brief Scales the x component of the vector2 by a
     *  given scalar
     *
     * @param CGFloat: The factor to multiply the x component with
     *
     * @return Vector3*: A new instance of the scaled version of the vector
     */
    - (instancetype)scaleX:(CGFloat)xFactor {
        // Return a new instance of this vector with the x component multiplied by a given x factor
        return [[Vector2 alloc] initWithX:(self.x*xFactor) Y:self.y];
    }

    /**
     * @brief Scales the y component of the vector2 by a
     *  given scalar
     *
     * @param CGFloat: The factor to multiply the y component with
     *
     * @return Vector3*: A new instance of the scaled version of the vector
     */
    - (instancetype)scaleY:(CGFloat)yFactor {
        // Return a new instance of this vector with the y component multiplied by a given y factor
        return [[Vector2 alloc] initWithX:self.x Y:(self.y*yFactor)];
    }

    /**
     * @brief Calculates the length (magnitude) of the current Vector2.
     * 
     * @return CGFloat: The length (magnitude) of the current Vector2.
     */
    - (CGFloat)length {
        // Return the length of the current vector.
        return sqrt(self.x * self.x + self.y * self.y);
    }

    /**
     * @brief Normalizes the current vector.
     * 
     * @return Vector2*: The normalized Vector2.
     */
    - (Vector2*)normalize {
        // Get the length of the current vector.
        CGFloat len = [self length];
        // If the length is not zero, normalize the vector.
        if (len != 0) {
            // Return a new normalized Vector2.
            return [[Vector2 alloc] initWithX:self.x / len Y:self.y / len];
        } else {
            // If the length is zero, return a zero vector.
            return [[Vector2 alloc] initWithX:0 Y:0];
        }
    }

    /**
     * @brief Calculates the distance between the current vector and the given vector.
     * 
     * @param Vector2*: The Vector2 to calculate the distance.
     * @return CGFloat: The distance between the two Vector2s.
     */
    - (CGFloat)distance:(Vector2*)vector {
        // Return the distance between the two Vector2s.
        return sqrt(pow(self.x - vector.x, 2) + pow(self.y - vector.y, 2));
    }

    /**
     * @brief Calculates the angle between the current vector and the given vector.
     * 
     * @param Vector2*: The Vector2 to calculate the angle.
     * @return CGFloat: The angle between the two Vector2s.
     */
    - (CGFloat)angle:(Vector2*)vector {
        // Return the angle between the two Vector2s.
        return acos([self dot:vector] / ([self length] * [vector length]));
    }

    /**
     * @brief Checks if the current vector is equal to the given vector.
     * 
     * @param Vector2*: The Vector2 to compare.
     * @return BOOL: YES if the vectors are equal, NO otherwise.
     */
    - (BOOL)isEqualTo:(Vector2*)vector {
        // Return YES if the vectors are equal, NO otherwise.
        return self.x == vector.x && self.y == vector.y;
    }

    /**
     * @brief Returns a string representation of the current Vector2.
     * 
     * @return NSString*: The string representation of the current Vector2.
     */
    - (NSString*)description {
        // Return the string representation of the current vector.
        return [NSString stringWithFormat:@"(%f, %f)", self.x, self.y];
    }

    /**
     * @brief Rotates the current Vector2 by a given angle in degrees
     *  around a given point.
     * 
     * @return Vector2*: Rotated Vector2.
     */
    - (instancetype)rotateByDegrees:(CGFloat)angle aroundPoint:(Vector2 *)center {
        // Convert angle in degrees to radians
        CGFloat angleInRadians = -angle * (M_PI / 180.0);
        // Return a new updated Vector2
        return [self rotateByRadians:angleInRadians aroundPoint:center];
    }

    /**
     * @brief Rotates the current Vector2 by a given angle in degrees
     *  around the origin.
     * 
     * @return Vector2*: Rotated Vector2.
     */
    - (instancetype)rotateByDegrees:(CGFloat)angle {
        // Rotate the Vector2 around the origin.
        return [self rotateByDegrees:angle aroundPoint:[Vector2 initWithX:0 Y:0]];
    }

    /**
     * @brief Rotates the current Vector2 by a given angle in radians
     *  around a given point.
     * 
     * @return Vector2*: Rotated Vector2.
     */
    - (instancetype)rotateByRadians:(CGFloat)angle aroundPoint:(Vector2 *)center {
        // Get the sine and cosine of the angle
        CGFloat s = sin(angle);
        CGFloat c = cos(angle);
        // Translate the Vector2 to the origin.
        CGFloat x = self.x - center.x;
        CGFloat y = self.y - center.y;
        // Rotate the Vector2.
        CGFloat xNew = x * c - y * s;
        CGFloat yNew = x * s + y * c;
        // Translate the Vector2 back to the original position.
        xNew += center.x;
        yNew += center.y;
        // Return a new updated Vector2
        return [[Vector2 alloc] initWithX:xNew Y:yNew];
    }

    /**
     * @brief Rotates the current Vector2 by a given angle in radians
     *  around the origin.
     * 
     * @return Vector2*: Rotated Vector2.
     */
    - (instancetype)rotateByRadians:(CGFloat)angle {
        // Rotate the Vector2 around the origin.
        return [self rotateByRadians:angle aroundPoint:[Vector2 initWithX:0 Y:0]];
    }
    /* --- End of Vector Operations --- */
@end
/* --- End of Implementation --- */