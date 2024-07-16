# [Hot Chocolate](../../README.md) - Vector2 Class (C & Objective-C)
**Last Updated:** July 14th, 2024 

## Overview
The `Vector2` class is a simple 2D vector class that has `CGFloat` x and y components. It includes methods for simple vector operations such as addition, subtraction, multiplication, division, dot product, cross product, length calculation, normalization, distance calculation, angle calculation, equality check, and rotation.
This class is implemented in both Objective-C and C for use in both Objective-C and C projects.

## Table of Contents
- [Initializers](#initializers)
    - [-initWithX: Y:](#initwithx-y)
    - [+initWithX: Y:](#initwithx-y-1)
    - [initVector2](#initvector2)
- [Deinitializer](#deinitializer)
    - [dealloc](#dealloc)
    - [freeVector2](#freevector2)
- [Vector Operations](#vector-operations)
    - [add](#add---objective-c)
    - [subtract](#subtract---objective-c)
    - [multiply](#multiply---objective-c)
    - [divide](#divide---objective-c)
    - [dot](#dot---objective-c)
    - [scale](#scale---objective-c)
    - [scaleX: Y:](#scalex-y---objective-c)
    - [scaleX](#scaleX---objective-c)
    - [scaleY](#scaleY---objective-c)
    - [length](#length---objective-c)
    - [normalize](#normalize---objective-c)
    - [distance](#distance---objective-c)
    - [angle](#angle---objective-c)
    - [isEqualTo](#isequalto---objective-c)
    - [description](#description---objective-c)
    - [rotateByDegrees: aroundPoint:](#rotatebydegrees-aroundpoint---objective-c)
    - [rotateByDegrees:](#rotatebydegrees---objective-c)
    - [rotateByRadians: aroundPoint:](#rotatebyradians-aroundpoint---objective-c)
    - [rotateByRadians:](#rotatebyradians---objective-c)
- [Usage](#usage)
    - [Objective-C Sample Code](#objective-c-sample-code)
    - [C Sample Code](#c-sample-code)

## Initializers

### [-initWithX: Y:](./Vector2.m#L30)
This instance method initializes a `Vector2` object with the given `CGFloat` x and y values.

- Parameters:
    - x: The `CGFloat` x component of the vector.
    - y: The `CGFloat` y component of the vector.

- Returns: The initialized `Vector2` object.

**Example**
```objc
// Initialize a new vector
Vector2 *vector = [[Vector2 alloc] initWithX:1 Y:2];
```

---

### [+initWithX: Y:](./Vector2.m#L48)
This class method initializes a `Vector2` object with the given `CGFloat` x and y values. It automatically allocates memory for a new `Vector2` object and returns it.

- Parameters:
    - x: The `CGFloat` x component of the vector.
    - y: The `CGFloat` y component of the vector.

- Returns: The initialized `Vector2` object.

**Example**
```objc
// Initialize a new vector
Vector2 *vector = [Vector2 initWithX:1 Y:2];
```

### [initVector2()](./Vector2.m#L59)
This is a C function that initializes a `Vector2` object witht the given `float` x and y values. It automatically allocates memory for a new `Vector2` object and returns it.

- Parameters:
    - x: The `float` x component of the vector.
    - y: The `float` y component of the vector.

**Example**
```c
// Initialize a new vector
Vector2 *vector = initVector2(1,2);
```

## Deinitializer

### [dealloc:](./Vector2.m#59)
This method deallocates memory space from the current `Vector2` object. It's called when the object is no longer needed.

**Example**
```objc
// Deallocate the vector
[vector dealloc];
```

### [freeVector2()] (./Vector2.m#L79)
This C function deallocates memory space from the current `Vector2` object. It's called when the object is no longer needed.

- Parameters:
    - vector: The `Vector2` object to be deallocated.

**Example**
```c
// Deallocate the vector
freeVector2(vector);
```

## Vector Operations

### [add: - Objective-C](./Vector2.m#L93)
This method adds the given `Vector2` to the current vector. It creates a new `Vector2` object with the sum of the x and y components of the current vector and the given vector.

- Parameters:
    - vector: The `Vector2` to be added.

- Returns: The resulting `Vector2` after addition.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];
Vector2 *v2 = [Vector2 initWithX:4 Y:5];

// Vector Operations
Vector2 *sum = [v1 add:v2];
```


### [Vector2Add() - C](./Vector2.m#L97)
This is the C version of the default add method above. This function adds the given `Vector2` object with the sum of the x and y components of another given vector.

- Parameters:
    - vector: The `Vector2` to be added.
    - vector: The `Vector2` to be added.

- Returns: The resulting `Vector2` after addition.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);
Vector2* v2 = initVector2(4,5);

// Vector Operations
Vector2* sum = Vector2Add(v1,v2);
```

---

### [subtract: - Objective-C](./Vector2.m#L108)
This method subtracts the given `Vector2` from the current vector. It creates a new `Vector2` object with the difference of the x and y components of the current vector and the given vector.

- Parameters:
    - vector: The `Vector2` to be subtracted.

- Returns: The resulting `Vector2` after subtraction.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];
Vector2 *v2 = [Vector2 initWithX:4 Y:5];

// Vector Operations
Vector2 *diff = [v1 subtract:v2];
```


### [Vector2Subtract() - C](./Vector2.m#L112)
This is the C function version of the default method above. This function subtracts the given `Vector2` from the current vector. It creates a new `Vector2` object with the difference of the x and y components of the current vector and the given vector.

- Parameters:
    - vector: The `Vector2` to subtract from.
    - vector: The `Vector2` to subtract with.

- Returns: The resulting `Vector2` after subtraction.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);
Vector2* v2 = initVector2(4,5);

// Vector Operations
Vector2* diff = Vector2Subtract(v1,v2);
```

---

### [multiply: - Objective-C](./Vector2.m#L123)
This method multiplies the current vector with the given `CGFloat` scalar. It creates a new `Vector2` object with the x and y components of the current vector multiplied by the scalar.

- Parameters:
    - scalar: The `CGFloat` scalar to be multiplied.

- Returns: The resulting `Vector2` after multiplication.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *product = [v1 multiply:2];
```


### [Vector2Multiply() - C](./Vector2.m#L127)
This is the C function version of the default method above. This function multiplies the current vector with the given `float` scalar. It creates a new `Vector2` object with the x and y components of the given vector multiplied by the scalar.

- Parameters:
    - vector: The `Vector2` to be multiplied.
    - scalar: The `CGFloat` scalar to be multiplied.

- Returns: The resulting `Vector2` after multiplication.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* product = Vector2Multiply(v1,2);
```

---

### [divide: - Objective-C](./Vector2.m#L138)
This method divides the current vector with the given `CGFloat` scalar. It creates a new `Vector2` object with the x and y components of the current vector divided by the scalar.

- Parameters:
    - scalar: The `CGFloat` scalar to be divided.

- Returns: The resulting `Vector2` after division.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *quotient = [v1 divide:2];
```

### [Vector2Divide() - C](./Vector2.m#L142)
This is the C function version of the default method above. This function divides the current vector with the given `float` scalar. It creates a new `Vector2` object with the x and y components of the given vector divided by the scalar.

- Parameters:
    - vector: The `Vector2` to be divided.
    - scalar: The `CGFloat` scalar to be divided.

- Returns: The resulting `Vector2` after division.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* quotient = Vector2Divide(v1,2);
```

---

### [dot: - Objective-C](./Vector2.m#L153)
This method calculates the dot product between the current `Vector2` and the given `Vector2`. The dot product is calculated as the sum of the products of the corresponding components of the two vectors.

- Parameters:
    - vector: The `Vector2` to do the dot product with.

- Returns: The `CGFloat` result of the dot product.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];
Vector2 *v2 = [Vector2 initWithX:4 Y:5];

// Vector Operations
CGFloat dotProduct = [v1 dot:v2];
```


### [Vector2Dot() - C](./Vector2.m#L157)
This is the C function version of the default method above. This method calculates the dot product between the current `Vector2` and the given `Vector2`. The dot product is calculated as the sum of the products of the corresponding components of the two vectors.

- Parameters:
    - vector: The `Vector2` on the left-hand side of the dot product.
    - vector: The `Vector2` on the right-hand side of the dot product.

- Returns: The `float` result of the dot product.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);
Vector2* v2 = initVector2(4,5);

// Vector Operations
float dotProduct = Vector2Dot(v1,v2);
```

---

### [scale: - Objective-C](./Vector2.m#L170)
This method scales the current `Vector2` by a given `CGFloat` factor. The scaling is done by multiplying each x and y components of the vector by the given scaling factor.

- Parameters:
    - factor: The `CGFloat` to scale the Vector.

- Returns: The `Vector2` result of the scaling.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *scaledV1 = [v1 scale:100];
```

### [Vector2Scale() - C](./Vector2.m#L174)
This is the C function version of the default method above. This function scales the given `Vector2` by a given `float` factor. The scaling is done by multiplying each x and y components of the vector by the given scaling factor.

- Parameters:
    - vector: The `Vector2` to scale.
    - factor: The `float` to scale the Vector.

- Returns: The `Vector2` result of the scaling.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* scaledV1 = Vector2Scale(v1,100);
```

---

### [scaleX: Y: - Objective-C](./Vector2.m#L188)
This method scales the current `Vector2` by a given `CGFloat` xFactor and yFactor. The scaling is done by multiplying x and y components of the vector by the given xFactor and yFactor.

- Parameters:
    - xFactor: The `CGFloat` to scale the x component.
    - yFactor: The `CGFloat` to scale the y component.

- Returns: The `Vector2` result of the scaling.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *scaledV1 = [v1 scaleX:2 Y:3];
```

### [Vector2ScaleXY() - C](./Vector2.m#L192)
This is the C function version of the default method above. This function scales the given `Vector2` by a given `float` xFactor and yFactor. The scaling is done by multiplying x and y components of the vector by the given xFactor and yFactor.

- Parameters:
    - vector: The `Vector2` to scale.
    - xFactor: The `float` to scale the x component.
    - yFactor: The `float` to scale the y component.

- Returns: The `Vector2` result of the scaling.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* scaledV1 = Vector2ScaleXY(v1,2,3);
```

---

### [scaleX: - Objective-C](./Vector2.m#L205)
This method scales the current `Vector2` by a given `CGFloat` xFactor. The scaling is done by multiplying the x component of the vector by the given xFactor.

- Parameters:
    - xFactor: The `CGFloat` to scale the x component.

- Returns: The `Vector2` result of the scaling.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *scaledV1 = [v1 scaleX:100];
```

### [Vector2ScaleX() - C](./Vector2.m#L209)
This is the C function version of the default method above. This function scales the current `Vector2` by a given `float` xFactor. The scaling is done by multiplying the x component of the vector by the given xFactor.

- Parameters:
    - vector: The `Vector2` to scale.
    - xFactor: The `float` to scale the x component.

- Returns: The `Vector2` result of the scaling.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* scaledV1 = Vector2ScaleX(v1,100);
```

---

### [scaleY: - Objective-C](./Vector2.m#L222)
This method scales the current `Vector2` by a given `CGFloat` yFactor. The scaling is done by multiplying the y component of the vector by the given yFactor.

- Parameters:
    - yFactor: The `CGFloat` to scale the y component.

- Returns: The `Vector2` result of the scaling.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *scaledV1 = [v1 scaleY:100];
```

### [Vector2ScaleY() - C](./Vector2.m#L226)
This is the C function version of the default method above. This function scales the current `Vector2` by a given `float` yFactor. The scaling is done by multiplying the y component of the vector by the given yFactor.

- Parameters:
    - vector: The `Vector2` to scale.
    - yFactor: The `float` to scale the y component.

- Returns: The `Vector2` result of the scaling.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* scaledV1 = Vector2ScaleY(v1,100);
```

---

### [length: - Objective-C](./Vector2.m#L236)
This method calculates the length (magnitude) of the current `Vector2`. The length is calculated as the square root of the sum of the squares of the x and y components.

- Returns: The `CGFloat` length (magnitude) of the current `Vector2`.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
CGFloat length = [v1 length];
```


### [Vector2Length() - C](./Vector2.m#L240)
This is the C function version of the default method above. This function calculates the length (magnitude) of the given `Vector2`. The length is calculated as the square root of the sum of the squares of the x and y components.

- Parameters:
    - vector: The `Vector2` to calculate the length of.

- Returns: The `float` length (magnitude) of the current `Vector2`.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
float length = Vector2Length(v1);
```

---

### [normalize: - Objective-C](./Vector2.m#L250)
This method normalizes the current vector. It creates a new `Vector2` object with the x and y components of the current vector divided by its length.

- Returns: The normalized `Vector2`.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *normalized = [v1 normalize];
```


### [Vector2Normalize() - C](./Vector2.m#L262)
This is the C function version of the default method above. This function normalizes the given vector. It creates a new `Vector2` object with the x and y components of the current vector divided by its length.

- Parameters:
    - vector: The `Vector2` to normalize.

- Returns: The normalized `Vector2`.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* normalized = Vector2Normalize(v1);
```

---

### [distance: - Objective-C](./Vector2.m#L273)
This method calculates the distance between the current vector and the given vector. The distance is calculated as the length of the vector obtained by subtracting the given vector from the current vector.

- Parameters:
    - vector: The `Vector2` to calculate the distance to.

- Returns: The `CGFloat` distance between the two `Vector2`s.

**Example**
```objc
// Initialize vectors
Vector2 *p1 = [Vector2 initWithX:1 Y:2];
Vector2 *p2 = [Vector2 initWithX:4 Y:5];

// Vector Operations
CGFloat distance = [v1 distance:v2];
```

### [Vector2Distance() - C](./Vector2.m#L277)
This is the C function version of the default method above. This function calculates the distance between the current vector and the given vector. The distance is calculated as the length of the vector obtained by subtracting the given vector from the current vector.

- Parameters:
    - vector: The `Vector2` to calculate the distance from.
    - vector: The `Vector2` to calculate the distance to.

- Returns: The `float` distance between the two `Vector2`s.

**Example**
```c
// Initialize vectors
Vector2* p1 = initVector2(1,2);
Vector2* p2 = initVector2(4,5);

// Vector Operations
float distance = Vector2Distance(p1,p2);
```

---

### [angle: - Objective-C](./Vector2.m#L288)
This method calculates the angle between the current vector and the given vector. The angle is calculated using the dot product and the lengths of the two vectors.

- Parameters:
    - vector: The `Vector2` to calculate the angle to.

- Returns: The `CGFloat` angle between the two `Vector2`s in radians.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];
Vector2 *v2 = [Vector2 initWithX:4 Y:5];

// Vector Operations
CGFloat angle = [v1 angle:v2];
```


### [Vector2Angle() - C](./Vector2.m#L292)
This is the C function version of the default method above. This function calculates the angle between the current vector and the given vector. The angle is calculated using the dot product and the lengths of the two vectors.

- Parameters:
    - vector: The `Vector2` to calculate the angle from.
    - vector: The `Vector2` to calculate the angle to.

- Returns: The `float` angle between the two `Vector2`s in radians.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);
Vector2* v2 = initVector2(4,5);

// Vector Operations
float angle = Vector2Angle(v1,v2);
```

---

### [isEqualTo: - Objective-C](./Vector2.m#L303)
This method checks if the current vector is equal to the given vector. Two vectors are considered equal if their x and y components are equal.

- Parameters:
    - vector: The `Vector2` to compare with.

- Returns: `YES` if the vectors are equal, `NO` otherwise.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];
Vector2 *v2 = [Vector2 initWithX:4 Y:5];

// Vector Operations
BOOL isEqual = [v1 isEqualTo:v2]; // NO
```


### [Vector2IsEqualTo() - C](./Vector2.m#L307)
This is the C function version of the default method above. This function checks if the current vector is equal to the given vector. Two vectors are considered equal if their x and y components are equal.

- Parameters:
    - vector: The `Vector2` to compare with.
    - vector: The `Vector2` to compare to.

- Returns: `1` if the vectors are equal, `0` otherwise.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);
Vector2* v2 = initVector2(4,5);

// Vector Operations
int isEqual = Vector2IsEqual(v1,v2); // 0
```

---

### [description: - Objective-C](./Vector2.m#L317)
This method returns a string representation of the current `Vector2`. The string representation includes the x and y components of the vector.

- Returns: The `NSString` representation of the current `Vector2`.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector print out
NSString *description = [v1 description];
NSLog(@"Vector: %@", description); // Vector: (1.000000, 2.000000)
```


### [Vector2Description() - C](./Vector2.m#L321)
This is the C function version of the default method above. This function returns a string representation of the current `Vector2`. The string representation includes the x and y components of the vector.

- Parameters:
    - vector: The `Vector2` to be described.

- Returns: The `char*` representation of the current `Vector2`.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector print out
char* description = Vector2Description(v1);
printf("Vector: %s", description); // Vector: (1.000000, 2.000000)
```

---

### [copy: - Objective-C](./Vector2.m#L331)
This method creates a new copy of the current `Vector2` and returns it.

- Returns: A new `Vector2` copy of the current `Vector2`.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *copy = [v1 copy];
BOOL isEqual = [v1 isEqualTo:copy]; // YES
```


### [Vector2Copy() - C](./Vector2.m#L335)
This is the C function version of the default method above. This function creates a new copy of a given `Vector2` and returns it.

- Parameters:
    - vector: The `Vector2` to be copied.

- Returns: A new `Vector2` copy of the current `Vector2`.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* copy = Vector2Copy(v1);
int isEqual = Vector2IsEqual(v1,copy); // 1
```

---

### [rotateByDegrees: aroundPoint: - Objective-C](./Vector2.m#L346)
This method rotates the current `Vector2` by a given angle in degrees around a given `Vector2` point **clockwise**.

- Parameters:
    - angle: The `CGFloat` angle in degrees.
    - center: The `Vector2` point around which the vector is rotated.

- Returns: The rotated `Vector2`.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *rotatedByDegrees = [v1 rotateByDegrees:45 aroundPoint:[Vector2 initWithX:3 Y:4]];
// Result: (0.171573, 4.000000)
```

### [Vector2RotateByDegreesAroundPoint() - C](./Vector2.m#L352)
This is the C function version of the default method above. This function rotates a given `Vector2` by a given angle in degrees around a given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - vector: The `Vector2` to be rotated.
    - angle: The `float` angle in degrees.
    - center: The `Vector2` point around which the vector is rotated.

- Returns: The rotated `Vector2`.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* rotatedByDegrees = Vector2RotateByDegreesAroundPoint(v1,45,initVector2(3,4));
// Result: (0.171573, 4.000000)
```

---

### [rotateByDegrees: - Objective-C](./Vector2.m#L363)
This method rotates the current `Vector2` by a given angle in degrees around the origin **clockwise**.

- Parameters:
    - angle: The `CGFloat` angle in degrees.

- Returns: The rotated `Vector2`.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *rotatedByDegrees = [v1 rotateByDegrees:45];
// Result: (2.121320, 0.707107)
```


### [Vector2RotateByDegrees() - C](./Vector2.m#L367)
This is the C function version of the default rotateByDegrees  method above. This function rotates a given `Vector2` by a given angle in degrees around the origin. The rotation is performed using rotation matrices.

- Parameters:
    - vector: The `Vector2` to be rotated.
    - angle: The `float` angle in degrees.

- Returns: The rotated `Vector2`.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* rotatedByDegrees = Vector2RotateByDegrees(v1,45);
// Result: (2.121320, 0.707107)
```

---

### [rotateByRadians: aroundPoint: - Objective-C](./Vector2.m#L378)
This method rotates the current `Vector2` by a given angle in radians around a given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.
    - center: The `Vector2` point around which the vector is rotated.

- Returns: The rotated `Vector2`.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *rotatedByRadians = [v1 rotateByRadians:M_PI/4 aroundPoint:[Vector2 initWithX:3 Y:4]];
// Result: (0.171573, 4.000000)
```


### [Vector2RotateByRadiansAroundPoint() - C](./Vector2.m#L394)
This is the C function version of the default rotateByRadiansAroundPoint method above. This function rotates a given `Vector2` by a given angle in radians around another given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - vector: The `Vector2` to be rotated.
    - angle: The `float` angle in radians.
    - center: The `Vector2` point around which the vector is rotated.

- Returns: The rotated `Vector2`.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* rotatedByRadians = Vector2RotateByRadiansAroundPoint(v1,M_PI/4,initVector2(3,4));
// Result: (0.171573, 4.000000)
```

---

### [rotateByRadians: - Objective-C](./Vector2.m#L405)
This method rotates the current `Vector2` by a given angle in radians around the origin. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.

- Returns: The rotated `Vector2`.

**Example**
```objc
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];

// Vector Operations
Vector2 *rotatedByRadians = [v1 rotateByRadians:M_PI/4];
// Result: (2.121320, 0.707107)
```


### [Vector2RotateByRadians() - C](./Vector2.m#L409)
This is the C function version of the default rotateByRadians method above. This function rotates a `Vector2` by a given angle in radians around the origin. The rotation is performed using rotation matrices.

- Parameters:
    - vector: The `Vector2` to be rotated
    - angle: The `float` angle in radians.

- Returns: The rotated `Vector2`.

**Example**
```c
// Initialize vectors
Vector2* v1 = initVector2(1,2);

// Vector Operations
Vector2* rotatedByRadians = Vector2RotateByRadians(v1,M_PI/4);
// Result: (2.121320, 0.707107)
```

---

## Usage
### Objective-C Sample Code
```Objective-C
// Initialize vectors
Vector2 *v1 = [Vector2 initWithX:1 Y:2];
Vector2 *v2 = [Vector2 initWithX:4 Y:5];

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
### C Sample Code
```C
// initialize Vectors
Vector2* v1 = initVector2(1,2);
Vector2* v2 = initVector2(4,5);

// Vector Operations
Vector2* sum = Vector2Add(v1,v2);
Vector2* diff = Vector2Subtract(v1,v2);
Vector2* product = Vector2Multiply(v1,v2);
Vector2* quotient = Vector2Divide(v1,v2);
float dotProduct = Vector2Dot(v1,v2);

Vector2* scaledV1 = Vector2Scale(v1,100);
float length = Vector2Length(v1);
Vector2* normalized = Vector2Normalize(v1);
float distance = Vector2Distance(v1,v2);
float angle = Vector2Angle(v1,v2);
int isEqual = Vector2IsEqual(v1,v2);

// Vector print out
char* description = Vector2Description(v1);
printf("Vector: %s", description);

// 2D Rotations
Vector2 *rotatedByDegrees = Vector2RotateByDegrees(v1,45);
Vector2 *rotatedByRadians = Vector2RotateByRadians(v1,M_PI/4);
```