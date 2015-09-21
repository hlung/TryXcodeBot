//
//  TryXcodeBotTests.m
//  TryXcodeBotTests
//
//  Created by Hlung on 3/9/15.
//  Copyright (c) 2015 Oozou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MyObject.h"

@interface TryXcodeBotTests : XCTestCase

@end

@implementation TryXcodeBotTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    
    NSArray *array = @[@"b", @"a", @"c"];
    NSLog(@"array %@", array);
    NSArray *sorted = [MyObject sortedArray:array];
    NSLog(@"sorted array %@", sorted);// should be @[@"a", @"b", @"c"]
    
    BOOL eq = [sorted isEqualToArray:@[@"a", @"b", @"c"]];
    XCTAssert(eq, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
