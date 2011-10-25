//
//  PDKeychainBindingsControllerTest.m
//  PDKeychainBindingsController
//
//  Created by Aaron London on 10/24/11.
//  Copyright (c) 2011 Handelabra Studio LLC. All rights reserved.
//

#import "PDKeychainBindingsControllerTest.h"

#import <UIKit/UIKit.h>
#import "PDKeychainBindingsController.h"

@implementation PDKeychainBindingsControllerTest

// All code under test is in the iOS Application
- (void)testAppDelegate
{
    id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
    STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
}

- (void)testArray
{
    PDKeychainBindingsController *controller = [PDKeychainBindingsController sharedKeychainBindingsController];
    STAssertTrue([controller storeArray:nil forKey:@"myTestArray"], @"Test store nil array.");
    NSArray *inArray = [NSArray arrayWithObjects:@"foo", @"bar", nil];
    STAssertTrue([controller storeArray:inArray forKey:@"myTestArray"], @"Test store array");
    NSArray *outArray = [controller arrayForKey:@"myTestArray"];
    STAssertNotNil(outArray, @"Test retrieve array.");
    STAssertTrue([(NSString*)[inArray objectAtIndex:0] isEqualToString:(NSString*)[outArray objectAtIndex:0]], @"Test array values equal.");
}

@end
