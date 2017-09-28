//
//  DemoListDataSource.m
//  Hello World
//
//  Created by xixi on 2017/9/26.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import "DemoListDataSource.h"

@interface DemoListDataSource()

@property(strong, nonatomic) NSArray* items;
@property(nonatomic, copy) NSString* cellIdentifier;
@property(nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;

@end

@implementation DemoListDataSource

- (instancetype) init{
    return nil;
}

- (id) initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock{
    self = [super init];
    if(self){
        self.items = anItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureCellBlock = aConfigureCellBlock;
    }
    
    return self;
}

- (id) itemAtIndexPath:(NSIndexPath *)indexPath{
    return self.items[(NSUInteger) indexPath.row];
}

#pragma mark - UITableViewDataSource

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

@end
