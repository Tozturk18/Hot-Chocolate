# [Hot Chocolate](../../README.md) - Frame2 Class (C & Objective-C)
**Last Updated:** July 15th, 2024 

---

The `Frame2` class is a simple 2D rectangular frame class that has `Vector2` position, `CGFloat` width and height, `CGFloat` rotation value, `NSRect` frame, and `NSMutableArray<Vector2*>` array. It includes methods for simple 2D Frame control operations such as scaling, moving, and rotating.
This class is implemented in both Objective-C and C for use in both Objective-C and C projects.

## Table of Contents
- [Initializers](#initializers)
    - [-initWithPos: Width: Height:](#initwithpos-width-height)
    - [+initWithPos: Width: Height:](#initwithpos-width-height-1)
    - [+initWithPos: Dim:](#initwithpos-dim)
    - [+initWithNSRect:](#initwithnsrect)
    - [+initWidthX: Y: Width: Height:](#initwidthx-y-width-height)
    - [initFrame2](#initframe2)
    - [initFrame2WithVector2s](#initframe2withvector2s)
- [Deinitializer](#deinitializer)
    - [dealloc](#dealloc)
    - [freeFrame2](#freeframe2)
- [Vector Operations](#vector-operations)
    - [scale:](#scale---objective-c)
    - [scaleWidth: Height:](#scalewidth-height---objective-c)
    - [scaleWidth:](#scalewidth---objective-c)
    - [scaleHeight:](#scaleheight---objective-c)
    - [description:](#description---objective-c)
    - [moveWithVector:](#movewithvector---objective-c)
    - [moveToPos:](#movetopos---objective-c)
    - [rotateByDegrees: aroundPoint:](#rotatebydegrees-aroundpoint---objective-c)
    - [rotateByDegrees:](#rotatebydegrees---objective-c)
    - [rotateByRadians: aroundPoint:](#rotatebyradians-aroundpoint---objective-c)
    - [rotateByRadians:](#rotatebyradians---objective-c)
- [Usage](#usage)
    - [Objective-C Sample Code](#objective-c-sample-code)
    - [C Sample Code](#c-sample-code)

## Initializers

### [-initWithPos: Width: Height:](./Frame2.m#L33)
This instance method initializes a `Frame2` object with the given `Vector2` position, `CGFloat` width, and `CGFloat` height.

- Parameters:
    - pos: The `Vector2` position of the frame.
    - width: The `CGFloat` width of the frame.
    - height: The `CGFloat` height of the frame.

- Returns: The initialized `Frame2` object.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2 *windowFrame = [[Frame2 alloc] initWithPos:framePos Width:100 Height:100];
```

---

### [+initWithPos: Width: Height:](./Frame2.m#L58)
This class method initializes a `Frame2` object with the given `Vector2` position, `CGFloat` width, and `CGFloat` height. It automatically allocates memory for a new `Frame2` object and returns it.

- Parameters:
    - pos: The `Vector2` position of the frame.
    - width: The `CGFloat` width of the frame.
    - height: The `CGFloat` height of the frame.

- Returns: The initialized `Frame2` object.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2 *windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];
```

---

### [+initWithPos: Dim:](./Frame2.m#L70)
This class method initializes a `Frame2` object with the given `Vector2` position and `Vector2` dimensions. It automatically allocates memory for a new `Frame2` object and returns it.

- Parameters:
    - pos: The `Vector2` position of the frame.
    - dim: The `Vector2` dimensions of the frame.

- Returns: The initialized `Frame2` object.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Vector2 *frameDim = [Vector2 initWithX:100 Y:100];
Frame2 *windowFrame = [Frame2 initWithPos:framePos Dim:frameDim];
```

---

### [+initWithNSRect:](./Frame2.m#L81)
This class method initializes a `Frame2` object with the given `NSRect`. It automatically allocates memory for a new `Frame2` object and returns it.

- Parameters:
    - rect: The `NSRect` to initialize the frame with.

- Returns: The initialized `Frame2` object.

**Example:**
```Objective-C
// Initialize a Frame2 object with an NSRect.
NSRect frameRect = NSMakeRect(0, 0, 100, 100);
Frame2 *windowFrame = [Frame2 initWithNSRect:frameRect];
```

---

### [+initWidthX: Y: Width: Height:](./Frame2.m#L95)
This class method initializes a `Frame2` object with the given `CGFloat` x and y position, `CGFloat` width, and `CGFloat` height. It automatically allocates memory for a new `Frame2` object and returns it.

- Parameters:
    - x: The `CGFloat` x position of the frame.
    - y: The `CGFloat` y position of the frame.
    - width: The `CGFloat` width of the frame.
    - height: The `CGFloat` height of the frame.

- Returns: The initialized `Frame2` object.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Frame2 *windowFrame = [Frame2 initWidthX:0 Y:0 Width:100 Height:100];
```

### [initFrame2()](./Frame2.m#L110)
This C function initializes a `Frame2` object with default values. It automatically allocates memory for a new `Frame2` object and returns it.

- Parameters:
    - x: The `float` x position of the frame.
    - y: The `float` y position of the frame.
    - width: The `float` width of the frame.
    - height: The `float` height of the frame.

- Returns: The initialized `Frame2` object.

**Example:**
```C
// Initialize a Frame2 object with default values.
Frame2 *windowFrame = initFrame2(0, 0, 100, 100);
```

### [initFrame2WithVector2s()](./Frame2.m#L112)
This C function initializes a `Frame2` object with the given `Vector2` position and `Vector2` dimensions. It automatically allocates memory for a new `Frame2` object and returns it.

- Parameters:
    - pos: The `Vector2` position of the frame.
    - dim: The `Vector2` dimensions of the frame.

- Returns: The initialized `Frame2` object.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Vector2 *frameDim = initVector2(100, 100);
Frame2 *windowFrame = initFrame2WithVector2s(framePos, frameDim);
```

## Deinitializer

### [dealloc](./Frame2.m#L133)
This method deallocates memory space from the current `Frame2` object. It's called when the object is no longer needed.
**Note:** This method is only available in Objective-C.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Vector2 *frameDim = [Vector2 initWithX:100 Y:100];
Frame2 *windowFrame = [Frame2 initWithPos:framePos Dim:frameDim];
// Deallocate the Frame2 object.
[windowFrame dealloc];
```

### [freeFrame2()](./Frame2.m#L143)
This C function deallocates memory space from the current `Frame2` object. It's called when the object is no longer needed.

- Parameters:
    - frame: The `Frame2` object to deallocate.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Vector2 *frameDim = initVector2(100, 100);
Frame2 *windowFrame = initFrame2WithVector2s(framePos, frameDim);
// Deallocate the Frame2 object.
freeFrame2(windowFrame);
```

## 2D Frame Operations

### [scale: - Objective-C](./Frame2.m#L158)
This method scales the current `Frame2` by a given `CGFloat` factor. The scaling is done by multiplying the width and height of the frame by the given scaling factor.

- Parameters:
    - factor: The `CGFloat` to scale the frame.

- Returns: The `Frame2` result of the scaling.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Vector2 *frameDim = [Vector2 initWithX:100 Y:100];

// Scale the Frame2 object by a factor.
Frame2 *scaledFrame = [windowFrame scale:2.0];
```

### [Frame2Scale() - C](./Frame2.m#L162)
This C function scales the current `Frame2` by a given `float` factor. The scaling is done by multiplying the width and height of the frame by the given scaling factor.

- Parameters:
    - frame: The `Frame2` object to scale.
    - factor: The `float` to scale the frame.

- Returns: The `Frame2` result of the scaling.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Vector2 *frameDim = initVector2(100, 100);

// Scale the Frame2 object by a factor.
Frame2 *scaledFrame = Frame2Scale(windowFrame, 2.0);
```

---

### [scaleWidth: Height: - Objective-C](./Frame2.m#L175)
This method scales the current `Frame2` by a given `CGFloat` widthFactor and heightFactor. The scaling is done by multiplying the width and height of the frame by the given widthFactor and heightFactor.

- Parameters:
    - widthFactor: The `CGFloat` to scale the width.
    - heightFactor: The `CGFloat` to scale the height.

- Returns: The `Frame2` result of the scaling.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Scale the Frame2 object by a factor.
Frame2 *scaledFrame = [windowFrame scaleWidth:2.0 Height:2.0];
```

### [Frame2ScaleWidthHeight() - C](./Frame2.m#L179)
This C function scales the current `Frame2` by a given `float` widthFactor and heightFactor. The scaling is done by multiplying the width and height of the frame by the given widthFactor and heightFactor.

- Parameters:
    - frame: The `Frame2` object to scale.
    - widthFactor: The `float` to scale the width.
    - heightFactor: The `float` to scale the height.

- Returns: The `Frame2` result of the scaling.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Scale the Frame2 object by a factor.
Frame2 *scaledFrame = Frame2ScaleWidthHeight(windowFrame, 2.0, 2.0);
```

---

### [scaleWidth: - Objective-C](./Frame2.m#L191)
This method scales the current `Frame2` by a given `CGFloat` widthFactor. The scaling is done by multiplying the width of the frame by the given widthFactor.

- Parameters:
    - widthFactor: The `CGFloat` to scale the width.

- Returns: The `Frame2` result of the scaling.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Scale the Frame2 object by a factor.
Frame2 *scaledFrame = [windowFrame scaleWidth:2.0];
```

### [Frame2ScaleWidth() - C](./Frame2.m#L195)
This C function scales the current `Frame2` by a given `float` widthFactor. The scaling is done by multiplying the width of the frame by the given widthFactor.

- Parameters:
    - frame: The `Frame2` object to scale.
    - widthFactor: The `float` to scale the width.

- Returns: The `Frame2` result of the scaling.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Scale the Frame2 object by a factor.
Frame2 *scaledFrame = Frame2ScaleWidth(windowFrame, 2.0);
```

---

### [scaleHeight: - Objective-C](./Frame2.m#L207)
This method scales the current `Frame2` by a given `CGFloat` heightFactor. The scaling is done by multiplying the height of the frame by the given heightFactor.

- Parameters:
    - heightFactor: The `CGFloat` to scale the height.

- Returns: The `Frame2` result of the scaling.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Scale the Frame2 object by a factor.
Frame2 *scaledFrame = [windowFrame scaleHeight:2.0];
```

### [Frame2ScaleHeight() - C](./Frame2.m#L211)
This C function scales the current `Frame2` by a given `float` heightFactor. The scaling is done by multiplying the height of the frame by the given heightFactor.

- Parameters:
    - frame: The `Frame2` object to scale.
    - heightFactor: The `float` to scale the height.

- Returns: The `Frame2` result of the scaling.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Scale the Frame2 object by a factor.
Frame2 *scaledFrame = Frame2ScaleHeight(windowFrame, 2.0);
```

---

### [copy: - Objective-C](./Frame2.m#L221)
This method returns a copy of the current `Frame2` object.

- Returns: The copied `Frame2` object.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Copy the Frame2 object.
Frame2 *copiedFrame = [windowFrame copy];
```

### [Frame2Copy() - C](./Frame2.m#L225)
This C function returns a copy of the current `Frame2` object.

- Parameters:
    - frame: The `Frame2` object to copy.

- Returns: The copied `Frame2` object.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Copy the Frame2 object.
Frame2 *copiedFrame = Frame2Copy(windowFrame);
```

---

### [description: - Objective-C](./Frame2.m#L237)
This method returns a string representation of the current `Frame2` object.

- Returns: The `NSString` description of the frame.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Get the description of the Frame2 object.
NSString *frameDescription = [windowFrame description]; // Output: [(0,0), (100,100)]
```

### [Frame2Description() - C](./Frame2.m#L241)
This C function returns a char array (string) representation of the current `Frame2` object.

- Parameters:
    - frame: The `Frame2` object to describe.

- Returns: The `char*` description of the frame.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Get the description of the Frame2 object.
char *frameDescription = Frame2Description(windowFrame); // Output: [(0,0), (100,100)]
```

---

### [moveWithVector: - Objective-C](./Frame2.m#L254)
This method moves the current `Frame2` by a given `Vector2`. The moving is done by adding the x and y components of the given vector to the x and y position of the frame.

- Parameters:
    - vector: The `Vector2` to move the frame with.

- Returns: The `Frame2` result of the moving.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:10 Y:10];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Move the Frame2 object with a Vector2.
Vector2 *moveVector = [Vector2 initWithX:10 Y:10];
Frame2 *movedFrame = [windowFrame moveWithVector:moveVector]; // Output: [(20,20), (100,100)]

```


### [Frame2MoveWithVector() - C](./Frame2.m#L258)
This C function moves the current `Frame2` by a given `Vector2`. The moving is done by adding the x and y components of the given vector to the x and y position of the frame.

- Parameters:
    - frame: The `Frame2` object to move.
    - vector: The `Vector2` to move the frame with.

- Returns: The `Frame2` result of the moving.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(10, 10);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Move the Frame2 object with a Vector2.
Vector2 *moveVector = initVector2(10, 10);
Frame2 *movedFrame = Frame2MoveWithVector(windowFrame, moveVector); // Output: [(20,20), (100,100)]
```

---

### [moveToPos: - Objective-C](./Frame2.m#L270)
This method moves the current `Frame2` to a given `Vector2` position.

- Parameters:
    - pos: The `Vector2` position to move the frame to.

- Returns: The `Frame2` result of the moving.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:5 Y:25];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Move the Frame2 object to a Vector2 position.
Vector2 *movePos = [Vector2 initWithX:10 Y:10];
Frame2 *movedFrame = [windowFrame moveToPos:movePos]; // Output: [(10,10), (100,100)]
```

### [Frame2MoveToPos() - C](./Frame2.m#L274)
This C function moves the current `Frame2` to a given `Vector2` position.

- Parameters:
    - frame: The `Frame2` object to move.
    - pos: The `Vector2` position to move the frame to.

- Returns: The `Frame2` result of the moving.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(5, 25);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Move the Frame2 object to a Vector2 position.
Vector2 *movePos = initVector2(10, 10);
Frame2 *movedFrame = Frame2MoveToPos(windowFrame, movePos); // Output: [(10,10), (100,100)]
```

---

### [rotateByDegrees: aroundPoint: - Objective-C](./Frame2.m#L287)
This method rotates the current `Frame2` by a given angle in degrees around a given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in degrees.
   () - Center: The `Vector2` point around which the frame is rotated.

- Returns: The rotated `Frame2`.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Rotate the Frame2 object by an angle around a Vector2 point.
Vector2 *rotatePoint = [Vector2 initWithX:50 Y:50];
Frame2 *rotatedFrame = [windowFrame rotateByDegrees:90 aroundPoint:rotatePoint];
```

### [Frame2RotateByDegreesAroundPoint() - C](./Frame2.m#L291)
This C function rotates the current `Frame2` by a given angle in degrees around a given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - frame: The `Frame2` object to rotate.
    - angle: The `float` angle in degrees.
    - Center: The `Vector2` point around which the frame is rotated.

- Returns: The rotated `Frame2`.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Rotate the Frame2 object by an angle around a Vector2 point.
Vector2 *rotatePoint = initVector2(50, 50);
Frame2 *rotatedFrame = Frame2RotateByDegreesAroundPoint(windowFrame, 90, rotatePoint);
```

---

### [rotateByDegrees: - Objective-C](./Frame2.m#L303)
This method rotates the current `Frame2` by a given angle in degrees around it's center. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in degrees.

- Returns: The rotated `Frame2`.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Rotate the Frame2 object by an angle around it's center.
Frame2 *rotatedFrame = [windowFrame rotateByDegrees:90];
```

### [Frame2RotateByDegrees() - C](./Frame2.m#L307)
This C function rotates the current `Frame2` by a given angle in degrees around it's center. The rotation is performed using rotation matrices.

- Parameters:
    - frame: The `Frame2` object to rotate.
    - angle: The `float` angle in degrees.

- Returns: The rotated `Frame2`.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Rotate the Frame2 object by an angle around it's center.
Frame2 *rotatedFrame = Frame2RotateByDegrees(windowFrame, 90);
```

---

### [rotateByRadians: aroundPoint: - Objective-C](./Frame2.m#L320)
This method rotates the current `Frame2` by a given angle in radians around a given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.
    - Center: The `Vector2` point around which the frame is rotated.

- Returns: The rotated `Frame2`.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Rotate the Frame2 object by an angle around a Vector2 point.
Vector2 *rotatePoint = [Vector2 initWithX:50 Y:50];
Frame2 *rotatedFrame = [windowFrame rotateByRadians:M_PI_2 aroundPoint:rotatePoint];
```

### [Frame2RotateByRadiansAroundPoint() - C](./Frame2.m#L331)
This C function rotates the current `Frame2` by a given angle in radians around a given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - frame: The `Frame2` object to rotate.
    - angle: The `float` angle in radians.
    - Center: The `Vector2` point around which the frame is rotated.

- Returns: The rotated `Frame2`.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Rotate the Frame2 object by an angle around a Vector2 point.
Vector2 *rotatePoint = initVector2(50, 50);
Frame2 *rotatedFrame = Frame2RotateByRadiansAroundPoint(windowFrame, M_PI_2, rotatePoint);
```

---

### [rotateByRadians: - Objective-C](./Frame2.m#L343)
This method rotates the current `Frame2` by a given angle in radians around it's center. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.

- Returns: The rotated `Frame2`.

**Example:**
```Objective-C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Frame2* windowFrame = [Frame2 initWithPos:framePos Width:100 Height:100];

// Rotate the Frame2 object by an angle around it's center.
Frame2 *rotatedFrame = [windowFrame rotateByRadians:M_PI_2];
```

### [Frame2RotateByRadians() - C](./Frame2.m#L347)
This C function rotates the current `Frame2` by a given angle in radians around it's center. The rotation is performed using rotation matrices.

- Parameters:
    - frame: The `Frame2` object to rotate.
    - angle: The `float` angle in radians.

- Returns: The rotated `Frame2`.

**Example:**
```C
// Initialize a Frame2 object with a position and dimensions.
Vector2 *framePos = initVector2(0, 0);
Frame2* windowFrame = initFrame2(framePos, 100, 100);

// Rotate the Frame2 object by an angle around it's center.
Frame2 *rotatedFrame = Frame2RotateByRadians(windowFrame, M_PI_2);
```

## Usage
### Objective-C Sample Code
```Objective-C
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Vector2 *frameDim = [Vector2 initWithX:100 Y:100];
Frame2 *windowFrame = [Frame2 initWithPos:framePos Dim:frameDim];
```
### C Sample Code
```C
Vector2 *framePos = initVector2(0, 0);
Vector2 *frameDim = initVector2(100, 100);
Frame2 *windowFrame = initFrame2(framePos, frameDim);
```