//
//  DemoListDataSource.h
//  Hello World
//
//  Created by xixi on 2017/9/26.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id items);

@interface DemoListDataSource : NSObject<UITableViewDataSource>

@end
