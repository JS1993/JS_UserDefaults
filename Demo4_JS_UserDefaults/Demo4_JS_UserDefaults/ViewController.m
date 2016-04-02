//
//  ViewController.m
//  Demo4_JS_UserDefaults
//
//  Created by  江苏 on 16/3/11.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults* ud=[NSUserDefaults standardUserDefaults];
//    //保存数据
//    [ud setObject:@"张三" forKey:@"name"];
//    [ud setInteger:30 forKey:@"age"];
//    //同步数据（切记）
//    [ud synchronize];
//    //读取数据
//    NSString* name=[ud objectForKey:@"name"];
//    int* age=[ud integerForKey:@"age"];
//    NSLog(@"%@ 年龄：%d",name,age);
    int runTimes=[ud integerForKey:@"runTimes"];
    [ud setInteger:++runTimes forKey:@"runTimes"];
    [ud synchronize];
    if (runTimes==1) {
        NSLog(@"欢迎");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
