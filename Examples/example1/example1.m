/**
 * @file example1.m
 * @author Ozgur Tuna Ozturk (tunaozturk2001@hotmail.com)
 * @brief This is the first example file showcasing the very basics of Hot Chocolate
 * @version 0.1
 * @date 2024-06-16
 * 
 * @copyright Copyright (c) 2024
 * 
 */

/* --- Imports --- */
#import <Cocoa/Cocoa.h>
#import <stdio.h>
#import <stdlib.h>
#import "../../HotChocolate.h"
/* --- End of Imports --- */

/* --- Main --- */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Window *window = initWindow(0, 0, 800, 600);

        window.window.title = @"Example 1";
        //window.window.backgroundColor = [NSColor colorWithRed:atof(argv[1])/255.0 green:atof(argv[2])/255.0 blue:atof(argv[3])/255.0 alpha:1.0];
        window.window.backgroundColor = [NSColor redColor];

        // Showcase, multi-language support
        // Initialize a 2D vector in C
        Vector2 *v2 = initVector2(1, 2);
        // Rotate the vector by 45 degrees in Objective-C
        Vector2 *rotatedByDegrees = [v2 rotateByDegrees:45];
        // Print out the results in Objective-C
        NSLog(@"%@", [rotatedByDegrees description]);

        freeVector2(v2);

        // Initialize vector to rotate
        Vector3 *v = initVector3(1,2,3);
        // Initialize axis of rotation
        Vector3 *axis = initVector3(0,0,1);
        // Degree of rotation
        float angle = 45.0;
        // Initialize the quaternion for rotation
        Quaternion *q = initQuaternionWithDegrees(angle, axis);
        // Rotate the vector v using quaternion q
        Vector3 *result = Vector3RotateByQuaternion(v,q);
        // Print out the results
        printf("\nInitial Vector:%s\nDegrees of Rotation:%f\nAxis of Rotation:%s\nQuaternion:%s\nResulting Vector:%s\n", Vector3Description(v), angle, Vector3Description(axis), QuaternionDescription(q), Vector3Description(result));

        // Deallocate memory space
        freeVector3(v);
        freeVector3(axis);
        freeQuaternion(q);
        freeVector3(result);

        printf("Hello, World!\n");

        showWindow(window);
    }
    return 0;
}
/* --- End of Main --- */