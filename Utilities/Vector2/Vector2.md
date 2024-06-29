# [Hot Chocolate](../../README.md) - Vector2 Class
Last Updated On: June 19th, 2024 

---
The `Vector2` class is a simple 2D vector class that has `CGFloat` x and y components. It includes methods for simple vector operations such as addition, subtraction, multiplication, division, dot product, cross product, length calculation, normalization, distance calculation, angle calculation, equality check, and rotation.

## Table of Contents
- [Initializers](#initializers)
    - [-initWithX: Y:](#initwithx-y)
    - [+initWithX: Y:](#initwithx-y-1)
- [Deinitializer](#deinitializer)
    - [dealloc](#dealloc)
- [Vector Operations](#vector-operations)
    - [add](#add)
    - [subtract](#subtract)
    - [multiply](#multiply)
    - [divide](#divide)
    - [dot](#dot)
    - [scale](#scale)
    - [scaleX: Y:](#scalex-y)
    - [scaleX](#scaleX)
    - [scaleY](#scaleY)
    - [length](#length)
    - [normalize](#normalize)
    - [distance](#distance)
    - [angle](#angle)
    - [isEqualTo](#isequalto)
    - [description](#description)
    - [rotateByDegrees: aroundPoint:](#rotatebydegrees-aroundpoint)
    - [rotateByDegrees:](#rotatebydegrees)
    - [rotateByRadians: aroundPoint:](#rotatebyradians-aroundpoint)
    - [rotateByRadians:](#rotatebyradians)

## Initializers

### [-initWithX: Y:](./Vector2.m#L30)
This instance method initializes a `Vector2` object with the given `CGFloat` x and y values.

- Parameters:
    - x: The `CGFloat` x component of the vector.
    - y: The `CGFloat` y component of the vector.

- Returns: The initialized `Vector2` object.

---

### [+initWithX: Y:](./Vector2.m#L48)
This class method initializes a `Vector2` object with the given `CGFloat` x and y values. It automatically allocates memory for a new `Vector2` object and returns it.

- Parameters:
    - x: The `CGFloat` x component of the vector.
    - y: The `CGFloat` y component of the vector.

- Returns: The initialized `Vector2` object.

## Deinitializer

### [dealloc:](./Vector2.m#59)
This method deallocates memory space from the current `Vector2` object. It's called when the object is no longer needed.

## Vector Operations

### [add:](./Vector2.m#L73)
This method adds the given `Vector2` to the current vector. It creates a new `Vector2` object with the sum of the x and y components of the current vector and the given vector.

- Parameters:
    - vector: The `Vector2` to be added.

- Returns: The resulting `Vector2` after addition.

---

### [subtract:](./Vector2.m#L84)
This method subtracts the given `Vector2` from the current vector. It creates a new `Vector2` object with the difference of the x and y components of the current vector and the given vector.

- Parameters:
    - vector: The `Vector2` to be subtracted.

- Returns: The resulting `Vector2` after subtraction.

---

### [multiply:](./Vector2.m#L95)
This method multiplies the current vector with the given `CGFloat` scalar. It creates a new `Vector2` object with the x and y components of the current vector multiplied by the scalar.

- Parameters:
    - scalar: The `CGFloat` scalar to be multiplied.

- Returns: The resulting `Vector2` after multiplication.

---

### [divide:](./Vector2.m#L106)
This method divides the current vector with the given `CGFloat` scalar. It creates a new `Vector2` object with the x and y components of the current vector divided by the scalar.

- Parameters:
    - scalar: The `CGFloat` scalar to be divided.

- Returns: The resulting `Vector2` after division.

---

### [dot:](./Vector2.m#L117)
This method calculates the dot product between the current `Vector2` and the given `Vector2`. The dot product is calculated as the sum of the products of the corresponding components of the two vectors.

- Parameters:
    - vector: The `Vector2` to do the dot product with.

- Returns: The `CGFloat` result of the dot product.

---

### [scale:](./Vector2.m#L130)
This method scales the current `Vector2` by a given `CGFloat` factor. The scaling is done by multiplying each x and y components of the vector by the given scaling factor.

- Parameters:
    - factor: The `CGFloat` to scale the Vector.

- Returns: The `Vector2` result of the scaling.

---

### [scaleX: Y:](./Vector2.m#L144)
This method scales the current `Vector2` by a given `CGFloat` xFactor and yFactor. The scaling is done by multiplying x and y components of the vector by the given xFactor and yFactor.

- Parameters:
    - xFactor: The `CGFloat` to scale the x component.
    - yFactor: The `CGFloat` to scale the y component.

- Returns: The `Vector2` result of the scaling.

---

### [scaleX:](./Vector2.m#L157)
This method scales the current `Vector2` by a given `CGFloat` xFactor. The scaling is done by multiplying the x component of the vector by the given xFactor.

- Parameters:
    - xFactor: The `CGFloat` to scale the x component.

- Returns: The `Vector2` result of the scaling.

---

### [scaleY:](./Vector2.m#L170)
This method scales the current `Vector2` by a given `CGFloat` yFactor. The scaling is done by multiplying the y component of the vector by the given yFactor.

- Parameters:
    - yFactor: The `CGFloat` to scale the y component.

- Returns: The `Vector2` result of the scaling.

---

### [length:](./Vector2.m#L180)
This method calculates the length (magnitude) of the current `Vector2`. The length is calculated as the square root of the sum of the squares of the x and y components.

- Returns: The `CGFloat` length (magnitude) of the current `Vector2`.

---

### [normalize:](./Vector2.m#L190)
This method normalizes the current vector. It creates a new `Vector2` object with the x and y components of the current vector divided by its length.

- Returns: The normalized `Vector2`.

---

### [distance:](./Vector2.m#L209)
This method calculates the distance between the current vector and the given vector. The distance is calculated as the length of the vector obtained by subtracting the given vector from the current vector.

- Parameters:
    - vector: The `Vector2` to calculate the distance to.

- Returns: The `CGFloat` distance between the two `Vector2`s.

---

### [angle:](./Vector2.m#L220)
This method calculates the angle between the current vector and the given vector. The angle is calculated using the dot product and the lengths of the two vectors.

- Parameters:
    - vector: The `Vector2` to calculate the angle to.

- Returns: The `CGFloat` angle between the two `Vector2`s in radians.

---

### [isEqualTo:](./Vector2.m#L231)
This method checks if the current vector is equal to the given vector. Two vectors are considered equal if their x and y components are equal.

- Parameters:
    - vector: The `Vector2` to compare with.

- Returns: `YES` if the vectors are equal, `NO` otherwise.

---

### [description:](./Vector2.m#L241)
This method returns a string representation of the current `Vector2`. The string representation includes the x and y components of the vector.

- Returns: The `NSString` representation of the current `Vector2`.

---

### [rotateByDegrees: aroundPoint:](./Vector2.m#L252)
This method rotates the current `Vector2` by a given angle in degrees around a given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in degrees.
    - center: The `Vector2` point around which the vector is rotated.

- Returns: The rotated `Vector2`.

---

### [rotateByDegrees:](./Vector2.m#L265)
This method rotates the current `Vector2` by a given angle in degrees around the origin. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in degrees.

- Returns: The rotated `Vector2`.

---

### [rotateByRadians: aroundPoint:](./Vector2.m#L276)
This method rotates the current `Vector2` by a given angle in radians around a given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.
    - center: The `Vector2` point around which the vector is rotated.

- Returns: The rotated `Vector2`.

---

### [rotateByRadians:](./Vector2.m#L299)
This method rotates the current `Vector2` by a given angle in radians around the origin. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.

- Returns: The rotated `Vector2`.

---

## Usage

```Objective-C
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2 Z:3];
Vector2 *v2 = [Vector2 initWithX:4 Y:5 Z:6];

// Vector Operations
Vector2 *sum = [v1 add:v2];
Vector2 *diff = [v1 subtract:v2];
Vector2 *product = [v1 multiply:2];
Vector2 *quotient = [v1 divide:2];
Vector2 *scaledV1 = [v1 scale:100];

CGFloat dotProduct = [v1 dot:v2];
CGFloat length = [v1 length];
Vector2 *normalized = [v1 normalize];
CGFloat distance = [v1 distance:v2];
CGFloat angle = [v1 angle:v2];
BOOL isEqual = [v1 isEqualTo:v2];

// Vector print out
NSString *description = [v1 description];
NSLog(@"%@", description);

// 2D Rotations
Vector2 *rotatedByDegrees = [v1 rotateByDegrees:45];
Vector2 *rotatedByRadians = [v1 rotateByRadians:M_PI/4];
```