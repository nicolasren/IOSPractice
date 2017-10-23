//
//  BookListViewController.m
//  Hello World
//
//  Created by nicolas on 2017/10/21.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import "BookListViewController.h"

@interface BookListViewController ()

@end

@implementation BookListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"eBook";
    self.view.backgroundColor = [UIColor brownColor];
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    
    [self loadData];
}

- (void)loadData{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
