//
//  BookListDataSource.h
//  Hello World
//
//  Created by nicolas on 2017/10/28.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id items);

@interface BookListDataSource : NSObject<UITableViewDataSource>



@end
