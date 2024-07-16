/**
 * @file Frame2.m
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the implementation file for the 2D Frame class.
 * @version 0.1
 * @date 2024-06-19
 * 
 * @copyright MIT License (c) 2024
 * 
 */

/* --- Imports --- */
#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "Frame2.h"
#import "../Vector2/Vector2.h"
/* --- End of Imports --- */

/* --- Implementation --- */
@implementation Frame2

    /* --- Initializers --- */

    /**
     * @brief Initializes a new instance of the Frame2 class with the specified position, width, and height.
     *
     * @param position The position of the bottom-left corner of the Frame2.
     * @param width The width of the Frame2.
     * @param height The height of the Frame2.
     *
     * @return A new instance of the Frame2 class.
     */
    - (instancetype)initWithPos:(Vector2 *)pos Width:(CGFloat)width Height:(CGFloat)height; {
        self = [super init];
        if (self) {
            self.position = pos;
            self.width = width;
            self.height = height;
            self.rotation = 0;
            self.frame = NSMakeRect(self.position.x, self.position.y, self.width, self.height);
            self.vertices = [[NSMutableArray alloc] init];
            [self.vertices addObject:[Vector2 initWithX:self.position.x Y:self.position.y]];
            [self.vertices addObject:[Vector2 initWithX:self.position.x + self.width Y:self.position.y]];
            [self.vertices addObject:[Vector2 initWithX:self.position.x + self.width Y:self.position.y + self.height]];
            [self.vertices addObject:[Vector2 initWithX:self.position.x Y:self.position.y + self.height]];
        }
        return self;
    }

    /**
     * @brief Initializes a new instance of the Frame2 class with the specified position vector, width, and height
     *  and allocates memory.
     *
     * @param Vector2: The position of the bottom-left corner of the Frame2
     *
     * @return A new instance of the Frame2 class.
     */
    + (instancetype)initWithPos:(Vector2 *)pos Width:(CGFloat)width Height:(CGFloat)height {
        return [[Frame2 alloc] initWithPos:pos Width:width Height:height];
    }

    /**
     * @brief Initializes a new instance of the Frame2 class with the specified position vector, dimension vector.
     *
     * @param Vector2*: pos The position of the bottom-left corner of the Frame2.
     * @param Vector2*: dim The dimensions of the Frame2.
     *
     * @return A new instance of the Frame2 class.
     */
    + (instancetype)initWithPos:(Vector2 *)pos Dim:(Vector2 *)dim {
        return [[Frame2 alloc] initWithPos:pos Width:dim.x Height:dim.y];
    }

    /**
     * @brief Initializes a new instance of the Frame2 class with the specified position, width, and height.
     *
     * @param NSRect*: rect The position and dimensions of the Frame2.
     *
     * @return A new instance of the Frame2 class.
     */
    + (instancetype)initWithNSRect:(NSRect *)rect {
        return [[Frame2 alloc] initWithPos:[Vector2 initWithX:rect->origin.x Y:rect->origin.y] Width:rect->size.width Height:rect->size.height];
    }

    /**
     * @brief Initializes a new instance of the Frame2 class with the specified position, width, and height.
     *
     * @param CGFloat: The x-coordinate of the bottom-left corner of the Frame2.
     * @param CGFloat: The y-coordinate of the bottom-left corner of the Frame2.
     * @param CGFloat: The width of the Frame2.
     * @param CGFloat: The height of the Frame2.
     *
     * @return A new instance of the Frame2 class.
     */
    + (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y Width:(CGFloat)width Height:(CGFloat)height {
        return [[Frame2 alloc] initWithPos:[Vector2 initWithX:x Y:y] Width:width Height:height];
    }

    /**
     * @brief Initializes a new instance of the Frame2 class using C bridgining with the specified 
     *  x, y values for position and , width, and height.
     *
     * @param float: The x-coordinate of the bottom-left corner of the Frame2.
     * @param float: The y-coordinate of the bottom-left corner of the Frame2.
     * @param float: The width of the Frame2.
     * @param float: The height of the Frame2.
     * 
     * @return A new instance of the Frame2 class.
     */
    Frame2* initFrame2(float x, float y, float width, float height) {
        return [[Frame2 alloc] initWithPos:[Vector2 initWithX:x Y:y] Width:width Height:height];
    }

    /**
     * @brief Initializes a new instance of the Frame2 class with the specified position, and dimension vectors.
     *
     * @param Vector2*: pos The position of the bottom-left corner of the Frame2.
     * @param Vector2*: dim The dimensions of the Frame2.
     *
     * @return A new instance of the Frame2 class.
     */
    Frame2* initFrame2WithVector2s(Vector2* pos, Vector2* dim) {
        return [[Frame2 alloc] initWithPos:pos Width:dim.x Height:dim.y];
    }

    /* --- End of Initializers --- */

    /* --- Deinitializer --- */

    /**
     * @brief Deallocates the memory occupied by the object.
     */
    - (void)dealloc {
        // Deallocate the memory occupied by the object.
        [super dealloc];
    }

    /**
     * @brief Deallocates the memory occupied by the object.
     *
     * @param frame The object to deallocate.
     */
    void freeFrame2(Frame2* frame) {
        // Deallocate the memory occupied by the object.
        [frame dealloc];
    }
    /* --- End of Deinitializer --- */

    /* --- Methods --- */

    /**
     * @brief scales the Frame2 by the specified factor.
     *
     * @param factor The factor to scale the Frame2.
     *
     * @return The scaled Frame2.
     */
    - (Frame2*)scale:(CGFloat)factor {
        // Scale the Frame2 by the specified factor.
        return [[Frame2 alloc] initWithPos:[self.position copy] Width:self.width*factor Height:self.height*factor];
    }
    Frame2* Frame2Scale(Frame2* frame, float factor) {
        // Scale the Frame2 by the specified factor.
        return [frame scale:factor];
    }

    /**
     * @brief scales the Frame2's width and height components with different scale factors
     *
     * @param xFactor The factor to scale the Frame2's width.
     * @param yFactor The factor to scale the Frame2's height.
     *
     * @return The scaled Frame2.
     */
    - (Frame2*)scaleWidth:(CGFloat)xFactor Height:(CGFloat)yFactor {
        // Scale the Frame2's width and height components with different scale factors.
        return [[Frame2 alloc] initWithPos:[self.position copy] Width:self.width*xFactor Height:self.height*yFactor];
    }
    Frame2* Frame2ScaleWidthHeight(Frame2* frame, float xFactor, float yFactor) {
        // Scale the Frame2's width and height components with different scale factors.
        return [frame scaleWidth:xFactor Height:yFactor];
    }

    /**
     * @brief Scales only the width of the Frame2
     * 
     * @param xFactor the factor to scale the Frame2's width
     *
     * @return The scaled Frame2.
     */
    - (Frame2*)scaleWidth:(CGFloat)xFactor {
        // Scale only the width of the Frame2
        return [[Frame2 alloc] initWithPos:[self.position copy] Width:self.width*xFactor Height:self.height];
    }
    Frame2* Frame2ScaleWidth(Frame2* frame, float xFactor) {
        // Scale only the width of the Frame2.
        return [frame scaleWidth:xFactor];
    }

    /**
     * @brief Scales only the height of the Frame2
     * 
     * @param yFactor the factor to scale the Frame2's height
     *
     * @return The scaled Frame2.
     */
    - (Frame2*)scaleHeight:(CGFloat)yFactor {
        // Scale only the height of the Frame2
        return [[Frame2 alloc] initWithPos:[self.position copy] Width:self.width Height:self.height*yFactor];
    }
    Frame2* Frame2ScaleHeight(Frame2* frame, float yFactor) {
        // Scale only the height of the Frame2.
        return [frame scaleHeight:yFactor];
    }

    /**
     * @brief Creates a new copy of the Frame2 object.
     *
     * @return A new copy of the Frame2 object.
     */
    - (Frame2*)copy {
        // Create a new copy of the Frame2 object.
        return [[Frame2 alloc] initWithPos:[self.position copy] Width:self.width Height:self.height];
    }
    Frame2* Frame2Copy(Frame2* frame) {
        // Create a new copy of the Frame2 object.
        return [frame copy];
    }

    /**
     * @brief Returns the description of the Frame2 object as a string.
     *
     * @return The description of the Frame2 object.
     *
     * @note The description includes the position, width, and height of the Frame2 object.
     */
    - (NSString *)description {
        // Return the description of the Frame2 object as a string.
        return [NSString stringWithFormat:@"[%@, (%f, %f)]", [self.position description], self.width, self.height];
    }
    char* Frame2Description(Frame2* frame) {
        // Return the description of the Frame2 object as a string.
        return (char*)[[frame description] UTF8String];
    }
    

    /**
     * @brief Moves the object using the specified vector.
     * 
     * @param vector The vector to move the object.
     *
     * @return The moved object.
     */
    - (Frame2*)moveWithVector:(Vector2 *)vector {
        // Move the object using the specified vector.
        return [[Frame2 alloc] initWithPos:[self.position add:vector] Width:self.width Height:self.height];
    }
    Frame2* Frame2MoveWithVector(Frame2* frame, Vector2* vector) {
        // Move the object using the specified vector.
        return [frame moveWithVector:vector];
    }

    /**
     * @brief Moves the object to the specified position.
     *
     * @param position The position to move the object.
     *
     * @return The moved object.
     */
    - (Frame2*)moveToPos:(Vector2 *)position {
        // Move the object to the specified position.
        return [[Frame2 alloc] initWithPos:position Width:self.width Height:self.height];
    }
    Frame2* Frame2MoveToPos(Frame2* frame, Vector2* position) {
        // Move the object to the specified position.
        return [frame moveToPos:position];
    }

    /**
     * @brief Rotates the object by the specified angle in degrees around the specified point.
     *
     * @param angle The angle in degrees to rotate the object.
     * @param point The point to rotate the object around.
     *
     * @return The rotated object.
     */
    - (Frame2*)rotateByDegrees:(CGFloat)angle aroundPoint:(Vector2 *)point {
        // Rotate the object by the specified angle around the specified point.
        return [self rotateByRadians:angle * M_PI / 180 aroundPoint:point];
    }
    Frame2* Frame2RotateByDegreesAroundPoint(Frame2* frame, float angle, Vector2* point) {
        // Rotate the object by the specified angle in degrees around the specified point.
        return [frame rotateByDegrees:angle aroundPoint:point];
    }

    /**
     * @brief Rotates the object by the specified angle in degrees around its center.
     *
     * @param angle The angle in degrees to rotate the object.
     *
     * @return The rotated object.
     */
    - (Frame2*)rotateByDegrees:(CGFloat)angle {
        // Rotate the object by the specified angle around its center.
        return [self rotateByDegrees:angle aroundPoint:[Vector2 initWithX:(self.vertices[0].x+self.width/2) Y:(self.vertices[0].y+self.height/2)]];
    }
    Frame2* Frame2RotateByDegrees(Frame2* frame, float angle) {
        // Rotate the object by the specified angle in degrees around its center.
        return [frame rotateByDegrees:angle];
    }

    /**
     * @brief Rotates the object by the specified angle in radians around the specified point.
     *
     * @param angle The angle in radians to rotate the object.
     * @param point The point to rotate the object around.
     *
     * @return The rotated object.
     */
    - (Frame2*)rotateByRadians:(CGFloat)angle aroundPoint:(Vector2 *)point {
        // Copy the current object
        Frame2* copy = [self copy];

        // Rotate the object by the specified angle around the specified point.
        for (int i = 0; i < copy.vertices.count; i++) {
            [copy.vertices[i] rotateByRadians:angle aroundPoint:point];
        }

        return copy;
    }
    Frame2* Frame2RotateByRadiansAroundPoint(Frame2* frame, float angle, Vector2* point) {
        // Rotate the object by the specified angle in radians around the specified point.
        return [frame rotateByRadians:angle aroundPoint:point];
    }

    /**
     * @brief Rotates the object by the specified angle in radians around its center.
     *
     * @param angle The angle in radians to rotate the object.
     *
     * @return The rotated object.
     */
    - (Frame2*)rotateByRadians:(CGFloat)angle {
        // Rotate the object by the specified angle around its center.
        return [self rotateByRadians:angle aroundPoint:[Vector2 initWithX:(self.vertices[0].x+self.width/2) Y:(self.vertices[0].y+self.height/2)]];
    }
    Frame2* Frame2RotateByRadians(Frame2* frame, float angle) {
        // Rotate the object by the specified angle in radians around its center.
        return [frame rotateByRadians:angle];
    }

    /* --- End of Methods --- */
@end
/* --- End of Implementation --- */
