//
//  TeSecondViewController.m
//  XCTestDemo
//
//  Created by jgrm on 2017/6/21.
//  Copyright © 2017年 DaviD. All rights reserved.
//

#import "TeSecondViewController.h"

@interface TeSecondViewController ()

@end

@implementation TeSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"摸了第2个界面");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
