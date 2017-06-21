//
//  XCTestDemoUITests.m
//  XCTestDemoUITests
//
//  Created by jgrm on 2017/6/21.
//  Copyright © 2017年 DaviD. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface XCTestDemoUITests : XCTestCase

@end

@implementation XCTestDemoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    NSLog(@"UI测试开始了");
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    NSLog(@"UI测试结束了");

}

// 执行一次的界面跳转
- (void)testCode {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    [app.buttons[@"Come In"] tap];
    [[[[[app.otherElements containingType:XCUIElementTypeNavigationBar identifier:@"TeSecondView"] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
    [[[[app.navigationBars[@"TeSecondView"] childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Back"] elementBoundByIndex:0] tap];
    
}

/*
 XCTest 测试用例使用注意事项：
 
 1.更改项目文件名称以及部分UI控件如（button上面的文字时就要重新创建用例）
 2.全程测试用例最好用英文表示，如button上的文字为中文时会报错！
 3.还有创建的测试用例文件为了要在测试方法（testExample）中，需要把当前编辑器的光标放在该方法中，再点击小红圈来测试！
 */

// 执行多次的界面跳转
- (void)testExample {
    NSLog(@"UI测试中");
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    for (int index =0; index<5; index ++) {
        
        if (index !=4) {
            NSLog(@"第%d次开始",index);
            [app.buttons[@"Come In"] tap];
            [[[[[app.otherElements containingType:XCUIElementTypeNavigationBar identifier:@"TeSecondView"] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element tap];
            [[[[app.navigationBars[@"TeSecondView"] childrenMatchingType:XCUIElementTypeButton] matchingIdentifier:@"Back"] elementBoundByIndex:0] tap];
            
            sleep(2.0);
        }else {
            NSLog(@"结束");
            break ;
            
        }
        
       

    }
    

    
    
    
    
    
    
   

    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

@end
