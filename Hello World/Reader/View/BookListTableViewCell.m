//
//  BookListTableViewCell.m
//  Hello World
//
//  Created by nicolas on 2017/10/21.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import "BookListTableViewCell.h"

@interface BookListTableViewCell()
@property (nonatomic, strong)UILabel *bookName;
@property (nonatomic, strong)UIImageView *bookCover;

@end

@implementation BookListTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithStyle:<#style#> reuseIdentifier:<#reuseIdentifier#>]) {
        _bookCover = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 60, 80)];
        
    }
    
    return self;
}

@end
