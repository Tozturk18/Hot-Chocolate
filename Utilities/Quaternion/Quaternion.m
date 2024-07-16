/**
 * @file Quaternion.m
 * @contributors Jemidiah (https://www.vbforums.com/showthread.php?584390-Quaternion-from-two-3D-Position-Vectors#post_3609310)
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the implementation file for the Quaternion class.
 *  It is a simple 4D quaternion class with a Vector3 and a w components.
 *  It includes methods for simple Quaternion operations.
 * @version 0.1
 * @date 2024-06-17
 * 
 * @copyright MIT License (c) 2024
 * 
 */

/* --- Imports --- */
#import "Quaternion.h"
#import "../Vector3/Vector3.h"
/* --- End of Imports --- */

/* --- Implementation --- */
@implementation Quaternion

    /* --- Initializers --- */

    /**
     * @brief Initializes the Quaternion object with the given Vector3 and w values.
     *
     * @param w: The w component of the quaternion.
     * @param Vector3: The Vector3 object that holds the x, y, and z components of the quaternion.
     * @return instancetype: The initialized Quaternion object.
     */
    - (instancetype)initWithW:(CGFloat)w Vector:(Vector3*)vector {
        self = [super init];    // Call the super class's initializer.

        // If the object is initialized successfully, set the Vector3 and w components.
        if (self) {
            self.w = w;
            self.vector = vector;
        }
        return self;
    }

    /**
     * @brief Initializes the Quaternion object with the given Vector3 and w values.
     * 
     * @param w: The w component of the quaternion.
     * @param Vector3: The Vector3 object that holds the x, y, and z components of the quaternion.
     * @return instancetype: The initialized Quaternion object.
     */
    + (instancetype)initWithW:(CGFloat)w Vector:(Vector3 *)vector {
        // Return the initialized Quaternion object.
        return [[Quaternion alloc] initWithW:w Vector:vector];
    }

    /**
     * @brief Initializes the Quaternion object with the given Vector3 and angle (in degrees) values.
     * 
     * @param degrees: The angle in degrees.
     * @param vector: The Vector3 object that holds the x, y, and z components of the quaternion.
     * @return instancetype: The initialized Quaternion object.
     */
    + (instancetype)initWithDegrees:(CGFloat)degrees Vector:(Vector3*)vector {
        // Convert the degrees to radians.
        CGFloat radians = degrees * M_PI / 180;
        // Return the initialized Quaternion object with the Vector3 object and radians value.
        return [self initWithRadians:radians Vector:vector];
    }

    /**
     * @brief Initializes the Quaternion object with the given Vector3 and angle (in radians) values.
     * 
     * @param radians: The angle in radians.
     * @param vector: The Vector3 object that holds the x, y, and z components of the quaternion.
     * @return instancetype: The initialized Quaternion object.
     */
    + (instancetype)initWithRadians:(CGFloat)radians Vector:(Vector3*)vector {
        // Calculate the half angle.
        CGFloat halfAngle = radians / 2;
        // Calculate the sin and cos of the half angle.
        CGFloat sinHalfAngle = sin(halfAngle);
        CGFloat cosHalfAngle = cos(halfAngle);
        // Return the initialized Quaternion object with the calculated values.
        return [self initWithW:cosHalfAngle Vector:[[vector normalize] multiply: sinHalfAngle]];
    }

    /**
     * @brief Initializes the Quaternion object with the given x, y, z, and w values.
     * 
     * @param w: The w component of the quaternion.
     * @param x: The x component of the quaternion.
     * @param y: The y component of the quaternion.
     * @param z: The z component of the quaternion.
     * @return instancetype: The initialized Quaternion object.
     */
    + (instancetype)initWithW:(CGFloat)w X:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z {
        // Create a Vector3 object with the given x, y, and z values.
        Vector3 *vector = [Vector3 initWithX:x Y:y Z:z];
        // Return the initialized Quaternion object with the Vector3 object and w value.
        return [self initWithW:w Vector:vector];
    }

    /**
     * @brief Initializes the Quaternion object with the given x, y, and z values and w=0.
     * 
     * @param x: The x component of the quaternion.
     * @param y: The y component of the quaternion.
     * @param z: The z component of the quaternion.
     * @return instancetype: The initialized Quaternion object.
     */
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z {
        // Create a Vector3 object with the given x, y, and z values.
        Vector3 *vector = [Vector3 initWithX:x Y:y Z:z];
        // Return the initialized Quaternion object with the given x, y, z, and w values.
        return [self initWithW:0 Vector:vector];
    }

    /**
     * @brief Initialize Quaternion object with given axis and w component.
     *
     * @param w: The w component of the quaternion.
     * @param axis: The axis of rotation.
     *
     * @return instancetype: The initialized Quaternion object.
     */
    Quaternion* initQuaternionWithW(float w, Vector3 *axis) {
        // Return the initialized Quaternion object with the given w and axis.
        return [Quaternion initWithW:w Vector:axis];
    }

    /**
     * @bried Initialize Quaternion object with given axis and angle in degrees.
     *
     * @param angle: The angle in degrees.
     * @param axis: The axis of rotation.
     * @return instancetype: The initialized Quaternion object.
     */
    Quaternion* initQuaternionWithDegrees(float angle, Vector3 *axis) {
        // Return the initialized Quaternion object with the given angle and axis.
        return [Quaternion initWithDegrees:angle Vector:axis];
    }

    /**
     * @bried Initialize Quaternion object with given axis and angle in radians.
     *
     * @param angle: The angle in radians.
     * @param axis: The axis of rotation.
     * @return instancetype: The initialized Quaternion object.
     */
    Quaternion* initQuaternionWithRadians(float angle, Vector3 *axis) {
        // Return the initialized Quaternion object with the given angle and axis.
        return [Quaternion initWithRadians:angle Vector:axis];
    }
    /* --- End of Initializers --- */

    /* --- Deinitlialize --- */

    /**
     * @brief Deinitializes the Quaternion object.
     */
    - (void)dealloc {
        // Release the Vector3 object.
        [self.vector dealloc];
        // Call the super class's deinitilize method.
        [super dealloc];
    }

    /**
     * @brief Deinitializes the Quaternion object.
     */
    void freeQuaternion(Quaternion *q) {
        // Release the Quaternion object.
        [q dealloc];
    }
    /* --- End of Deinitlialize --- */

    /* --- Instance Methods --- */

    /**
     * @brief Adds the given Quaternion to the current Quaternion.
     * 
     * @param quaternion: The Quaternion object to add.
     * @return Quaternion: The resulting Quaternion object.
     */
    - (Quaternion*)add:(Quaternion*)quaternion {
        // Return a new Quaternion object with the sum of the two quaternions.
        return [Quaternion initWithW:self.w + quaternion.w Vector:[self.vector add:quaternion.vector]];
    }
    Quaternion* QuaternionAdd(Quaternion *q1, Quaternion *q2) {
        // Return the sum of the two quaternions.
        return [q1 add:q2];
    }

    /**
     * @brief Subtracts the given Quaternion from the current Quaternion.
     * 
     * @param quaternion: The Quaternion object to subtract.
     * @return Quaternion: The resulting Quaternion object.
     */
    - (Quaternion*)subtract:(Quaternion*)quaternion {
        // Return a new Quaternion object with the difference of the two quaternions.
        return [Quaternion initWithW:self.w - quaternion.w Vector:[self.vector subtract:quaternion.vector]];
    }
    Quaternion* QuaternionSubtract(Quaternion *q1, Quaternion *q2) {
        // Return the difference of the two quaternions.
        return [q1 subtract:q2];
    }

    /**
     * @brief Multiplies the current Quaternion with the given Quaternion.
     * 
     * @param Quaternion: The Quaternion object to be multiplied.
     * @return Quaternion: The resulting Quaternion object.
     */
    - (Quaternion*)multiply:(Quaternion*)quaternion {
        // Calculate the cross product of the two quaternions.
        Vector3 *cross = [self.vector cross:quaternion.vector];

        // Calculate the dot product of the two quaternions.
        CGFloat dot = [self.vector dot:quaternion.vector];

        // Calculate the w component of the resulting quaternion.
        CGFloat w = self.w * quaternion.w - dot;

        // Calculates the Vector3 component of the resulting quaternion
        Vector3 *vector = [[[self.vector multiply:quaternion.w] add:[quaternion.vector multiply:self.w]] add:cross];

        // Return a new Quaternion object with the calculated values.
        return [Quaternion initWithW:w Vector:vector];
    }
    Quaternion* QuaternionMultiply(Quaternion *q1, Quaternion *q2) {
        // Return the product of the two quaternions.
        return [q1 multiply:q2];
    }

    /**
     * @brief Multiplies the current Quaternion with the given scalar.
     * 
     * @param CGFloat: The scalar to be multiplied.
     * @return Quaternion: The resulting Quaternion object.
     */
    - (Quaternion*)scalarMultiply:(CGFloat)scalar {
        // Return a new Quaternion object with the product of the quaternion and the scalar.
        return [Quaternion initWithW:self.w * scalar Vector:[self.vector multiply:scalar]];
    }
    Quaternion* QuaternionScalarMultiply(Quaternion *q, float scalar) {
        // Return the product of the quaternion and the scalar.
        return [q scalarMultiply:scalar];
    }

    /**
     * @brief Divides the current Quaternion with a given quaternion
     *
     * @param quaternion: The Quaternion object to divide.
     *
     * @return Quaternion: The resulting Quaternion object.
     */
    - (NSArray<Quaternion*>*)divide:(Quaternion*)quaternion {
        // Create a NSArray with 2 elements
        NSMutableArray<Quaternion*> *results = [[NSMutableArray alloc] initWithCapacity:2];
        // Populate the 2 elements with the 2 possible outcomes of the division
        [results addObject:[self multiply:[quaternion inverse]]];
        [results addObject:[[quaternion inverse] multiply:self]];
        // Return the results
        return results;
    }
    Quaternion** QuaternionDivide(Quaternion *q1, Quaternion *q2) {
        // Divide the two quaternions and store the results in the array
        NSArray<Quaternion*> *results = [q1 divide:q2];
        // Create a pointer to an array of results.length Quaternion objects
        Quaternion** Cresults = (Quaternion**)malloc([results count] * sizeof(Quaternion*));
        // Populate the array with the results
        for (int i = 0; i < [results count]; i++) {
            Cresults[i] = [results objectAtIndex:i];
        }
        // Release the results array
        [results release];
        // Return the array of results
        return Cresults;
    }

    /**
     * @brief Divides the current Quaternion with the given scalar.
     * 
     * @param CGFloat: The scalar to be divided.
     * @return Quaternion: The resulting Quaternion object.
     */
    - (Quaternion*)scalarDivide:(CGFloat)scalar {
        // Return a new Quaternion object with the product of the quaternion and the scalar.
        return [Quaternion initWithW:self.w / scalar Vector:[self.vector divide:scalar]];
    }
    Quaternion* QuaternionScalarDivide(Quaternion *q, float scalar) {
        // Return the quotient of the quaternion and the scalar.
        return [q scalarDivide:scalar];
    }

    /**
     * @brief Calculates the length (magnitude) of the current Quaternion's vector.
     * 
     * @return CGFloat: The length (magnitude) of the Quaternion's vector.
     */
    - (CGFloat)length {
        // Return the length of the quaternion.
        return sqrt(self.w * self.w + self.vector.x * self.vector.x + self.vector.y * self.vector.y + self.vector.z * self.vector.z);
    }
    float QuaternionLength(Quaternion *q) {
        // Return the length of the quaternion.
        return (float)[q length];
    }
    
    /**
     * @brief Normalizes the current Quaternion's vector.
     * 
     * @return Quaternion: The normalized Quaternion object.
     */
    - (Quaternion*)normalize {
        // Calculate the length of the quaternion.
        CGFloat length = [self length];
        // Return a new Quaternion object with the normalized values.
        return [Quaternion initWithW:self.w Vector:[self.vector divide:length]];
    }
    Quaternion* QuaternionNormalize(Quaternion *q) {
        // Return the normalized quaternion.
        return [q normalize];
    }

    /**
     * @brief Calculates the conjugate (inverts) of the current Quaternion.
     * 
     * @return Quaternion: The conjugate (inverts) of the current Quaternion.
     */
    - (Quaternion*)conjugate {
        // Normalize the current quaternion and copy it into a temporary quaternion
        Quaternion *temp = [self copy];

        // Invert the vector part of the quaternion
        temp.vector.x *= -1;
        temp.vector.y *= -1;
        temp.vector.z *= -1;

        // Return the inverted quaternion
        return temp;
    }
    Quaternion* QuaternionConjugate(Quaternion *q) {
        // Return the conjugate of the quaternion.
        return [q conjugate];
    }

    /**
     * @brief Calculates the inverse of the current Quaternion.
     * 
     * @return Quaternion: The inverse of the current Quaternion.
     */
    - (Quaternion*)inverse {
        // Calculate the conjugate of the current quaternion.
        Quaternion *conjugate = [self conjugate];
        // Calculate the length of the current quaternion.
        CGFloat length = [self length];
        // Calculate the squared length of the current quaternion.
        CGFloat squaredLength = length * length;

        // Return a new Quaternion object with the inverse of the current quaternion.
        return [Quaternion initWithW:conjugate.w / squaredLength Vector:[conjugate.vector divide:squaredLength]];
    }
    Quaternion* QuaternionInverse(Quaternion *q) {
        // Return the inverse of the quaternion.
        return [q inverse];
    }

    /**
     * @brief Checks if the current Quaternion is equal to the given Quaternion.
     *
     * @param Quaternion: The Quaternion object to compare.
     *
     * @return BOOL: YES if the two quaternions are equal, NO otherwise.
     */
    - (BOOL)isEqualTo:(Quaternion*)quaternion {
        // Check if the two quaternions are equal.
        return (self.vector.x == quaternion.vector.x && self.vector.y == quaternion.vector.y && self.vector.z == quaternion.vector.z && self.w == quaternion.w);
    }
    int QuaternionIsEqualTo(Quaternion *q1, Quaternion *q2) {
        // Check if the two quaternions are equal.
        return (int)[q1 isEqualTo:q2];
    }

    /**
     * @brief Returns a string representation of the current Vector3.
     * 
     * @return NSString*: The string representation of the current Vector3.
     */
    - (NSString*)description {
        // Return the string representation of the current quaternion.
        return [NSString stringWithFormat:@"(w:%f, x:%f, y:%f, z:%f)", self.w, self.vector.x, self.vector.y, self.vector.z];
    }
    char* QuaternionDescription(Quaternion *q) {
        // Return the string representation of the quaternion.
        return (char*)[[q description] UTF8String];
    }

    /**
     * @brief Copy the current Quaternion to create a new instance.
     *
     * @return Quaternion*: The copied Quaternion object.
     */
    - (Quaternion*)copy {
        // Return a new Quaternion object with the same values.
        return [Quaternion initWithW:self.w Vector:[self.vector copy]];
    }
    Quaternion* QuaternionCopy(Quaternion *q) {
        // Return the copied quaternion.
        return [q copy];
    }

    /* --- End of Instance Methods --- */
@end