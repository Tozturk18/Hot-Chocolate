/**
 * @file Vector3.m
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the implementation file for the Vector3 class.
 *  It is a simple 3D vector class that has x, y, and z components.
 *  It includes methods for simple Vector operations.
 * @version 0.1
 * @date 2024-06-19
 * 
 * @copyright MIT License (c) 2024
 * 
 */

/* --- Imports --- */
#import "Vector3.h"
#import "../Quaternion/Quaternion.h"
/* --- End of Imports --- */

/* --- Implementation --- */
@implementation Vector3

    /* --- Initializers --- */

    /**
     * @brief Initializes the Vector3 object with the given x, y, and z values.
     * 
     * @param x: The x component of the vector.
     * @param y: The y component of the vector.
     * @param z: The z component of the vector.
     * @return instancetype: The initialized Vector3 object.
     */
    - (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z {
        self = [super init];    // Call the super class's initializer.

        // If the object is initialized successfully, set the x, y, and z components.
        if (self) {
            self.x = x;
            self.y = y;
            self.z = z;
        }
        return self;
    }

    /**
     * @brief Initializes the Vector3 object with the given x, y, and z values.
     * 
     * @param x: The x component of the vector.
     * @param y: The y component of the vector.
     * @param z: The y component of the vector.
     * @return instancetype: The initialized Vector3 object.
     */
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z {
        // Return the initialized Vector3 object.
        return [[Vector3 alloc] initWithX:x Y:y Z:z];
    }

    /**
     * @brief Initializes the Vector3 object with the given x and y values and 0 for the z value.
     * 
     * @param x: The x component of the vector.
     * @param y: The y component of the vector.
     * @return instancetype: The initialized Vector3 object.
     */
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y {
        // Return the initialized Vector3 object.
        return [[Vector3 alloc] initWithX:x Y:y Z:0];
    }
    /* --- End of Initializers --- */

    /* --- Deinitlialize --- */
    
    /**
     * @brief Deallocates the Vector3 object.
     * 
     */
    - (void)dealloc {
        // Deallocate the Vector3 object.
        [super dealloc];
    }
    /* --- End of Deinitialize --- */

    /* --- Vector Operations --- */

    /**
     * @brief Adds the given vector to the current vector.
     * 
     * @param Vector3*: The Vector3 to be added.
     * @return Vector3*: The resulting Vector3.
     */
    - (Vector3*)add:(Vector3*)vector {
        // Return a new updated Vector3.
        return [[Vector3 alloc] initWithX:self.x + vector.x Y:self.y + vector.y Z:self.z + vector.z];
    }

    /**
     * @brief Subtracts the given vector from the current vector.
     * 
     * @param Vector3*: The Vector3 to be subtracted.
     * @return Vector3*: The resulting Vector3.
     */
    - (Vector3*)subtract:(Vector3*)vector {
        // Return a new updated Vector3.
        return [[Vector3 alloc] initWithX:self.x - vector.x Y:self.y - vector.y Z:self.z - vector.z];
    }

    /**
     * @brief Multiplies the current vector with the given scalar.
     * 
     * @param CGFloat: The scalar to be multiplied.
     * @return Vector3*: The resulting Vector3.
     */
    - (Vector3*)multiply:(CGFloat)scalar {
        // Return a new updated Vector3.
        return [[Vector3 alloc] initWithX:self.x * scalar Y:self.y * scalar Z:self.z * scalar];
    }

    /**
     * @brief Divides the current vector with the given scalar.
     * 
     * @param CGFloat: The scalar to be divided.
     * @return Vector3*: The resulting Vector3.
     */
    - (Vector3*)divide:(CGFloat)scalar {
        // Return a new updated Vector3.
        return [[Vector3 alloc] initWithX:self.x / scalar Y:self.y / scalar Z:self.z / scalar];
    }

    /**
     * @brief Does a dot product between two Vector3s.
     * 
     * @param Vector3*: The Vector3 to do the dot product.
     * @return CGFloat: The result of the dot product.
     */
    - (CGFloat)dot:(Vector3*)vector {
        // Return the dot product of the two Vector3s.
        return ((self.x * vector.x) + (self.y * vector.y) + (self.z * vector.z));
    }

    /**
     * @brief Does a cross product between two Vector3s.
     * 
     * @param Vector3*: The Vector3 to do the cross product.
     * @return Vector3*: The result of the cross product.
     */
    - (Vector3*)cross:(Vector3*)vector {
        // Return the cross product of the two Vector3s.
        return [[Vector3 alloc] initWithX:(self.y*vector.z - self.z*vector.y) Y:(self.z*vector.x - self.x*vector.z) Z:(self.x*vector.y - self.y*vector.x)];
    }

    /**
     * @brief Scales the x, y, and z components of the vector 3 by a
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
     * @brief Scales the x, y, and z components of the vector 3 by a
     *  given xFactor, yFactor, and zFactor respectively
     *
     * @param CGFloat: The x factor to multiply the x component with
     * @param CGFloat: The y factor to multiply the y component with
     * @param CGFloat: The z factor to multiply the z component with
     *
     * @return Vector3*: A new instance of the scaled version of the vector
     */
    - (instancetype)scaleX:(CGFloat)xFactor Y:(CGFloat)yFactor Z:(CGFloat)zFactor {
        // Return a new instance of this vector with all components multiplied by a given factors
        return [[Vector3 alloc] initWithX:(self.x*xFactor) Y:(self.y*yFactor) Z:(self.z*zFactor)];
    }

    /**
     * @brief Scales the x component of the vector 3 by a
     *  given scalar
     *
     * @param CGFloat: The factor to multiply the x component with
     *
     * @return Vector3*: A new instance of the scaled version of the vector
     */
    - (instancetype)scaleX:(CGFloat)xFactor {
        // Return a new instance of this vector with the x component multiplied by a given x factor
        return [[Vector3 alloc] initWithX:(self.x*xFactor) Y:self.y Z:self.z];
    }

    /**
     * @brief Scales the y component of the vector 3 by a
     *  given scalar
     *
     * @param CGFloat: The factor to multiply the y component with
     *
     * @return Vector3*: A new instance of the scaled version of the vector
     */
    - (instancetype)scaleY:(CGFloat)yFactor {
        // Return a new instance of this vector with the y component multiplied by a given y factor
        return [[Vector3 alloc] initWithX:self.x Y:(self.y*yFactor) Z:self.z];
    }

    /**
     * @brief Scales the z component of the vector 3 by a
     *  given scalar
     *
     * @param CGFloat: The factor to multiply the z component with
     *
     * @return Vector3*: A new instance of the scaled version of the vector
     */
    - (instancetype)scaleZ:(CGFloat)zFactor {
        // Return a new instance of this vector with the z component multiplied by a given z factor
        return [[Vector3 alloc] initWithX:self.x Y:self.y Z:(self.z*zFactor)];
    }

    /**
     * @brief Calculates the length (magnitude) of the current Vector3.
     * 
     * @return CGFloat: The length (magnitude) of the current Vector3.
     */
    - (CGFloat)length {
        // Return the length of the current vector.
        return sqrt(self.x * self.x + self.y * self.y + self.z * self.z); 
    }

    /**
     * @brief Normalizes the current Vector3.
     * 
     * @return Vector3*: The normalized Vector3.
     */
    - (Vector3*)normalize {
        CGFloat len = [self length]; // Get the length of the current Vector3.

        // If the length is not zero, normalize the Vector3.
        if (len != 0) {
            // Return a new normalized Vector3.
            return [[Vector3 alloc] initWithX:self.x / len Y:self.y / len Z:self.z / len];
        } else {
            // If the length is zero, return a zero vector.
            return [[Vector3 alloc] initWithX:0 Y:0 Z:0];
        }
    }

    /**
     * @brief Calculates the distance between the current Vector3 and the given Vector3.
     * 
     * @param Vector3*: The Vector3 to calculate the distance.
     * @return CGFloat: The distance between the two Vector3s.
     */
    - (CGFloat)distance:(Vector3*)vector {
        // Return the distance between the two Vector3s.
        return sqrt(pow(self.x - vector.x, 2) + pow(self.y - vector.y, 2) + pow(self.z - vector.z, 2));
    }

    /**
     * @brief Calculates the angle between the current vector and the given vector.
     * 
     * @param Vector3*: The Vector3 to calculate the angle.
     * @return CGFloat: The angle between the two Vector3s.
     */
    - (CGFloat)angle:(Vector3*)vector {
        // Return the angle between the two Vector3s.
        return acos([self dot:vector] / ([self length] * [vector length]));
    }

    /**
     * @brief Checks if the current vector is equal to the given vector.
     * 
     * @param Vector3*: The Vector3 to compare.
     * @return BOOL: YES if the vectors are equal, NO otherwise.
     */
    - (BOOL)isEqualTo:(Vector3*)vector {
        // Return YES if the vectors are equal, NO otherwise.
        return self.x == vector.x && self.y == vector.y && self.z == vector.z;
    }

    /**
     * @brief Returns a string representation of the current Vector3.
     * 
     * @return NSString*: The string representation of the current Vector3.
     */
    - (NSString*)description {
        // Return the string representation of the current vector.
        return [NSString stringWithFormat:@"(%f, %f, %f)", self.x, self.y, self.z];
    }

    /**
     * @brief Coppies the current Vector3.
     *
     * @return Vector3*: The coppied Vector3.
     */
    - (instancetype)copy {
        // Return a new coppied Vector3.
        return [[Vector3 alloc] initWithX:self.x Y:self.y Z:self.z];
    }

    /**
     * @brief Rotates the current Vector3 by a given quaternion.
     * 
     * @return Vector3*: Rotated Vector3.
     */
    - (instancetype)rotateByQuaternion:(Quaternion *)quaternion {
        // Create a quaternion from the current Vector3.
        Quaternion *qvector = [Quaternion initWithW:0 Vector:self]; 
        // Calculate the conjugate of the quaternion.
        Quaternion *quaternionConjugate = [quaternion conjugate];
        // Multiply the quaternion with the current Vector3.
        Quaternion *result = [[quaternion multiply:qvector] multiply: quaternionConjugate];
        // Return a new updated Vector3
        return result.vector;
    }

    /**
     * @brief Rotates the current Vector3 by a given angle in degrees
     *  around a given Axis.
     * 
     * @return Vector3*: Rotated Vector3.
     */
    - (instancetype)rotateByDegrees:(CGFloat)angle aroundAxis:(Vector3 *)center {
        // Convert the angle to radians.
        CGFloat radians = angle * M_PI / 180.0;
        // Return the rotated Vector3.
        return [self rotateByRadians:radians aroundAxis:center];
    }

    /**
     * @brief Rotates the current Vector3 by a given angle in degrees
     *  around the origin.
     * 
     * @return Vector3*: Rotated Vector3.
     */
    - (instancetype)rotateByDegrees:(CGFloat)angle {
        // Rotate the current Vector3 around the origin.
        return [self rotateByDegrees:angle aroundAxis:[Vector3 initWithX:0 Y:0 Z:0]];
    }

    /**
     * @brief Rotates the current Vector3 by a given angle in radians
     *  around a given Axis.
     * 
     * @return Vector3*: Rotated Vector3.
     */
    - (instancetype)rotateByRadians:(CGFloat)angle aroundAxis:(Vector3 *)center {
        // Create a quaternion from the given axis and angle.
        Quaternion *quaternion = [Quaternion initWithRadians:angle Vector:center];
        // Return the rotated Vector3.
        return [self rotateByQuaternion:quaternion];
    }

    /**
     * @brief Rotates the current Vector3 by a given angle in radians
     *  around the origin.
     * 
     * @return Vector3*: Rotated Vector3.
     */
    - (instancetype)rotateByRadians:(CGFloat)angle {
        // Rotate the current Vector3 around the origin.
        return [self rotateByRadians:angle aroundAxis:[Vector3 initWithX:0 Y:0 Z:0]];
    }

    /* --- End of Vector Operations --- */

@end
/* --- End of Implementation --- */