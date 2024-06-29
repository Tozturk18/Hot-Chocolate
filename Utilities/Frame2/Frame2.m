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
    /* --- End of Initializers --- */

    /* --- Deinitializer --- */

    /**
     * @brief Deallocates the memory occupied by the object.
     */
    - (void)dealloc {
        // Deallocate the memory occupied by the object.
        [super dealloc];
    }
    /* --- End of Deinitializer --- */

    /* --- Methods --- */

    /**
     * @brief scales the Frame2 by the specified factor.
     *
     * @param factor The factor to scale the Frame2.
     */
    - (void)scale:(CGFloat)factor {
        // Scale the Frame2 by the specified factor.
        self.width *= factor;
        self.height *= factor;
    }

    /**
     * @brief scales the Frame2's width and height components with different scale factors
     *
     * @param xFactor The factor to scale the Frame2's width.
     * @param yFactor The factor to scale the Frame2's height.
     */
    - (void)scaleWidth:(CGFloat)xFactor Height:(CGFloat)yFactor {
        // Scale the Frame2's width and height components with different scale factors.
        self.width *= xFactor;
        self.height *= yFactor;
    }

    /**
     * @brief Scales only the width of the Frame2
     * 
     * @param xFactor the factor to scale the Frame2's width
     */
    - (void)scaleWidth:(CGFloat)xFactor {
        // Scale only the width of the Frame2
        self.width *= xFactor;
    }

    /**
     * @brief Scales only the height of the Frame2
     * 
     * @param yFactor the factor to scale the Frame2's height
     */
    - (void)scaleHeight:(CGFloat)yFactor {
        // Scale only the height of the Frame2
        self.height *= yFactor;
    }

    /**
     * @brief Moves the object using the specified vector.
     * 
     * @param vector The vector to move the object.
     */
    - (void)moveWithVector:(Vector2 *)vector {
        // Move the object using the specified vector.
        [self.position add:vector];
    }

    /**
     * @brief Moves the object to the specified position.
     *
     * @param position The position to move the object.
     */
    - (void)moveToPos:(Vector2 *)position {
        // Move the object to the specified position.
        self.position = [position copy];
    }

    /**
     * @brief Rotates the object by the specified angle in degrees around the specified point.
     *
     * @param angle The angle in degrees to rotate the object.
     * @param point The point to rotate the object around.
     */
    - (void)rotateByDegrees:(CGFloat)angle aroundPoint:(Vector2 *)point {
        // Rotate the object by the specified angle around the specified point.
        for (int i = 0; i < self.vertices.count; i++) {
            [self.vertices[i] rotateByDegrees:angle aroundPoint:point];
        }
    }

    /**
     * @brief Rotates the object by the specified angle in degrees around its center.
     *
     * @param angle The angle in degrees to rotate the object.
     */
    - (void)rotateByDegrees:(CGFloat)angle {
        // Rotate the object by the specified angle around its center.
        [self rotateByDegrees:angle aroundPoint:[Vector2 initWithX:(self.vertices[0].x+self.width/2) Y:(self.vertices[0].y+self.height/2)]];
    }

    /**
     * @brief Rotates the object by the specified angle in radians around the specified point.
     *
     * @param angle The angle in radians to rotate the object.
     * @param point The point to rotate the object around.
     */
    - (void)rotateByRadians:(CGFloat)angle aroundPoint:(Vector2 *)point {
        // Rotate the object by the specified angle around the specified point.
        for (int i = 0; i < self.vertices.count; i++) {
            [self.vertices[i] rotateByRadians:angle aroundPoint:point];
        }
    }

    /**
     * @brief Rotates the object by the specified angle in radians around its center.
     *
     * @param angle The angle in radians to rotate the object.
     */
    - (void)rotateByRadians:(CGFloat)angle {
        // Rotate the object by the specified angle around its center.
        [self rotateByRadians:angle aroundPoint:[Vector2 initWithX:(self.vertices[0].x+self.width/2) Y:(self.vertices[0].y+self.height/2)]];
    }
    /* --- End of Methods --- */

@end
/* --- End of Implementation --- */
