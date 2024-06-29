# [Hot Chocolate](../../README.md) - Vector3 Class
Last Updated On: June 19th, 2024 

---

The `Vector3` class is a simple 3D vector class that has `CGFloat` x, y, and z components. It includes methods for simple vector operations such as addition, subtraction, multiplication, division, dot product, cross product, length calculation, normalization, distance calculation, angle calculation, equality check, and rotation.

## Table of Contents
- [Initializers](#initializers)
    - [-initWithX: Y: Z:](#initwithx-y-z)
    - [+initWithX: Y: Z:](#initwithx-y-z-1)
    - [+initWithX: Y:](#initwithx-y)
- [Deinitializer](#deinitializer)
    - [dealloc](#dealloc)
- [Vector Operations](#vector-operations)
    - [add](#add)
    - [subtract](#subtract)
    - [multiply](#multiply)
    - [divide](#divide)
    - [dot](#dot)
    - [cross](#cross)
    - [scale](#scale)
    - [scaleX: Y: Z:](#scalex-y-z)
    - [scaleX](#scaleX)
    - [scaleY](#scaleY)
    - [scaleZ](#scaleZ)
    - [length](#length)
    - [normalize](#normalize)
    - [distance](#distance)
    - [angle](#angle)
    - [isEqualTo](#isequalto)
    - [description](#description)
    - [copy](#copy)
    - [rotateByQuaternion:](#rotatebyquaternion)
    - [rotateByDegrees: aroundPoint:](#rotatebydegrees-aroundpoint)
    - [rotateByDegrees:](#rotatebydegrees)
    - [rotateByRadians: aroundPoint:](#rotatebyradians-aroundpoint)
    - [rotateByRadians:](#rotatebyradians)

## Initializers

### [-initWithX: Y: Z:](./Vector3.m#L32)
This instance method initializes a `Vector3` object with the given `CGFloat` x, y, and z values.

- Parameters:
    - x: The `CGFloat` x component of the vector.
    - y: The `CGFloat` y component of the vector.
    - z: The `CGFloat` z component of the vector.

- Returns: The initialized `Vector3` object.

---

### [+initWithX: Y: Z:](./Vector3.m#L52)
This class method initializes a `Vector3` object with the given `CGFloat` x, y, and z values. It automatically allocates memory for a new `Vector3` object and returns it.

- Parameters:
    - x: The `CGFloat` x component of the vector.
    - y: The `CGFloat` y component of the vector.
    - z: The `CGFloat` z component of the vector.

- Returns: The initialized `Vector3` object.

---

### [+initWithX: Y:](./Vector3.m#L64)
This class method initializes a `Vector3` object with the given `CGFloat` x and y values and a default z value of 0. It automatically allocates memory for a new `Vector3` object and returns it.

- Parameters:
    - x: The `CGFloat` x component of the vector.
    - y: The `CGFloat` y component of the vector.

- Returns: The initialized `Vector3` object.

## Deinitializer

### [dealloc:](./Vector3.m#76)
This method deallocates memory space from the current `Vector3` object. It's called when the object is no longer needed.

## Vector Operations

### [add:](./Vector3.m#L90)
This method adds the given `Vector3` to the current vector. It creates a new `Vector3` object with the sum of the x, y, and z components of the current vector and the given vector.

- Parameters:
    - vector: The `Vector3` to be added.

- Returns: The resulting `Vector3` after addition.

---

### [subtract:](./Vector3.m#L101)
This method subtracts the given `Vector3` from the current vector. It creates a new `Vector3` object with the difference of the x, y, and z components of the current vector and the given vector.

- Parameters:
    - vector: The `Vector3` to be subtracted.

- Returns: The resulting `Vector3` after subtraction.

---

### [multiply:](./Vector3.m#L112)
This method multiplies the current vector with the given `CGFloat` scalar. It creates a new `Vector3` object with the x, y, and z components of the current vector multiplied by the scalar.

- Parameters:
    - scalar: The `CGFloat` scalar to be multiplied.

- Returns: The resulting `Vector3` after multiplication.

---

### [divide:](./Vector3.m#L123)
This method divides the current vector with the given `CGFloat` scalar. It creates a new `Vector3` object with the x, y, and z components of the current vector divided by the scalar.

- Parameters:
    - scalar: The `CGFloat` scalar to be divided.

- Returns: The resulting `Vector3` after division.

---

### [dot:](./Vector3.m#L134)
This method calculates the dot product between the current `Vector3` and the given `Vector3`. The dot product is calculated as the sum of the products of the corresponding components of the two vectors.

- Parameters:
    - vector: The `Vector3` to do the dot product with.

- Returns: The `CGFloat` result of the dot product.

---

### [cross:](./Vector3.m#L145)
This method calculates the cross product between the current `Vector3` and the given `Vector3`. The cross product is calculated as a `Vector3` whose components are the differences of the products of the corresponding components of the two vectors.

- Parameters:
    - vector: The `Vector3` to do the cross product with.

- Returns: The resulting `Vector3` of the cross product.

---

### [scale:](./Vector3.m#L158)
This method scales the current `Vector3` by a given `CGFloat` factor. The scaling is done by multiplying each x, y, and z components of the vector by the given scaling factor.

- Parameters:
    - factor: The `CGFloat` to scale the Vector.

- Returns: The `Vector3` result of the scaling.

---

### [scaleX: Y: Z:](./Vector3.m#L173)
This method scales the current `Vector3` by a given `CGFloat` xFactor, yFactor, and zFactor. The scaling is done by multiplying x, y, and z components of the vector by the given xFactor, yFactor, and zFactor.

- Parameters:
    - xFactor: The `CGFloat` to scale the x component.
    - yFactor: The `CGFloat` to scale the y component.
    - zFactor: The `CGFloat` to scale the z component.

- Returns: The `Vector3` result of the scaling.

---

### [scaleX:](./Vector3.m#L186)
This method scales the current `Vector3` by a given `CGFloat` xFactor. The scaling is done by multiplying the x component of the vector by the given xFactor.

- Parameters:
    - xFactor: The `CGFloat` to scale the x component.

- Returns: The `Vector3` result of the scaling.

---

### [scaleY:](./Vector3.m#L199)
This method scales the current `Vector3` by a given `CGFloat` yFactor. The scaling is done by multiplying the y component of the vector by the given yFactor.

- Parameters:
    - yFactor: The `CGFloat` to scale the y component.

- Returns: The `Vector3` result of the scaling.

---

### [scaleZ:](./Vector3.m#L212)
This method scales the current `Vector3` by a given `CGFloat` zFactor. The scaling is done by multiplying the z component of the vector by the given zFactor.

- Parameters:
    - zFactor: The `CGFloat` to scale the z component.

- Returns: The `Vector3` result of the scaling.

---

### [length:](./Vector3.m#L222)
This method calculates the length (magnitude) of the current `Vector3`. The length is calculated as the square root of the sum of the squares of the x, y, and z components.

- Returns: The `CGFloat` length (magnitude) of the current `Vector3`.

---

### [normalize:](./Vector3.m#L232)
This method normalizes the current vector. It creates a new `Vector3` object with the x, y, and z components of the current vector divided by its length.

- Returns: The normalized `Vector3`.

---

### [distance:](./Vector3.m#L251)
This method calculates the distance between the current vector and the given vector. The distance is calculated as the length of the vector obtained by subtracting the given vector from the current vector.

- Parameters:
    - vector: The `Vector3` to calculate the distance to.

- Returns: The `CGFloat` distance between the two `Vector3`s.

---

### [angle:](./Vector3.m#L262)
This method calculates the angle between the current vector and the given vector. The angle is calculated using the dot product and the lengths of the two vectors.

- Parameters:
    - vector: The `Vector3` to calculate the angle to.

- Returns: The `CGFloat` angle between the two `Vector3`s in radians.

---

### [isEqualTo:](./Vector3.m#L273)
This method checks if the current vector is equal to the given vector. Two vectors are considered equal if their x, y, and z components are equal.

- Parameters:
    - vector: The `Vector3` to compare with.

- Returns: `YES` if the vectors are equal, `NO` otherwise.

---

### [description:](./Vector3.m#L283)
This method returns a string representation of the current `Vector3`. The string representation includes the x, y, and z components of the vector.

- Returns: The `NSString` representation of the current `Vector3`.

---

### [copy:](./Vector3.m#293)
This method copies the current `Vector3` to create a new instance of it. This is especially useful because Objective-C defaults to pass-by-reference.

- Returns: A new instance (copy) of the current `Vector3`.

---

### [rotateByQuaternion:](./Vector3.m#L303)
This method rotates the current `Vector3` by a given quaternion 4D vector. The rotation is performed using rotation matrices.

- Parameters:
    - quaternion: The `Quaternion` to rotate the vector.

- Returns: The rotated `Vector3`.

---

### [rotateByDegrees: aroundPoint:](./Vector3.m#L320)
This method rotates the current `Vector3` by a given angle in degrees around a given `Vector3` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in degrees.
    - center: The `Vector3` point around which the vector is rotated.

- Returns: The rotated `Vector3`.

---

### [rotateByDegrees:](./Vector3.m#L333)
This method rotates the current `Vector3` by a given angle in degrees around the origin. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in degrees.

- Returns: The rotated `Vector3`.

---

### [rotateByRadians: aroundPoint:](./Vector3.m#L344)
This method rotates the current `Vector3` by a given angle in radians around a given `Vector3` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.
    - center: The `Vector3` point around which the vector is rotated.

- Returns: The rotated `Vector3`.

---

### [rotateByRadians:](./Vector3.m#L357)
This method rotates the current `Vector3` by a given angle in radians around the origin. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.

- Returns: The rotated `Vector3`.

---

## Usage

```Objective-C
// Initialize vectors
Vector3 *v1 = [Vector3 initWithX:1 Y:2 Z:3];
Vector3 *v2 = [Vector3 initWithX:4 Y:5 Z:6];

// Vector operations
Vector3 *sum = [v1 add:v2];
Vector3 *diff = [v1 subtract:v2];
Vector3 *product = [v1 multiply:2];
Vector3 *quotient = [v1 divide:2];

CGFloat dotProduct = [v1 dot:v2];
Vector3 *crossProduct = [v1 cross:v2];
CGFloat length = [v1 length];
Vector3 *normalized = [v1 normalize];
CGFloat distance = [v1 distance:v2];
CGFloat angle = [v1 angle:v2];
BOOL isEqual = [v1 isEqualTo:v2];

// Vector print out
NSString *description = [v1 description];
NSLog(@"%@", description);

// 3D rotations
Vector3 *axis = [Vector3 initWithX:2 Y:1 Z:5];
Quaternion *q = [Quaternion initWithVector:axis Degrees:90.0];
Vector3 *rotatedByQuaternion = [v1 rotateByQuaternion:q];

Vector3 *rotatedByDegrees = [v1 rotateByDegrees:45];
Vector3 *rotatedByRadians = [v1 rotateByRadians:M_PI/4];
```