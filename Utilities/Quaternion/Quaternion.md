# [Hot Chocolate](../../README.md) - Quaternion Class (C & Objective-C)
**Last Updated:** July 14th, 2024 

---
The `Quaternion` class is a simple 4D vector class that has `CGFloat` w and `Vector3` u component . It includes methods for simple Quaternion operations such as addition, subtraction, multiplication, scalar multiplication, scalar division, length calculation, normalization equality check.
This class is implemented in both Objective-C and C for use in both Objective-C and C projects.

**Acknowledgements:**
- [Quaternion - Wikipedia](https://en.wikipedia.org/wiki/Quaternion)
- [Quaternion Calculator](https://www.omnicalculator.com/math/quaternion)
Kowalski, M. Quaternion Calculator. Available at: https://www.omnicalculator.com/math/quaternion. Accessed: Jul 16, 2024.

## Table of Contents
- [Initializers](#initializers)
    - [-initWithW: Vector:](#-initwithw-vector)
    - [+initWithW: Vector:](#initwithw-vector)
    - [+initWithDegrees: Vector:](#initwithdegrees-vector)
    - [+initWithRadians: Vector:](#initwithradians-vector)
    - [+initWithW: X: Y: Z:](#initwithw-x-y-z)
    - [+initWithX: Y: Z:](#initwithx-y-z)
    - [initQuaternionWithW()](#initquaternionwithw())
    - [initQuaternionWithDegrees()](#initquaternionwithdegrees)
    - [initQuaternionWithRadians()](#initquaternionwithradians)
- [Deinitializer](#deinitializer)
    - [dealloc](#dealloc)
    - [freeQuaternion()](#freequaternion)
- [Quaternion Operations](#vector-operations)
    - [add](#add---objective-c)
    - [subtract](#subtract---objective-c)
    - [multiply](#multiply---objective-c)
    - [scalar multiply](#scalar-multiply---objective-c)
    - [divide](#divide---objective-c)
    - [length](#length---objective-c)
    - [normalize](#normalize---objective-c)
    - [conjugate](#conjugate---objective-c)
    - [isEqualTo](#isequalto---objective-c)
    - [description](#description---objective-c)
    - [copy](#copy---objective-c)
- [Usage](#usage)
    - [Objective-C Sample Code](#objective-c-sample-code)
    - [C Sample Code](#c-sample-code)

## Initializers

### [-initWithW: Vector:](./Quaternion.m#L32)<a id="-initwithw-vector"></a>:
This instance method initializes a `Quaternion` object with the given `CGFloat` w and `Vector3` vector values.

- Parameters:
    - w: The `CGFloat` w component of the quaternion.
    - vector: The `Vector3` vector component of the quaternion.

- Returns: The initialized `Quaternion` object.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [[Quaternion alloc] initWithW:1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];
```

---

### [+initWithW: Vector:](./Quaternion.m#L50)<a id="initwithw-vector"></a>:
This instance method initializes a `Quaternion` object with the given `CGFloat` w and `Vector3` vector values. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - w: The `CGFloat` w component of the quaternion.
    - vector: The `Vector3` vector component of the quaternion.

- Returns: The initialized `Quaternion` object.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithW:1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];
```

---

### [+initWithDegrees: Vector:](./Quaternion.m#L62)
This instance method initializes a `Quaternion` object with the given `CGFloat` angle in degrees and `Vector3` vector values referring to the axis of rotation. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - degrees: The `CGFloat` degree component of the Quaternion Rotation Matrix.
    - vector: The `Vector3` axis-of-rotation component of the Quaternion Rotation Matrix.

- Returns: The initialized `Quaternion` object.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithDegrees:90 Vector:[Vector3 initWithX:0 Y:0 Z:1]];
```

---

### [+initWithRadians: Vector:](./Quaternion.m#L76)
This instance method initializes a `Quaternion` object with the given `CGFloat` angle in radians and `Vector3` vector values referring to the axis of rotation. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - radians: The `CGFloat` radians component of the Quaternion Rotation Matrix.
    - vector: The `Vector3` axis-of-rotation component of the Quaternion Rotation Matrix.

- Returns: The initialized `Quaternion` object.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithRadians:M_PI_2 Vector:[Vector3 initWithX:0 Y:0 Z:1]];
```

---

### [+initWithW: X: Y: Z:](./Quaternion.m#L95)
This instance method initializes a `Quaternion` object with the given `CGFloat` w, x, y, and z values. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - w: The `CGFloat` w component of the quaternion.
    - x: The `CGFloat` x component of the quaternion.
    - y: The `CGFloat` y component of the quaternion.
    - z: The `CGFloat` z component of the quaternion.

- Returns: The initialized `Quaternion` object.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithW:1 X:0 Y:0 Z:1];
```

---

### [+initWithX: Y: Z:](./Quaternion.m#L110)
This instance method initializes a `Quaternion` object with the given `CGFloat` x, y, and z values and w=0. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - x: The `CGFloat` x component of the quaternion.
    - y: The `CGFloat` y component of the quaternion.
    - z: The `CGFloat` z component of the quaternion.

- Returns: The initialized `Quaternion` object.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithX:0 Y:0 Z:1];
```

---

### [initQuaternionWithW()](./Quaternion.m#L125)
This C function initializes a `Quaternion` object with the given `float` w and `Vector3` vector values. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - w: The `float` w component of the quaternion.
    - vector: The `Vector3` vector component of the quaternion.

- Returns: The initialized `Quaternion` object.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithW(1, initVector3WithX(0, 0, 1));
```

---

### [initQuaternionWithDegrees()](./Quaternion.m#L137)
This C function initializes a `Quaternion` object with the given `float` angle in degrees and `Vector3` vector values referring to the axis of rotation. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - degrees: The `float` degree component of the Quaternion Rotation Matrix.
    - vector: The `Vector3` axis-of-rotation component of the Quaternion Rotation Matrix.

- Returns: The initialized `Quaternion` object.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithDegrees(90, initVector3WithX(0, 0, 1));
```

---

### [initQuaternionWithRadians()](./Quaternion.m#L149)
This C function initializes a `Quaternion` object with the given `float` angle in radians and `Vector3` vector values referring to the axis of rotation. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - radians: The `float` radians component of the Quaternion Rotation Matrix.
    - vector: The `Vector3` axis-of-rotation component of the Quaternion Rotation Matrix.

- Returns: The initialized `Quaternion` object.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithRadians(M_PI_2, initVector3WithX(0, 0, 1));
```

## Deinitializer

### [dealloc:](./Quaternion.m#L160)
This method deallocates memory space from the current `Quaternion` object. It's called when the object is no longer needed.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *quaternion = [Quaternion initWithW:1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];
// Deallocate memory space
[quaternion dealloc];
```

---

### [freeQuaternion()](./Quaternion.m#L170)
This C function deallocates memory space from the given `Quaternion` object. It's called when the object is no longer needed.

- Parameters:
    - quaternion: The `Quaternion` object to be deallocated.

**Example:**
```C
// Initialize quaternion
Quaternion *quaternion = initQuaternionWithW(1, initVector3WithX(0, 0, 1));
// Deallocate memory space
freeQuaternion(quaternion);
```

## Vector Operations

### [add: - Objective-C](./Quaternion.m#L184)
This method adds the given `Quaternion` to the current quaternion. It creates a new `Quaternion` object with the sum of the w, x, y, and z components of the current quaternion and the given quaternion.

- Parameters:
    - quaternion: The `Quaternion` to be added.

- Returns: The resulting `Quaternion` after addition.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q1 = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];
Quaternion *q2 = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Add the two quaternions
Quaternion *result = [q1 add:q2]; // Result: w=0.2, x=0, y=0, z=2
```

### [QuaternionAdd() - C](./Quaternion.m#L188)
This C function adds the given `Quaternion` to the current quaternion. It creates a new `Quaternion` object with the sum of the w, x, y, and z components of the current quaternion and the given quaternion.

- Parameters:
    - quaternion1: The `Quaternion` to be added.
    - quaternion2: The `Quaternion` to be added.

- Returns: The resulting `Quaternion` after addition.

**Example:**
```C
// Initialize quaternion
Quaternion *q1 = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));
Quaternion *q2 = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));

// Add the two quaternions
Quaternion *result = QuaternionAdd(q1, q2); // Result: w=0.2, x=0, y=0, z=2
```

---

### [subtract() - Objective-C](./Quaternion.m#L199)
This method subtracts the given `Quaternion` from the current quaternion. It creates a new `Quaternion` object with the difference of the w, x, y, and z components of the current vector and the given vector.

- Parameters:
    - vector: The `Quaternion` to subtract with.

- Returns: The resulting `Quaternion` after subtraction.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q1 = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];
Quaternion *q2 = [Quaternion initWithW:0.5 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Subtract the two quaternions
Quaternion *result = [q1 subtract:q2]; // Result: w=-0.4, x=0, y=0, z=0
```

### [QuaternionSubtract() - C](./Quaternion.m#L203)
This C function subtracts the given `Quaternion` from the current quaternion. It creates a new `Quaternion` object with the difference of the w, x, y, and z components of the current vector and the given vector.

- Parameters:
    - quaternion1: The `Quaternion` to subtract from.
    - quaternion2: The `Quaternion` to subtract with.

- Returns: The resulting `Quaternion` after subtraction.

**Example:**
```C
// Initialize quaternion
Quaternion *q1 = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));
Quaternion *q2 = initQuaternionWithW(0.5, initVector3WithX(0, 0, 1));

// Subtract the two quaternions
Quaternion *result = QuaternionSubtract(q1, q2); // Result: w=-0.4, x=0, y=0, z=0
```

---

### [multiply: - Objective-C](./Quaternion.m#L214)
This method multiplies the current quaternion with the given `Quaternion`. It creates a new `Quaternion` object with the w, x, y, and z components of the current quaternion multiplied by the given quaternion. This is done by following quaternion multiplication rule found on [Wikipedia]("https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation#Quaternion-derived_rotation_matrix").

- Parameters:
    - quaternion: The `Quaternion` to be multiplied with.

- Returns: The resulting `Quaternion` after multiplication.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q1 = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];
Quaternion *q2 = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Multiply the two quaternions
Quaternion *result = [q1 multiply:q2]; // Result: (w:-0.990000, x:0.000000, y:0.000000, z:0.200000)
```

### [QuaternionMultiply() - C](./Quaternion.m#L230)
This C function multiplies the current quaternion with the given `Quaternion`. It creates a new `Quaternion` object with the w, x, y, and z components of the current quaternion multiplied by the given quaternion. This is done by following quaternion multiplication rule found on [Wikipedia]("https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation#Quaternion-derived_rotation_matrix").

- Parameters:
    - quaternion1: The `Quaternion` to multiply from.
    - quaternion2: The `Quaternion` to multiply with.

- Returns: The resulting `Quaternion` after multiplication.

**Example:**
```C
// Initialize quaternion
Quaternion *q1 = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));
Quaternion *q2 = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));

// Multiply the two quaternions
Quaternion *result = QuaternionMultiply(q1, q2); // Result: (w:-0.990000, x:0.000000, y:0.000000, z:0.200000)
```

---

### [scalar multiply: - Objective-C](./Quaternion.m#L241)
This method multiplies the current quaternion with the given `CGFloat` scalar. It creates a new `Quaternion` object with the w, x, y, and z components of the current quaternion multiplied by the given scalar.

- Parameters:
    - scalar: The `CGFloat` to be multiplied with.

- Returns: The resulting `Quaternion` after multiplication.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Multiply the quaternion with a scalar
Quaternion *result = [q scalarMultiply:2]; // Result: w=0.2, x=0, y=0, z=2
```

### [QuaternionScalarMultiply() - C](./Quaternion.m#L245)
This C function multiplies the current quaternion with the given `float` scalar. It creates a new `Quaternion` object with the w, x, y, and z components of the current quaternion multiplied by the given scalar.

- Parameters:
    - quaternion: The `Quaternion` to be multiplied.
    - scalar: The `float` to be multiplied with.

- Returns: The resulting `Quaternion` after multiplication.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));

// Multiply the quaternion with a scalar
Quaternion *result = QuaternionScalarMultiply(q, 2); // Result: w=0.2, x=0, y=0, z=2
```

---

### [divide: - Objective-C](./Quaternion.m#L257)
This method divides the current quaternion with the given `Quaternion` object. It creates a new `Quaternion` object with the w, x, y, and z components of the current quaternion divided by the given quaternion.

- Parameters:
    - quaternion: The `Quaternion` to be divided with.

- Returns: The resulting `Quaternion` array after division (division is not commutative, so it results in 2 possible results).

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q1 = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:1 Z:1]];
Quaternion *q2 = [Quaternion initWithW:0.5 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Divide the two quaternions
NSArray<Quaternion *> *result = [q1 divide:q2]; // Result: (w:0.84, -0.80, 0.40, 0.32), (w:0.84, -0.80, 0.40, 0.32)
```

### [QuaternionDivide() - C](./Quaternion.m#L266)
This C function divides the a given `Quaternion` with another given `Quaternion` object. It creates a new `Quaternion` object with the w, x, y, and z components of the current quaternion divided by the given quaternion.

- Parameters:
    - quaternion1: The `Quaternion` to be divided.
    - quaternion2: The `Quaternion` to be divided with.

- Returns: The resulting `Quaternion` array after division (division is not commutative, so it results in 2 possible results).

**Example:**
```C
// Initialize quaternion
Quaternion *q1 = initQuaternionWithW(0.1, initVector3WithX(0, 1, 1));
Quaternion *q2 = initQuaternionWithW(0.5, initVector3WithX(0, 0, 1));

// Divide the two quaternions
Quaternion** result = QuaternionScalarDivide(q1, q2); // Result: (w:0.84, -0.80, 0.40, 0.32), (w:0.84, -0.80, 0.40, 0.32)
```

---

### [scalarDivide: - Objective-C](./Quaternion.m#L287)
This method divides the current quaternion with the given `CGFloat` scalar. It creates a new `Quaternion` object with the w, x, y, and z components of the current quaternion divided by the scalar.

- Parameters:
    - scalar: The `CGFloat` scalar to be divided.

- Returns: The resulting `Quaternion` after division.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Divide the quaternion with a scalar
Quaternion *result = [q scalarDivide:2]; // Result: w=0.05, x=0, y=0, z=0.5
```

### [QuaternionScalarDivide() - C](./Quaternion.m#L291)
This C function divides the current vector with the given `float` scalar. It creates a new `Quaternion` object with the w, x, y, and z components of the current vector divided by the scalar.

- Parameters:
    - quaternion: The `Quaternion` to be divided.
    - scalar: The `float` scalar to be divided with.

- Returns: The resulting `Quaternion` after division.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));

// Divide the quaternion with a scalar
Quaternion *result = QuaternionScalarDivide(q, 2); // Result: w=0.05, x=0, y=0, z=0.5
```

---

### [length: - Objective-C](./Quaternion.m#L301)
This method calculates the length (magnitude) of the `Vector3` component in the current `Quaternion`. The length is calculated as the square root of the sum of the squares of the x, y, and z components of the `Vector3` component of the current `Quaternion`.

- Returns: The `CGFloat` length (magnitude) of the `Vector3` component of the current `Quaternion`.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Get the length of the quaternion
CGFloat length = [q length]; // Result: 1.005
```

### [QuaternionLength() - C](./Quaternion.m#L305)
This C function calculates the length (magnitude) of the `Vector3` component in the current `Quaternion`. The length is calculated as the square root of the sum of the squares of the x, y, and z components of the `Vector3` component of the current `Quaternion`.

- Parameters:
    - quaternion: The `Quaternion` to calculate the length of.

- Returns: The `float` length (magnitude) of the `Vector3` component of the current `Quaternion`.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));

// Get the length of the quaternion
float length = QuaternionLength(q); // Result: 1.005
```

---

### [normalize: - Objective-C](./Quaternion.m#L315)
This method normalizes the `Vector3` component of the current `Quaternion`. It creates a new `Quaternion` object with the x, y, and z components of the vector divided by its length.

- Returns: The normalized `Quaternion`.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Normalize the quaternion
Quaternion *result = [q normalize]; // Result: w=0.1, x=0, y=0, z=0.995
```

### [QuaternionNormalize() - C](./Quaternion.m#L321)
This C function normalizes the `Vector3` component of the current `Quaternion`. It creates a new `Quaternion` object with the x, y, and z components of the vector divided by its length.

- Parameters:
    - quaternion: The `Quaternion` to normalize.

- Returns: The normalized `Quaternion`.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithW(0.1, initVector3WithX(0, 1, 1));

// Normalize the quaternion
Quaternion *result = QuaternionNormalize(q); // Result: (w:0.100000, 0.000000, 0.705346, 0.705346)
```

---

### [conjugate: - Objective-C](./Quaternion.m#L331)
This method calculates the complex conjugate of the current `Quaternion`. It creates a new `Quaternion` object with the correct complex conjugate of the current quaternion.

- Returns: The complex conjugate of the current `Quaternion`.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Get the complex conjugate of the quaternion
Quaternion *result = [q conjugate]; // Result: w=0.1, x=0, y=0, z=-1
```

### [QuaternionConjugate() - C](./Quaternion.m#L343)
This C function calculates the complex conjugate of the current `Quaternion`. It creates a new `Quaternion` object with the correct complex conjugate of the current quaternion.

- Parameters:
    - quaternion: The `Quaternion` to calculate the complex conjugate of.

- Returns: The complex conjugate of the current `Quaternion`.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));

// Get the complex conjugate of the quaternion
Quaternion *result = QuaternionConjugate(q); // Result: w=0.1, x=0, y=0, z=-1
```

---

### [inverse: - Objective-C](./Quaternion.m#L353)
This method calculates the inverse of the current `Quaternion`. It creates a new `Quaternion` object with the correct inverse of the current quaternion.

- Returns: The inverse of the current `Quaternion`.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Get the inverse of the quaternion
Quaternion *result = [q inverse]; // Result: (w:0.099010, x:0.00, y:0.00, z:-0.990099)
```

### [QuaternionInverse() - C](./Quaternion.m#L364)
This C function calculates the inverse of the current `Quaternion`. It creates a new `Quaternion` object with the correct inverse of the current quaternion.

- Parameters:
    - quaternion: The `Quaternion` to calculate the inverse of.

- Returns: The inverse of the current `Quaternion`.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));

// Get the inverse of the quaternion
Quaternion *result = QuaternionInverse(q); // Result: (w:0.099010, x:0.00, y:0.00, z:-0.990099)
```

---

### [isEqualTo: - Objective-C](./Quaternion.m#L376)
This method checks if the current quaternion is equal to the given quaternion. Two quaternions are considered equal if their w, x, y, and z components are equal.

- Parameters:
    - quaternion: The `Quaternion` to compare with.

- Returns: `YES` if the vectors are equal, `NO` otherwise.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q1 = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];
Quaternion *q2 = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Check if the quaternion is equal to another quaternion
BOOL isEqual = [q1 isEqualTo:q2]; // Result: YES
```

### [QuaternionIsEqualTo() - C](./Quaternion.m#L380)
This C function checks if the current quaternion is equal to the given quaternion. Two quaternions are considered equal if their w, x, y, and z components are equal.

- Parameters:
    - quaternion1: The `Quaternion` to compare.
    - quaternion2: The `Quaternion` to compare with.

- Returns: `1` if the vectors are equal, `0` otherwise.

**Example:**
```C
// Initialize quaternion
Quaternion *q1 = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));

// Check if the quaternion is equal to another quaternion
int isEqual = QuaternionIsEqualTo(q1, q2); // Result: 1
```

---

### [description: - Objective-C](./Quaternion.m#L390)
This method returns a string representation of the current `Quaternion`. The string representation includes the w, x, y, and z components of the quaternion.

- Returns: The `NSString` representation of the current `Quaternion`.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Get the string representation of the quaternion
NSString *description = [q description]; // Result: "(0.1, 0, 0, 1)"
```

### [QuaternionDescription() - C](./Quaternion.m#L394)
This C function returns a string representation of the current `Quaternion`. The string representation includes the w, x, y, and z components of the quaternion.

- Parameters:
    - quaternion: The `Quaternion` to get the string representation of.

- Returns: The `char*` representation of the current `Quaternion`.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));

// Get the string representation of the quaternion
char *description = QuaternionDescription(q); // Result: "(0.1, 0, 0, 1)"
```

---

### [copy: - Objective-C](./Quaternion.m#404)
This method copies the current `Quaternion` to create a new instance of it. This is especially useful because Objective-C defaults to pass-by-reference.

- Returns: A new instance (copy) of the current `Quaternion`.

**Example:**
```Objective-C
// Initialize quaternion
Quaternion *q = [Quaternion initWithW:0.1 Vector:[Vector3 initWithX:0 Y:0 Z:1]];

// Copy the quaternion
Quaternion *copy = [q copy];
```

### [QuaternionCopy() - C](./Quaternion.m#L408)
This C function copies the current `Quaternion` to create a new instance of it. This is especially useful because Objective-C defaults to pass-by-reference.

- Parameters:
    - quaternion: The `Quaternion` to copy.

- Returns: A new instance (copy) of the current `Quaternion`.

**Example:**
```C
// Initialize quaternion
Quaternion *q = initQuaternionWithW(0.1, initVector3WithX(0, 0, 1));

// Copy the quaternion
Quaternion *copy = QuaternionCopy(q);
```

## Usage
### Objective-C Sample Code
```Objective-C
// Initialize vector to rotate
Vector3 *v = [Vector3 initWithX:5 Y:0 Z:0];
// Initialize axis of rotation
Vector3 *axis = [Vector3 initWithX:0 Y:0 Z:1];
// Degree of rotation
CGFloat angle = 90.0;
// Initialize the quaternion for rotation
Quaternion *q = [Quaternion initWithDegrees:angle Vector:axis];
// Rotate the vector v using quaternion q
Vector3 *result = [v rotateByQuaternion:q];
// Print out the results
NSLog(@"Initial Vector:%@\nDegrees of Rotation:%f\nAxis of Rotation:%@\nQuaternion:%@\nResulting Vector:%@", [v description], angle, [axis description], [q description], [result description]);
// Deallocate memory space
[v dealloc];
[axis dealloc];
[q dealloc];
[result dealloc];
```
### C Sample Code
```C
// Initialize vector to rotate
Vector3 *v = initVector3WithX(5, 0, 0);
// Initialize axis of rotation
Vector3 *axis = initVector3WithX(0, 0, 1);
// Degree of rotation
float angle = 90.0;
// Initialize the quaternion for rotation
Quaternion *q = initQuaternionWithDegrees(angle, axis);
// Rotate the vector v using quaternion q
Vector3 *result = rotateVector3ByQuaternion(v, q);

// Print out the results
printf("Initial Vector:%s\nDegrees of Rotation:%f\nAxis of Rotation:%s\nQuaternion:%s\nResulting Vector:%s\n", vector3Description(v), angle, vector3Description(axis), quaternionDescription(q), vector3Description(result));

// Deallocate memory space
freeVector3(v);
freeVector3(axis);
freeQuaternion(q);
freeVector3(result);
```