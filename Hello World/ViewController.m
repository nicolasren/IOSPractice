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

@interface ViewController ()

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
    self.view.backgroundColor = [UIColor whiteColor];
    _demoListView = [[UITableView alloc]initWithFrame:[[UIApplication sharedApplication].keyWindow bounds]];
    [_demoListView registerClass:[DemoListCellTableViewCell class] forCellReuseIdentifier:@"cell"];
    _demoListView.separatorInset = UIEdgeInsetsMake(0, 10, 0, 10);
    _demoListView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    _demoListView.rowHeight = 70;
    
    [self.view addSubview: _demoListView];
    
    self.configureCell = [[DemoListCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    self.configureBlock = ^(DemoListCellTableViewCell *cell, NSDictionary *data){
        [cell configData:data];
    };
    self.dataSource = [[DemoListDataSource alloc] initWithItems:self.arr cellIdentifier:@"cell" configureCellBlock:self.configureBlock];
    
    _demoListView.dataSource = self.dataSource;

}

-(void) initData{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
