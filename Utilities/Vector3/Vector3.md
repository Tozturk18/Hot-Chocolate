# [Hot Chocolate](../../README.md) - Vector3 Class (C & Objective-C)
**Last Updated:** July 14th, 2024 

## Overview
The `Vector3` class is a simple 3D vector class that has `CGFloat` x, y, and z components. It includes methods for simple vector operations such as addition, subtraction, multiplication, division, dot product, cross product, length calculation, normalization, distance calculation, angle calculation, equality check, and rotation.
This class is implemented in both Objective-C and C for use in both Objective-C and C projects.

## Table of Contents
- [Initializers](#initializers)
    - [-initWithX: Y: Z:](#initwithx-y-z)
    - [+initWithX: Y: Z:](#initwithx-y-z-1)
    - [+initWithX: Y:](#initwithx-y)
    - [initVector3](#initvector3)
- [Deinitializer](#deinitializer)
    - [dealloc](#dealloc)
    - [freeVector3](#freevector3)
- [Vector Operations](#vector-operations)
    - [add](#add---objective-c)
    - [subtract](#subtract---objective-c)
    - [multiply](#multiply---objective-c)
    - [divide](#divide---objective-c)
    - [dot](#dot---objective-c)
    - [cross](#cross---objective-c)
    - [scale](#scale---objective-c)
    - [scaleX: Y: Z:](#scalex-y-z---objective-c)
    - [scaleX](#scaleX---objective-c)
    - [scaleY](#scaleY---objective-c)
    - [scaleZ](#scaleZ---objective-c)
    - [length](#length---objective-c)
    - [normalize](#normalize---objective-c)
    - [distance](#distance---objective-c)
    - [angle](#angle---objective-c)
    - [isEqualTo](#isequalto---objective-c)
    - [description](#description---objective-c)
    - [copy](#copy---objective-c)
    - [rotateByQuaternion:](#rotatebyquaternion---objective-c)
    - [rotateByDegrees: aroundPoint:](#rotatebydegrees-aroundpoint---objective-c)
    - [rotateByDegrees:](#rotatebydegrees---objective-c)
    - [rotateByRadians: aroundPoint:](#rotatebyradians-aroundpoint---objective-c)
    - [rotateByRadians:](#rotatebyradians---objective-c)
- [Usage](#usage)
    - [Objective-C Sample Code](#objective-c-sample-code)
    - [C Sample Code](#c-sample-code)

## Initializers

### [-initWithX: Y: Z:](./Vector3.m#L32)
This instance method initializes a `Vector3` object with the given `CGFloat` x, y, and z values.

- Parameters:
    - x: The `CGFloat` x component of the vector.
    - y: The `CGFloat` y component of the vector.
    - z: The `CGFloat` z component of the vector.

- Returns: The initialized `Vector3` object.

**Example:**
```objc
// Initialize a Vector3 object with x=1, y=2, z=3
Vector3 *v = [[Vector3 alloc] initWithX:1 Y:2 Z:3];
```

---

### [+initWithX: Y: Z:](./Vector3.m#L52)
This class method initializes a `Vector3` object with the given `CGFloat` x, y, and z values. It automatically allocates memory for a new `Vector3` object and returns it.

- Parameters:
    - x: The `CGFloat` x component of the vector.
    - y: The `CGFloat` y component of the vector.
    - z: The `CGFloat` z component of the vector.

- Returns: The initialized `Vector3` object.

**Example:**
```objc
// Initialize a Vector3 object with x=1, y=2, z=3
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];
```

---

### [+initWithX: Y:](./Vector3.m#L64)
This class method initializes a `Vector3` object with the given `CGFloat` x and y values and a default z value of 0. It automatically allocates memory for a new `Vector3` object and returns it.

- Parameters:
    - x: The `CGFloat` x component of the vector.
    - y: The `CGFloat` y component of the vector.

- Returns: The initialized `Vector3` object.

**Example:**
```objc
// Initialize a Vector3 object with x=1, y=2, z=0
Vector3 *v = [Vector3 initWithX:1 Y:2];
```

---

### [initVector3](./Vector3.m#L74)
This instance method initializes a `Vector3` object with default x, y, and z values of 0. It's called when a new `Vector3` object is created. This is a C implementation of the Objective-C `-initWithX: Y: Z:` method.

- Parameters:
    - x: The `float` x component of the vector.
    - y: The `float` y component of the vector.
    - z: The `float` z component of the vector.

- Returns: The initialized `Vector3` object.

**Example:**
```c
// Initialize a Vector3 object with x=1, y=2, z=3
Vector3 *v = initVector3(1, 2, 3);
```

## Deinitializer

### [dealloc:](./Vector3.m#76)
This method deallocates memory space from the current `Vector3` object. It's called when the object is no longer needed.

**Example:**
```objc
// Initialize a Vector3 object with x=1, y=2, z=3
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];
// Deallocate the memory space of the Vector3 object
[v dealloc];
```

### [freeVector3](./Vector3.m#L96)
This method frees the memory space of the given `Vector3` object. It's called when the object is no longer needed. This is a C implementation of the Objective-C `-dealloc` method.

- Parameters:
    - vector: The `Vector3` object to be deallocated.

**Example:**
```c
// Initialize a Vector3 object with x=1, y=2, z=3
Vector3 *v = initVector3(1, 2, 3);
// Deallocate the memory space of the Vector3 object
freeVector3(v);
```

## Vector Operations

### [add: - Objective-C](./Vector3.m#L110)
This method adds the given `Vector3` to the current vector. It creates a new `Vector3` object with the sum of the x, y, and z components of the current vector and the given vector.

- Parameters:
    - vector: The `Vector3` to be added.

- Returns: The resulting `Vector3` after addition.

**Example:**
```objc
// Initialize vectors
Vector3 *v1 = [Vector3 initWithX:1 Y:2 Z:3];
Vector3 *v2 = [Vector3 initWithX:4 Y:5 Z:6];

// Add the two vectors
Vector3 *sum = [v1 add:v2]; // sum = (5, 7, 9)
```

### [Vector3Add() - C](./Vector3.m#L114)
This is the C version of the default add method above. It adds the given `Vector3` to the current vector. It creates a new `Vector3` object with the sum of the x, y, and z components of the current vector and the given vector.

- Parameters:
    - v1: The `Vector3` to be added.
    - v2: The `Vector3` to be added.

- Returns: The resulting `Vector3` after addition.

**Example:**
```c
// Initialize vectors
Vector3* v1 = Vector3Init(1, 2, 3);
Vector3* v2 = Vector3Init(4, 5, 6);

// Add the two vectors
Vector3* sum = Vector3Add(v1, v2); // sum = (5, 7, 9)
```

---

### [subtract: - Objective-C](./Vector3.m#L125)
This method subtracts the given `Vector3` from the current vector. It creates a new `Vector3` object with the difference of the x, y, and z components of the current vector and the given vector.

- Parameters:
    - vector: The `Vector3` to be subtracted.

- Returns: The resulting `Vector3` after subtraction.

**Example:**
```objc
// Initialize vectors
Vector3 *v1 = [Vector3 initWithX:1 Y:2 Z:3];
Vector3 *v2 = [Vector3 initWithX:4 Y:5 Z:6];

// Subtract the two vectors
Vector3 *diff = [v1 subtract:v2]; // diff = (-3, -3, -3)
```

### [Vector3Subtract() - C](./Vector3.m#L129)
This is the C version of the default subtract method above. It subtracts the given `Vector3` from the current vector. It creates a new `Vector3` object with the difference of the x, y, and z components of the current vector and the given vector.

- Parameters:
    - v1: The `Vector3` to subtract from.
    - v2: The `Vector3` to subtract with.

- Returns: The resulting `Vector3` after subtraction.

**Example:**
```c
// Initialize vectors
Vector3* v1 = Vector3Init(1, 2, 3);
Vector3* v2 = Vector3Init(4, 5, 6);

// Subtract the two vectors
Vector3* diff = Vector3Subtract(v1, v2); // diff = (-3, -3, -3)
```

---

### [multiply: - Objective-C](./Vector3.m#L140)
This method multiplies the current vector with the given `CGFloat` scalar. It creates a new `Vector3` object with the x, y, and z components of the current vector multiplied by the scalar.

- Parameters:
    - scalar: The `CGFloat` scalar to be multiplied.

- Returns: The resulting `Vector3` after multiplication.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Multiply the vector by 2
Vector3 *product = [v multiply:2]; // product = (2, 4, 6)
```

### [Vector3Multiply() - C](./Vector3.m#L144)
This is the C version of the default multiply method above. It multiplies the current vector with the given `float` scalar. It creates a new `Vector3` object with the x, y, and z components of the current vector multiplied by the scalar.

- Parameters:
    - vector: The `Vector3` to be multiplied.
    - scalar: The `float` scalar to multiply with.

- Returns: The resulting `Vector3` after multiplication.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Multiply the vector by 2
Vector3* product = Vector3Multiply(v, 2); // product = (2, 4, 6)
```

---

### [divide: - Objective-C](./Vector3.m#L155)
This method divides the current vector with the given `CGFloat` scalar. It creates a new `Vector3` object with the x, y, and z components of the current vector divided by the scalar.

- Parameters:
    - scalar: The `CGFloat` scalar to be divided.

- Returns: The resulting `Vector3` after division.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Divide the vector by 2
Vector3 *quotient = [v divide:2]; // quotient = (0.5, 1, 1.5)
```

### [Vector3Divide() - C](./Vector3.m#L159)
This is the C version of the default divide method above. It divides the current vector with the given `float` scalar. It creates a new `Vector3` object with the x, y, and z components of the current vector divided by the scalar.

- Parameters:
    - vector: The `Vector3` to be divided.
    - scalar: The `float` scalar to divide with.

- Returns: The resulting `Vector3` after division.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Divide the vector by 2
Vector3* quotient = Vector3Divide(v, 2); // quotient = (0.5, 1, 1.5)
```

---

### [dot: - Objective-C](./Vector3.m#L170)
This method calculates the dot product between the current `Vector3` and the given `Vector3`. The dot product is calculated as the sum of the products of the corresponding components of the two vectors.

- Parameters:
    - vector: The `Vector3` to do the dot product with.

- Returns: The `CGFloat` result of the dot product.

**Example:**
```objc
// Initialize vectors
Vector3 *v1 = [Vector3 initWithX:1 Y:2 Z:3];
Vector3 *v2 = [Vector3 initWithX:4 Y:5 Z:6];

// Calculate the dot product of the two vectors
CGFloat dotProduct = [v1 dot:v2]; // dotProduct = 32
```

### [Vector3Dot() - C](./Vector3.m#L174)
This is the C version of the default dot method above. It calculates the dot product between the current `Vector3` and the given `Vector3`. The dot product is calculated as the sum of the products of the corresponding components of the two vectors.

- Parameters:
    - vector1: The `Vector2` on the left-hand side of the dot product.
    - vector2: The `Vector2` on the right-hand side of the dot product.

- Returns: The `float` result of the dot product.

**Example:**
```c
// Initialize vectors
Vector3* v1 = Vector3Init(1, 2, 3);
Vector3* v2 = Vector3Init(4, 5, 6);

// Calculate the dot product of the two vectors
float dotProduct = Vector3Dot(v1, v2); // dotProduct = 32
```

---

### [cross: - Objective-C](./Vector3.m#L185)
This method calculates the cross product between the current `Vector3` and the given `Vector3`. The cross product is calculated as a `Vector3` whose components are the differences of the products of the corresponding components of the two vectors.

- Parameters:
    - vector: The `Vector3` to do the cross product with.

- Returns: The resulting `Vector3` of the cross product.

**Example:**
```objc
// Initialize vectors
Vector3 *v1 = [Vector3 initWithX:1 Y:2 Z:3];
Vector3 *v2 = [Vector3 initWithX:4 Y:5 Z:6];

// Calculate the cross product of the two vectors
Vector3 *crossProduct = [v1 cross:v2]; // crossProduct = (-3, 6, -3)
```

### [Vector3Cross() - C](./Vector3.m#L189)
This is the C version of the default cross method above. It calculates the cross product between the current `Vector3` and the given `Vector3`. The cross product is calculated as a `Vector3` whose components are the differences of the products of the corresponding components of the two vectors.

- Parameters:
    - vector1: The `Vector3` on the left-hand side of the cross product.
    - vector2: The `Vector3` on the right-hand side of the cross product.

- Returns: The resulting `Vector3` of the cross product.

**Example:**
```c
// Initialize vectors
Vector3* v1 = Vector3Init(1, 2, 3);
Vector3* v2 = Vector3Init(4, 5, 6);

// Calculate the cross product of the two vectors
Vector3* crossProduct = Vector3Cross(v1, v2); // crossProduct = (-3, 6, -3)
```

---

### [scale: - Objective-C](./Vector3.m#L202)
This method scales the current `Vector3` by a given `CGFloat` factor. The scaling is done by multiplying each x, y, and z components of the vector by the given scaling factor.

- Parameters:
    - factor: The `CGFloat` to scale the Vector.

- Returns: The `Vector3` result of the scaling.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Scale the vector by 2
Vector3 *scaled = [v scale:2]; // scaled = (2, 4, 6)
```

### [Vector3Scale() - C](./Vector3.m#L206)
This is the C version of the default scale method above. It scales the current `Vector3` by a given `float` factor. The scaling is done by multiplying each x, y, and z components of the vector by the given scaling factor.

- Parameters:
    - vector: The `Vector3` to scale.
    - factor: The `float` to scale the Vector.

- Returns: The `Vector3` result of the scaling.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Scale the vector by 2
Vector3* scaled = Vector3Scale(v, 2); // scaled = (2, 4, 6)
```

---

### [scaleX: Y: Z: - Objective-C](./Vector3.m#L221)
This method scales the current `Vector3` by a given `CGFloat` xFactor, yFactor, and zFactor. The scaling is done by multiplying x, y, and z components of the vector by the given xFactor, yFactor, and zFactor.

- Parameters:
    - xFactor: The `CGFloat` to scale the x component.
    - yFactor: The `CGFloat` to scale the y component.
    - zFactor: The `CGFloat` to scale the z component.

- Returns: The `Vector3` result of the scaling.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Scale the vector by 2 in x, 3 in y, and 4 in z
Vector3 *scaled = [v scaleX:2 Y:3 Z:4]; // scaled = (2, 6, 12)
```

### [Vector3ScaleXYZ() - C](./Vector3.m#L225)
This is the C version of the default scaleX: Y: Z: method above. It scales the current `Vector3` by a given `float` xFactor, yFactor, and zFactor. The scaling is done by multiplying x, y, and z components of the vector by the given xFactor, yFactor, and zFactor.

- Parameters:
    - vector: The `Vector3` to scale.
    - xFactor: The `float` to scale the x component.
    - yFactor: The `float` to scale the y component.
    - zFactor: The `float` to scale the z component.

- Returns: The `Vector3` result of the scaling.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Scale the vector by 2 in x, 3 in y, and 4 in z
Vector3* scaled = Vector3ScaleXYZ(v, 2, 3, 4); // scaled = (2, 6, 12)
```

---

### [scaleX: - Objective-C](./Vector3.m#L238)
This method scales the current `Vector3` by a given `CGFloat` xFactor. The scaling is done by multiplying the x component of the vector by the given xFactor.

- Parameters:
    - xFactor: The `CGFloat` to scale the x component.

- Returns: The `Vector3` result of the scaling.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Scale the vector by 2 in x
Vector3 *scaled = [v scaleX:2]; // scaled = (2, 2, 3)
```

### [Vector3ScaleX() - C](./Vector3.m#L242)
This is the C version of the default scaleX: method above. It scales the current `Vector3` by a given `float` xFactor. The scaling is done by multiplying the x component of the vector by the given xFactor.

- Parameters:
    - vector: The `Vector3` to scale.
    - xFactor: The `float` to scale the x component.

- Returns: The `Vector3` result of the scaling.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Scale the vector by 2 in x
Vector3* scaled = Vector3ScaleX(v, 2); // scaled = (2, 2, 3)
```

---

### [scaleY: - Objective-C](./Vector3.m#L255)
This method scales the current `Vector3` by a given `CGFloat` yFactor. The scaling is done by multiplying the y component of the vector by the given yFactor.

- Parameters:
    - yFactor: The `CGFloat` to scale the y component.

- Returns: The `Vector3` result of the scaling.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Scale the vector by 2 in y
Vector3 *scaled = [v scaleY:2]; // scaled = (1, 4, 3)
```

### [Vector3ScaleY() - C](./Vector3.m#L259)
This is the C version of the default scaleY: method above. It scales the current `Vector3` by a given `float` yFactor. The scaling is done by multiplying the y component of the vector by the given yFactor.

- Parameters:
    - vector: The `Vector3` to scale.
    - yFactor: The `float` to scale the y component.

- Returns: The `Vector3` result of the scaling.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Scale the vector by 2 in y
Vector3* scaled = Vector3ScaleY(v, 2); // scaled = (1, 4, 3)
```

---

### [scaleZ: - Objective-C](./Vector3.m#L272)
This method scales the current `Vector3` by a given `CGFloat` zFactor. The scaling is done by multiplying the z component of the vector by the given zFactor.

- Parameters:
    - zFactor: The `CGFloat` to scale the z component.

- Returns: The `Vector3` result of the scaling.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Scale the vector by 2 in z
Vector3 *scaled = [v scaleZ:2]; // scaled = (1, 2, 6)
```

### [Vector3ScaleZ() - C](./Vector3.m#L276)
This is the C version of the default scaleZ: method above. It scales the current `Vector3` by a given `float` zFactor. The scaling is done by multiplying the z component of the vector by the given zFactor.

- Parameters:
    - vector: The `Vector3` to scale.
    - zFactor: The `float` to scale the z component.

- Returns: The `Vector3` result of the scaling.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Scale the vector by 2 in z
Vector3* scaled = Vector3ScaleZ(v, 2); // scaled = (1, 2, 6)
```

---

### [length: - Objective-C](./Vector3.m#L286)
This method calculates the length (magnitude) of the current `Vector3`. The length is calculated as the square root of the sum of the squares of the x, y, and z components.

- Returns: The `CGFloat` length (magnitude) of the current `Vector3`.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Calculate the length of the vector
CGFloat length = [v length]; // length = sqrt(1^2 + 2^2 + 3^2) = sqrt(14) ~= 3.74
```

### [Vector3Length() - C](./Vector3.m#L290)
This is the C version of the default length method above. It calculates the length (magnitude) of the current `Vector3`. The length is calculated as the square root of the sum of the squares of the x, y, and z components.

- Parameters:
    - vector: The `Vector3` to calculate the length of.

- Returns: The `float` length (magnitude) of the current `Vector3`.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Calculate the length of the vector
float length = Vector3Length(v); // length = sqrt(1^2 + 2^2 + 3^2) = sqrt(14) ~= 3.74
```

---

### [normalize: - Objective-C](./Vector3.m#L300)
This method normalizes the current vector. It creates a new `Vector3` object with the x, y, and z components of the current vector divided by its length.

- Returns: The normalized `Vector3`.

** Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Normalize the vector
Vector3 *normalized = [v normalize]; // normalized = (~0.27, ~0.53, ~0.80)
```

### [Vector3Normalize() - C](./Vector3.m#L312)
This is the C version of the default normalize method above. It normalizes the current vector. It creates a new `Vector3` object with the x, y, and z components of the current vector divided by its length.

- Parameters:
    - vector: The `Vector3` to normalize.

- Returns: The normalized `Vector3`.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Normalize the vector
Vector3* normalized = Vector3Normalize(v); // normalized = (~0.27, ~0.53, ~0.80)
```

---

### [distance: - Objective-C](./Vector3.m#L323)
This method calculates the distance between the current vector and the given vector. The distance is calculated as the length of the vector obtained by subtracting the given vector from the current vector.

- Parameters:
    - vector: The `Vector3` to calculate the distance to.

- Returns: The `CGFloat` distance between the two `Vector3`s.

**Example:**
```objc
// Initialize vectors
Vector3 *v1 = [Vector3 initWithX:1 Y:2 Z:3];
Vector3 *v2 = [Vector3 initWithX:4 Y:5 Z:6];

// Calculate the distance between the two vectors
CGFloat distance = [v1 distance:v2]; // distance = sqrt((1-4)^2 + (2-5)^2 + (3-6)^2) = sqrt(27) ~= 5.20
```

### [Vector3Distance() - C](./Vector3.m#L327)
This is the C version of the default distance method above. It calculates the distance between the current vector and the given vector. The distance is calculated as the length of the vector obtained by subtracting the given vector from the current vector.

- Parameters:
    - vector1: The `Vector3` to calculate the distance from.
    - vector2: The `Vector3` to calculate the distance to.

- Returns: The `float` distance between the two `Vector3`s.

**Example:**
```c
// Initialize vectors
Vector3* v1 = Vector3Init(1, 2, 3);
Vector3* v2 = Vector3Init(4, 5, 6);

// Calculate the distance between the two vectors
float distance = Vector3Distance(v1, v2); // distance = sqrt((1-4)^2 + (2-5)^2 + (3-6)^2) = sqrt(27) ~= 5.20
```

---

### [angle: - Objective-C](./Vector3.m#L338)
This method calculates the angle between the current vector and the given vector. The angle is calculated using the dot product and the lengths of the two vectors.

- Parameters:
    - vector: The `Vector3` to calculate the angle to.

- Returns: The `CGFloat` angle between the two `Vector3`s in radians.

**Example:**
```objc
// Initialize vectors
Vector3 *v1 = [Vector3 initWithX:1 Y:2 Z:3];
Vector3 *v2 = [Vector3 initWithX:4 Y:5 Z:6];

// Calculate the angle between the two vectors
CGFloat angle = [v1 angle:v2]; // angle = acos((1*4 + 2*5 + 3*6) / (sqrt(14) * sqrt(77))) ~= 0.23 radians
```

### [Vector3Angle() - C](./Vector3.m#L342)
This is the C version of the default angle method above. It calculates the angle between the current vector and the given vector. The angle is calculated using the dot product and the lengths of the two vectors.

- Parameters:
    - vector1: The `Vector3` to calculate the angle from.
    - vector2: The `Vector3` to calculate the angle to.

- Returns: The `float` angle between the two `Vector3`s in radians.

**Example:**
```c
// Initialize vectors
Vector3* v1 = Vector3Init(1, 2, 3);
Vector3* v2 = Vector3Init(4, 5, 6);

// Calculate the angle between the two vectors
float angle = Vector3Angle(v1, v2); // angle = acos((1*4 + 2*5 + 3*6) / (sqrt(14) * sqrt(77))) ~= 0.23 radians
```

---

### [isEqualTo: - Objective-C](./Vector3.m#L353)
This method checks if the current vector is equal to the given vector. Two vectors are considered equal if their x, y, and z components are equal.

- Parameters:
    - vector: The `Vector3` to compare with.

- Returns: `YES` if the vectors are equal, `NO` otherwise.

**Example:**
```objc
// Initialize vectors
Vector3 *v1 = [Vector3 initWithX:1 Y:2 Z:3];
Vector3 *v2 = [Vector3 initWithX:1 Y:2 Z:3];

// Check if the two vectors are equal
BOOL isEqual = [v1 isEqualTo:v2]; // isEqual = YES
```

### [Vector3IsEqual() - C](./Vector3.m#L357)
This is the C version of the default isEqualTo method above. It checks if the current vector is equal to the given vector. Two vectors are considered equal if their x, y, and z components are equal.

- Parameters:
    - vector1: The `Vector3` to compare.
    - vector2: The `Vector3` to compare.

- Returns: `1` if the vectors are equal, `0` otherwise.

**Example:**
```c
// Initialize vectors
Vector3* v1 = Vector3Init(1, 2, 3);
Vector3* v2 = Vector3Init(1, 2, 3);

// Check if the two vectors are equal
int isEqual = Vector3IsEqual(v1, v2); // isEqual = 1
```

---

### [description: - Objective-C](./Vector3.m#L367)
This method returns a string representation of the current `Vector3`. The string representation includes the x, y, and z components of the vector.

- Returns: The `NSString` representation of the current `Vector3`.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Get the description of the vector
NSString *description = [v description]; // description = "(1, 2, 3)"

// Print it out
NSLog(@"Vector2: %@", description); // Vector2: (1, 2, 3)
```

### [Vector3Description() - C](./Vector3.m#L371)
This is the C version of the default description method above. It returns a string representation of the current `Vector3`. The string representation includes the x, y, and z components of the vector.

- Parameters:
    - vector: The `Vector3` to get the description of.

- Returns: The `char*` representation of the given `Vector3`.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Get the description of the vector
char* description = Vector3Description(v); // description = "(1, 2, 3)"

// Print it out
printf("Vector2: %s\n", description); // Vector2: (1, 2, 3)
```

---

### [copy: - Objective-C](./Vector3.m#381)
This method copies the current `Vector3` to create a new instance of it. This is especially useful because Objective-C defaults to pass-by-reference.

- Returns: A new instance (copy) of the current `Vector3`.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Copy the vector
Vector3 *copy = [v copy];

// Check if the two vectors are equal
BOOL isEqual = [v isEqualTo:copy]; // isEqual = YES
```

### [Vector3Copy() - C](./Vector3.m#L385)
This is the C version of the default copy method above. It copies the current `Vector3` to create a new instance of it. This is especially useful because Objective-C defaults to pass-by-reference.

- Parameters:
    - vector: The `Vector3` to copy.

- Returns: A new instance (copy) of the given `Vector3`.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Copy the vector
Vector3* copy = Vector3Copy(v);

// Check if the two vectors are equal
int isEqual = Vector3IsEqual(v, copy); // isEqual = 1
```

---

### [rotateByQuaternion: - Objective-C](./Vector3.m#L395)
This method rotates the current `Vector3` by a given quaternion 4D vector. The rotation is performed using rotation matrices.

- Parameters:
    - quaternion: The `Quaternion` to rotate the vector.

- Returns: The rotated `Vector3`.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Initialize a quaternion
Vector3 *axis = [Vector3 initWithX:2 Y:1 Z:5];
CGFloat angle = 90.0;
Quaternion *q = [Quaternion initWithVector:axis Degrees:angle];

// Rotate the vector by the quaternion
Vector3 *rotatedByQuaternion = [v rotateByQuaternion:q]; // rotatedByQuaternion = (-0.011353, 0.450759, 3.714389)
```

### [Vector3RotateByQuaternion() - C](./Vector3.m#L408)
This is the C version of the default rotateByQuaternion method above. It rotates the current `Vector3` by a given quaternion 4D vector. The rotation is performed using rotation matrices.

- Parameters:
    - vector: The `Vector3` to rotate.
    - quaternion: The `Quaternion` to rotate the vector.

- Returns: The rotated `Vector3`.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Initialize a quaternion
Vector3* axis = Vector3Init(2, 1, 5);
float angle = 90.0;
Quaternion* q = QuaternionInitWithVector(axis, angle);

// Rotate the vector by the quaternion
Vector3* rotatedByQuaternion = Vector3RotateByQuaternion(v, q); // rotatedByQuaternion = (-0.011353, 0.450759, 3.714389)
```

---

### [rotateByDegrees: aroundAxis: - Objective-C](./Vector3.m#L419)
This method rotates the current `Vector3` by a given angle in degrees around a given `Vector3` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in degrees.
    - center: The `Vector3` point around which the vector is rotated.

- Returns: The rotated `Vector3`.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Rotate the vector by 90 degrees around an axis
Vector3 *axis = [Vector3 initWithX:2 Y:1 Z:5];
Vector3 *rotatedByDegrees = [v rotateByDegrees:90 aroundAxis:axis]; // rotatedByDegreesAroundAxis = (-0.011353, 0.450759, 3.714389)
```

### [Vector3RotateByDegreesAroundAxis() - C](./Vector3.m#L425)
This is the C version of the default rotateByDegrees: aroundPoint: method above. It rotates the current `Vector3` by a given angle in degrees around a given `Vector3` point. The rotation is performed using rotation matrices.

- Parameters:
    - vector: The `Vector3` to rotate.
    - angle: The `float` angle in degrees.
    - center: The `Vector3` point around which the vector is rotated.

- Returns: The rotated `Vector3`.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Rotate the vector by 90 degrees around an axis
Vector3* axis = Vector3Init(2, 1, 5);
Vector3* rotatedByDegrees = Vector3RotateByDegreesAroundAxis(v, 90, axis); // rotatedByDegreesAroundAxis = (-0.011353, 0.450759, 3.714389)
```

---

### [rotateByDegrees: - Objective-C](./Vector3.m#L436)
This method rotates the current `Vector3` by a given angle in degrees around the origin in **XY plane**. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in degrees.

- Returns: The rotated `Vector3`.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Rotate the vector by 45 degrees around the origin in XY plane
Vector3 *rotatedByDegrees = [v rotateByDegrees:45]; // rotatedByDegrees = (-0.707107, 2.121320, 3.000000)
```

### [Vector3RotateByDegrees() - C](./Vector3.m#L440)
This is the C version of the default rotateByDegrees method above. It rotates the current `Vector3` by a given angle in degrees around the origin in **XY plane**. The rotation is performed using rotation matrices.

- Parameters:
    - vector: The `Vector3` to rotate.
    - angle: The `float` angle in degrees.

- Returns: The rotated `Vector3`.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Rotate the vector by 45 degrees around the origin in XY Plane
Vector3* rotatedByDegrees = Vector3RotateByDegrees(v, 45); // rotatedByDegrees = (-0.707107, 2.121320, 3.000000)
```

---

### [rotateByRadians: aroundAxis: - Objective-C](./Vector3.m#L451)
This method rotates the current `Vector3` by a given angle in radians around a given `Vector3` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.
    - center: The `Vector3` point around which the vector is rotated.

- Returns: The rotated `Vector3`.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Rotate the vector by 45 degrees around an axis
Vector3 *axis = [Vector3 initWithX:2 Y:1 Z:5];
Vector3 *rotatedByRadians = [v rotateByRadians:M_PI/4 aroundAxis:axis]; // rotatedByRadiansAroundAxis = (-0.011353, 0.450759, 3.714389)
```

### [Vector3RotateByRadiansAroundAxis() - C](./Vector3.m#L457)
This is the C version of the default rotateByRadians: aroundPoint: method above. It rotates the current `Vector3` by a given angle in radians around a given `Vector3` point. The rotation is performed using rotation matrices.

- Parameters:
    - vector: The `Vector3` to rotate.
    - angle: The `float` angle in radians.
    - center: The `Vector3` point around which the vector is rotated.

- Returns: The rotated `Vector3`.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Rotate the vector by 45 degrees around an axis
Vector3* axis = Vector3Init(2, 1, 5);
Vector3* rotatedByRadians = Vector3RotateByRadiansAroundAxis(v, M_PI/4, axis); // rotatedByRadiansAroundAxis = (-0.011353, 0.450759, 3.714389)
```

---

### [rotateByRadians: - Objective-C](./Vector3.m#L468)
This method rotates the current `Vector3` by a given angle in radians around the origin in **XY plane**. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.

- Returns: The rotated `Vector3`.

**Example:**
```objc
// Initialize a vector
Vector3 *v = [Vector3 initWithX:1 Y:2 Z:3];

// Rotate the vector by 45 degrees around the origin in XY plane
Vector3 *rotatedByRadians = [v rotateByRadians:M_PI/4]; // rotatedByRadians = (-0.707107, 2.121320, 3.000000)
```

### [Vector3RotateByRadians - C](./Vector3.m#L472)
This is the C version of the default rotateByRadians method above. It rotates the current `Vector3` by a given angle in radians around the origin in **XY plane**. The rotation is performed using rotation matrices.

- Parameters:
    - vector: The `Vector3` to rotate.
    - angle: The `float` angle in radians.

- Returns: The rotated `Vector3`.

**Example:**
```c
// Initialize a vector
Vector3* v = Vector3Init(1, 2, 3);

// Rotate the vector by 45 degrees around the origin in XY Plane
Vector3* rotatedByRadians = Vector3RotateByRadians(v, M_PI/4); // rotatedByRadians = (-0.707107, 2.121320, 3.000000)
```

---

## Usage
### Objective-C Sample Code
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
### C Sample Code
```C
// Initialize vectors
Vector3* v1 = Vector3Init(1, 2, 3);
Vector3* v2 = Vector3Init(4, 5, 6);

// Vector operations
Vector3* sum = Vector3Add(v1, v2);
Vector3* diff = Vector3Subtract(v1, v2);
Vector3* product = Vector3Multiply(v1, 2);
Vector3* quotient = Vector3Divide(v1, 2);

float dotProduct = Vector3Dot(v1, v2);
Vector3* crossProduct = Vector3Cross(v1, v2);
float length = Vector3Length(v1);
Vector3* normalized = Vector3Normalize(v1);
float distance = Vector3Distance(v1, v2);
float angle = Vector3Angle(v1, v2);
int isEqual = Vector3IsEqual(v1, v2);

// Vector print out
char* description = Vector3Description(v1);

// 3D rotations
Vector3* axis = Vector3Init(2, 1, 5);
Quaternion* q = QuaternionInitWithVector(axis, 90.0);
Vector3* rotatedByQuaternion = Vector3RotateByQuaternion(v1, q);

Vector3* rotatedByDegrees = Vector3RotateByDegrees(v1, 45);
Vector3* rotatedByRadians = Vector3RotateByRadians(v1, M_PI/4);
```