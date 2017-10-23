//
//  DemoListCellTableViewCell.h
//  Hello World
//
//  Created by xixi on 2017/9/26.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextEdgeInsetsLabel.h"

@interface DemoListCellTableViewCell : UITableViewCell

@property(strong, nonatomic) TextEdgeInsetsLabel *demoName;

- (void)configData:(NSDictionary *)dic;

@end
