//
//  BookListDataSource.m
//  Hello World
//
//  Created by nicolas on 2017/10/28.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import "BookListDataSource.h"

@interface BookListDataSource()

@property(nonatomic, strong) NSString *coverImgPath; //书籍封面
@property(nonatomic, strong) NSString *bookMarkName; //书签名
@property(nonatomic, strong) NSString *authorName; //作者
@property(nonatomic, copy)   TableViewCellConfigureBlock configureCellBlock;
@property(nonatomic, strong) NSArray *itemsArray; //数据集合
@property(nonatomic, strong) NSString *cellIndentifier;

@end

@implementation BookListDataSource

-(instancetype)init{
    return nil;
}

-(id)initWithItmes:(NSArray *)anItmes cellIndetifierString:(NSString *)aCellIndetifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock{
    
    self = [super init];
    if(self){
        self.itemsArray = anItmes;
        self.cellIndentifier = aCellIndetifier;
        self.configureCellBlock = aConfigureCellBlock;
    }
    
    return self;
}

-(id) itemAtIndexPath:(NSIndexPath *)indexPath{
    return self.itemsArray[(NSUInteger)indexPath.row];
}

#pragma mark - UITableViewDataSource

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.itemsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIndentifier];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

@end
