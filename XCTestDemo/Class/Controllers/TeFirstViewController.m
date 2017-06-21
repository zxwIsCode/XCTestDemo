//
//  TeFirstViewController.m
//  XCTestDemo
//
//  Created by jgrm on 2017/6/21.
//  Copyright © 2017年 DaviD. All rights reserved.
//

#import "TeFirstViewController.h"
#import "TeSecondViewController.h"

#define kScreenWidth  [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface TeFirstViewController ()

@property(nonatomic,strong)UIButton *startButton;

@end

@implementation TeFirstViewController

#pragma mark - Init
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor redColor];
    
    [self testLogText];
    
    [self.view addSubview:self.startButton];
    
    
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.startButton.center =CGPointMake(kScreenWidth *0.5, kScreenHeight *0.5);
    self.startButton.bounds =CGRectMake(0, 0, 200, 60);
}


#pragma mark - Private Methods
- (void)testLogText {
//    for (int index =0; index <10; index ++) {
//        
//        NSLog(@"输出%d次",index);
//        
//    }
}
#pragma mark - Action Methods
- (void)startButtonClick:(UIButton *)button {
    TeSecondViewController *secondVC =[[TeSecondViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];
    NSLog(@"第一个界面结束");
}

#pragma mark - Setter & Getter
- (UIButton *)startButton {
    if (!_startButton) {
        _startButton =[UIButton buttonWithType:UIButtonTypeCustom];
        _startButton.backgroundColor =[UIColor darkGrayColor];
        [_startButton setTitle:@"Come In" forState:UIControlStateNormal];
        [_startButton addTarget:self action:@selector(startButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _startButton;
}

@end
