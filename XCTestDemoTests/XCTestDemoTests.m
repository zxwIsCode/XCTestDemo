//
//  XCTestDemoTests.m
//  XCTestDemoTests
//
//  Created by jgrm on 2017/6/21.
//  Copyright © 2017年 DaviD. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface XCTestDemoTests : XCTestCase

@end

@implementation XCTestDemoTests

- (void)setUp {
    [super setUp];
    NSLog(@"测试开始了");
}

- (void)tearDown {
    [super tearDown];
    NSLog(@"测试结束了");

}

- (void)testExample {
    NSLog(@"测试中。。。");
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
