# [Hot Chocolate](../../README.md) - Quaternion Class
Last Updated On: June 17th, 2024 

---
The `Quaternion` class is a simple 4D vector class that has `CGFloat` w and `Vector3` u component . It includes methods for simple Quaternion operations such as addition, subtraction, multiplication, scalar multiplication, scalar division, length calculation, normalization equality check.

## Table of Contents
- [Initializers](#initializers)
    - [-initWithW: Vector:](#-initwithw-vector)
    - [+initWithW: Vector:](#initwithw-vector)
    - [+initWithDegrees: Vector:](#initwithdegrees-vector)
    - [+initWithRadians: Vector:](#initwithradians-vector)
    - [+initWithW: X: Y: Z:](#initwithw-x-y-z)
    - [+initWithX: Y: Z:](#initwithx-y-z)
- [Deinitializer](#deinitializer)
    - [dealloc](#dealloc)
- [Quaternion Operations](#vector-operations)
    - [add](#add)
    - [subtract](#subtract)
    - [multiply](#multiply)
    - [scalar multiply](#scalar-multiply)
    - [divide](#divide)
    - [length](#length)
    - [normalize](#normalize)
    - [conjugate](#conjugate)
    - [isEqualTo](#isequalto)
    - [description](#description)
    - [copy](#copy)

## Initializers

### [-initWithW: Vector:](./Quaternion.m#L32)<a id="-initwithw-vector"></a>:
This instance method initializes a `Quaternion` object with the given `CGFloat` w and `Vector3` vector values.

- Parameters:
    - w: The `CGFloat` w component of the quaternion.
    - vector: The `Vector3` vector component of the quaternion.

- Returns: The initialized `Quaternion` object.

---

### [+initWithW: Vector:](./Quaternion.m#L50)<a id="initwithw-vector"></a>:
This instance method initializes a `Quaternion` object with the given `CGFloat` w and `Vector3` vector values. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - w: The `CGFloat` w component of the quaternion.
    - vector: The `Vector3` vector component of the quaternion.

- Returns: The initialized `Quaternion` object.

---

### [+initWithDegrees: Vector:](./Quaternion.m#L62)
This instance method initializes a `Quaternion` object with the given `CGFloat` angle in degrees and `Vector3` vector values referring to the axis of rotation. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - degrees: The `CGFloat` degree component of the Quaternion Rotation Matrix.
    - vector: The `Vector3` axis-of-rotation component of the Quaternion Rotation Matrix.

- Returns: The initialized `Quaternion` object.

---

### [+initWithRadians: Vector:](./Quaternion.m#L76)
This instance method initializes a `Quaternion` object with the given `CGFloat` angle in radians and `Vector3` vector values referring to the axis of rotation. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - radians: The `CGFloat` radians component of the Quaternion Rotation Matrix.
    - vector: The `Vector3` axis-of-rotation component of the Quaternion Rotation Matrix.

- Returns: The initialized `Quaternion` object.

---

### [+initWithW: X: Y: Z:](./Quaternion.m#L95)
This instance method initializes a `Quaternion` object with the given `CGFloat` w, x, y, and z values. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - w: The `CGFloat` w component of the quaternion.
    - x: The `CGFloat` x component of the quaternion.
    - y: The `CGFloat` y component of the quaternion.
    - z: The `CGFloat` z component of the quaternion.

- Returns: The initialized `Quaternion` object.

---

### [+initWithX: Y: Z:](./Quaternion.m#L110)
This instance method initializes a `Quaternion` object with the given `CGFloat` x, y, and z values and w=0. It automatically allocates memory for a new `Quaternion` object and returns it.

- Parameters:
    - x: The `CGFloat` x component of the quaternion.
    - y: The `CGFloat` y component of the quaternion.
    - z: The `CGFloat` z component of the quaternion.

- Returns: The initialized `Quaternion` object.

## Deinitializer

### [dealloc:](./Quaternion.m#L124)
This method deallocates memory space from the current `Quaternion` object. It's called when the object is no longer needed.

## Vector Operations

### [add:](./Quaternion.m#L140)
This method adds the given `Quaternion` to the current quaternion. It creates a new `Quaternion` object with the sum of the w, x, y, and z components of the current quaternion and the given quaternion.

- Parameters:
    - quaternion: The `Quaternion` to be added.

- Returns: The resulting `Quaternion` after addition.

---

### [subtract:](./Quaternion.m#L151)
This method subtracts the given `Quaternion` from the current quaternion. It creates a new `Quaternion` object with the difference of the w, x, y, and z components of the current vector and the given vector.

- Parameters:
    - vector: The `Quaternion` to be subtracted.

- Returns: The resulting `Quaternion` after subtraction.

---

### [multiply:](./Quaternion.m#L162)
This method multiplies the current quaternion with the given `Quaternion`. It creates a new `Quaternion` object with the w, x, y, and z components of the current quaternion multiplied by the given quaternion. This is done by following quaternion multiplication rule found on [Wikipedia]("https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation#Quaternion-derived_rotation_matrix").

- Parameters:
    - quaternion: The `Quaternion` to be multiplied with.

- Returns: The resulting `Quaternion` after multiplication.

---

### [scalar multiply:](./Quaternion.m#L185)
This method multiplies the current quaternion with the given `CGFloat` scalar. It creates a new `Quaternion` object with the w, x, y, and z components of the current quaternion multiplied by the given scalar.

- Parameters:
    - scalar: The `CGFloat` to be multiplied with.

- Returns: The resulting `Quaternion` after multiplication.

---

### [divide:](./Quaternion.m#L196)
This method divides the current vector with the given `CGFloat` scalar. It creates a new `Quaternion` object with the w, x, y, and z components of the current vector divided by the scalar.

- Parameters:
    - scalar: The `CGFloat` scalar to be divided.

- Returns: The resulting `Quaternion` after division.

---

### [length:](./Quaternion.m#L206)
This method calculates the length (magnitude) of the `Vector3` component in the current `Quaternion`. The length is calculated as the square root of the sum of the squares of the x, y, and z components of the `Vector3` component of the current `Quaternion`.

- Returns: The `CGFloat` length (magnitude) of the `Vector3` component of the current `Quaternion`.

---

### [normalize:](./Quaternion.m#L216)
This method normalizes the `Vector3` component of the current `Quaternion`. It creates a new `Quaternion` object with the x, y, and z components of the vector divided by its length.

- Returns: The normalized `Quaternion`.

---

### [conjugate](./Quaternion.m#L228)
This method calculates the complex conjugate of the current `Quaternion`. It creates a new `Quaternion` object with the correct complex conjugate of the current quaternion.

- Returns: The complex conjugate of the current `Quaternion`.

---

### [isEqualTo:](./Quaternion.m#L248)
This method checks if the current quaternion is equal to the given quaternion. Two quaternions are considered equal if their w, x, y, and z components are equal.

- Parameters:
    - quaternion: The `Quaternion` to compare with.

- Returns: `YES` if the vectors are equal, `NO` otherwise.

---

### [description:](./Quaternion.m#L258)
This method returns a string representation of the current `Quaternion`. The string representation includes the w, x, y, and z components of the quaternion.

- Returns: The `NSString` representation of the current `Quaternion`.

---

### [copy:](./Quaternion.m#268)
This method copies the current `Quaternion` to create a new instance of it. This is especially useful because Objective-C defaults to pass-by-reference.

- Returns: A new instance (copy) of the current `Quaternion`.

---

## Usage

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