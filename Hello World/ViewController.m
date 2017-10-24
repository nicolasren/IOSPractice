//
//  ViewController.m
//  Hello World
//
//  Created by nicolas on 2017/9/20.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import "ViewController.h"
#import "DemoListDataSource.h"
#import "DemoListCellTableViewCell.h"
#import "BookListViewController.h"

@interface ViewController ()<UITableViewDelegate>

@property(nonatomic, strong) NSArray *arr;
@property(nonatomic, strong) DemoListDataSource *dataSource;
@property(nonatomic, strong) DemoListCellTableViewCell *configureCell;
@property(nonatomic, strong) TableViewCellConfigureBlock configureBlock;

@end

@implementation ViewController

- (NSArray *)arr {
    
    if(!_arr){
        _arr = @[@{@"name":@"eBook"}, @{@"name":@"OverSeasTripGuide"}];
    }
    
    return _arr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"Hello World";
    
    self.view.backgroundColor = [UIColor whiteColor];
    _demoListView = [[UITableView alloc]initWithFrame:[[UIApplication sharedApplication].keyWindow bounds]];
    [_demoListView registerClass:[DemoListCellTableViewCell class] forCellReuseIdentifier:@"cell"];
    _demoListView.separatorInset = UIEdgeInsetsMake(0, 10, 0, 10);
//    _demoListView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    _demoListView.rowHeight = 70;
    
    [self.view addSubview: _demoListView];
    
    self.configureCell = [[DemoListCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    self.configureBlock = ^(DemoListCellTableViewCell *cell, NSDictionary *data){
        [cell configData:data];
    };
    self.dataSource = [[DemoListDataSource alloc] initWithItems:self.arr cellIdentifier:@"cell" configureCellBlock:self.configureBlock];
    
    _demoListView.dataSource = self.dataSource;
    _demoListView.delegate = self;

}

- (void) initData{
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //NSString *titileString = [self.arr:[indexPath row]];  //这个表示选中的那个cell上的数据
    NSInteger rowNum = [indexPath row];
    //    NSLog(@"执行tableview的点击事件:%d", rowNum);
    if (0 == rowNum) {
//        NSLog(@"跳转到电子书的demo");
        BookListViewController *bookListController = [[BookListViewController alloc] init];
//        [self presentViewController:bookListController animated:YES completion:nil];
        [self.navigationController pushViewController:bookListController animated:YES ];
    }else{
        NSLog(@"努力建设中。。。");
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
