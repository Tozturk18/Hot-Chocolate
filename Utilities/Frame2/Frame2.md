# [Hot Chocolate](../../README.md) - Frame2 Class
Last Updated On: June 19th, 2024 

---

The `Frame2` class is a simple 2D rectangular frame class that has `Vector2` position, `CGFloat` width and height, `CGFloat` rotation value, `NSRect` frame, and `NSMutableArray<Vector2*>` array. It includes methods for simple 2D Frame control operations such as scaling, moving, and rotating.

## Table of Contents
- [Initializers](#initializers)
    - [-initWithPos: Width: Height:](#initwithpos-width-height)
    - [+initWithPos: Width: Height:](#initwithpos-width-height-1)
    - [+initWithPos: Dim:](#initwithpos-dim)
    - [+initWithNSRect:](#initwithnsrect)
    - [+initWidthX: Y: Width: Height:](#initwidthx-y-width-height)
- [Deinitializer](#deinitializer)
    - [dealloc](#dealloc)
- [Vector Operations](#vector-operations)
    - [scale:](#scale)
    - [scaleWidth: Height:](#scalewidth-height)
    - [scaleWidth:](#scalewidth)
    - [scaleHeight:](#scaleheight)
    - [moveWithVector:](#movewithvector)
    - [moveToPos:](#movetopos)
    - [rotateByDegrees: aroundPoint:](#rotatebydegrees-aroundpoint)
    - [rotateByDegrees:](#rotatebydegrees)
    - [rotateByRadians: aroundPoint:](#rotatebyradians-aroundpoint)
    - [rotateByRadians:](#rotatebyradians)

## Initializers

### [-initWithPos: Width: Height:](./Frame2.m#L33)
This instance method initializes a `Frame2` object with the given `Vector2` position, `CGFloat` width, and `CGFloat` height.

- Parameters:
    - pos: The `Vector2` position of the frame.
    - width: The `CGFloat` width of the frame.
    - height: The `CGFloat` height of the frame.

- Returns: The initialized `Frame2` object.

---

### [+initWithPos: Width: Height:](./Frame2.m#L58)
This class method initializes a `Frame2` object with the given `Vector2` position, `CGFloat` width, and `CGFloat` height. It automatically allocates memory for a new `Frame2` object and returns it.

- Parameters:
    - pos: The `Vector2` position of the frame.
    - width: The `CGFloat` width of the frame.
    - height: The `CGFloat` height of the frame.

- Returns: The initialized `Frame2` object.

---

### [+initWithPos: Dim:](./Frame2.m#L70)
This class method initializes a `Frame2` object with the given `Vector2` position and `Vector2` dimensions. It automatically allocates memory for a new `Frame2` object and returns it.

- Parameters:
    - pos: The `Vector2` position of the frame.
    - dim: The `Vector2` dimensions of the frame.

- Returns: The initialized `Frame2` object.

---

### [+initWithNSRect:](./Frame2.m#L81)
This class method initializes a `Frame2` object with the given `NSRect`. It automatically allocates memory for a new `Frame2` object and returns it.

- Parameters:
    - rect: The `NSRect` to initialize the frame with.

- Returns: The initialized `Frame2` object.

---

### [+initWidthX: Y: Width: Height:](./Frame2.m#L95)
This class method initializes a `Frame2` object with the given `CGFloat` x and y position, `CGFloat` width, and `CGFloat` height. It automatically allocates memory for a new `Frame2` object and returns it.

- Parameters:
    - x: The `CGFloat` x position of the frame.
    - y: The `CGFloat` y position of the frame.
    - width: The `CGFloat` width of the frame.
    - height: The `CGFloat` height of the frame.

- Returns: The initialized `Frame2` object.

## Deinitializer

### [dealloc](./Frame2.m#L105)
This method deallocates memory space from the current `Frame2` object. It's called when the object is no longer needed.

## 2D Frame Operations

### [scale:](./Frame2.m#L118)
This method scales the current `Frame2` by a given `CGFloat` factor. The scaling is done by multiplying the width and height of the frame by the given scaling factor.

- Parameters:
    - factor: The `CGFloat` to scale the frame.

- Returns: The `Frame2` result of the scaling.

---

### [scaleWidth: Height:](./Frame2.m#L130)
This method scales the current `Frame2` by a given `CGFloat` widthFactor and heightFactor. The scaling is done by multiplying the width and height of the frame by the given widthFactor and heightFactor.

- Parameters:
    - widthFactor: The `CGFloat` to scale the width.
    - heightFactor: The `CGFloat` to scale the height.

- Returns: The `Frame2` result of the scaling.

---

### [scaleWidth:](./Frame2.m#L141)
This method scales the current `Frame2` by a given `CGFloat` widthFactor. The scaling is done by multiplying the width of the frame by the given widthFactor.

- Parameters:
    - widthFactor: The `CGFloat` to scale the width.

- Returns: The `Frame2` result of the scaling.

---

### [scaleHeight:](./Frame2.m#L151)
This method scales the current `Frame2` by a given `CGFloat` heightFactor. The scaling is done by multiplying the height of the frame by the given heightFactor.

- Parameters:
    - heightFactor: The `CGFloat` to scale the height.

- Returns: The `Frame2` result of the scaling.

---

### [moveWithVector:](./Frame2.m#L161)
This method moves the current `Frame2` by a given `Vector2`. The moving is done by adding the x and y components of the given vector to the x and y position of the frame.

- Parameters:
    - vector: The `Vector2` to move the frame with.

- Returns: The `Frame2` result of the moving.

---

### [moveToPos:](./Frame2.m#L171)
This method moves the current `Frame2` to a given `Vector2` position.

- Parameters:
    - pos: The `Vector2` position to move the frame to.

- Returns: The `Frame2` result of the moving.

---

### [rotateByDegrees: aroundPoint:](./Frame2.m#L182)
This method rotates the current `Frame2` by a given angle in degrees around a given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in degrees.
    - center: The `Vector2` point around which the frame is rotated.

- Returns: The rotated `Frame2`.

---

### [rotateByDegrees:](./Frame2.m#L194)
This method rotates the current `Frame2` by a given angle in degrees around the origin. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in degrees.

- Returns: The rotated `Frame2`.

---

### [rotateByRadians: aroundPoint:](./Frame2.m#L205)
This method rotates the current `Frame2` by a given angle in radians around a given `Vector2` point. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.
    - center: The `Vector2` point around which the frame is rotated.

- Returns: The rotated `Frame2`.

---

### [rotateByRadians:](./Frame2.m#L217)
This method rotates the current `Frame2` by a given angle in radians around the origin. The rotation is performed using rotation matrices.

- Parameters:
    - angle: The `CGFloat` angle in radians.

- Returns: The rotated `Frame2`.

---

## Usage

```Objective-C
Vector2 *framePos = [Vector2 initWithX:0 Y:0];
Vector2 *frameDim = [Vector2 initWithX:100 Y:100];
Frame2 *windowFrame = [Frame2 initWithPos:framePos Dim:frameDim];
```