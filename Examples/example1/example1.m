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
#import "../../Utilities/Quaternion/Quaternion.h"
#import "../../Utilities/Vector3/Vector3.h"
#import "../../Utilities/Frame2/Frame2.h"
#import "../../Utilities/Window/Window.h"
/* --- End of Imports --- */

/* --- Main --- */
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Frame2 *frame = [Frame2 initWithX:0 Y:0 Width:800 Height:600];

        Window *window = [[Window alloc] initWithFrame:frame];

        window.title = @"Example 1";


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
        NSLog(@"\nInitial Vector:%@\nDegrees of Rotation:%f\nAxis of Rotation:%@\nQuaternion:%@\nResulting Vector:%@", [v description], angle, [axis description], [q description], [result description]);

        // Deallocate memory space
        [v dealloc];
        [axis dealloc];
        [q dealloc];
        [result dealloc];

        [window show];
    }
    return 0;
}
/* --- End of Main --- */