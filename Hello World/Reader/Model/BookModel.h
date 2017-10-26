//
//  BookModel.h
//
//  书籍的数据结构
//
//  Created by nicolas on 2017/10/21.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookModel : NSObject

@property (nonatomic, strong)NSString *bookName; //书名
@property (nonatomic, strong)NSString *bookCoverUrl; //书籍封面URL
@property (nonatomic, strong)NSString *bookUrl; //书籍的地址

@end

