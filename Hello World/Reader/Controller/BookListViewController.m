//
//  BookListViewController.m
//  Hello World
//
//  Created by nicolas on 2017/10/21.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import "BookListViewController.h"
#import "BookModel.h"

@interface BookListViewController ()
@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) NSArray *bookList;
@end

@implementation BookListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    
    //自定义标题
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0 , 100, 44)];
    _titleLabel.backgroundColor = [UIColor clearColor];  //设置Label背景透明
    _titleLabel.font = [UIFont boldSystemFontOfSize:20];  //设置文本字体与大小
    _titleLabel.textColor = [UIColor blackColor];//[UIColor colorWithRed:(0.0/255.0) green:(255.0 / 255.0) blue:(0.0 / 255.0) alpha:1];  //设置文本颜色
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.text = @"eBook";  //设置标题
    self.navigationItem.titleView = self.titleLabel;
    
//    self.navigationItem.title = @"eBook";
    
    [self loadData];
}

- (void)loadData{
    _bookList = [[NSArray alloc] init];
    NSURL *fileURL = [[NSBundle mainBundle] URLForResource:@"细说明朝"withExtension:@"epub"];
    
    
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
