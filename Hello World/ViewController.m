//
//  ViewController.m
//  Hello World
//
//  Created by nicolas on 2017/9/20.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController（） 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    _demoListView = [[UITableView alloc]initWithFrame:[[UIApplication sharedApplication].keyWindow bounds]];
    [self.view addSubview: _demoListView];

}

-(void) initData{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
