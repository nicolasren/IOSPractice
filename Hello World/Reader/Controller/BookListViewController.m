//
//  BookListViewController.m
//  Hello World
//
//  Created by nicolas on 2017/10/21.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import "BookListViewController.h"
#import "LSYReadModel.h"
#import "BookListTableViewCell.h"
#import "BookListDataSource.h"

@interface BookListViewController ()<UITableViewDelegate>
@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) NSArray *bookList;
@property (nonatomic, strong) LSYReadModel *bookModel;
@property (nonatomic, strong) UITableView *bookTableView;
@property (nonatomic, strong) BookListDataSource *dataSource;
@property (nonatomic, strong) TableViewCellConfigureBlock configureCell;

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
    
    _bookTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [_bookTableView registerClass:[BookListTableViewCell class] forCellReuseIdentifier:@"cell"];
    _bookTableView.rowHeight = 100;
    _bookTableView.delegate = self;
    
    [self.view addSubview:_bookTableView];
    
    
    [self loadData];
}

- (void)loadData{
    _bookList = [[NSArray alloc] init];
    NSURL *fileURL = [[NSBundle mainBundle] URLForResource:@"细说明朝"withExtension:@"epub"];
    _bookModel = [LSYReadModel getLocalModelWithURL:fileURL];
    
    NSMutableArray *booksArray = [[NSMutableArray alloc] init];
    [booksArray addObject:_bookModel];
    
    
    
    self.dataSource = [[BookListDataSource alloc]initWithItmes:booksArray cellIndetifierString:@"cell" configureCellBlock:self.configureCell];
    _bookTableView.dataSource = self.dataSource;
    
    
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
