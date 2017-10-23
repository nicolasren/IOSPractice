//
//  DemoListCellTableViewCell.m
//  Hello World
//
//  Created by xixi on 2017/9/26.
//  Copyright © 2017年 nicolas. All rights reserved.
//

#import "DemoListCellTableViewCell.h"

@implementation DemoListCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        CGFloat cellWidth = [[UIApplication sharedApplication]keyWindow].bounds.size.width;
        _demoName = [[TextEdgeInsetsLabel alloc]initWithFrame:CGRectMake(0, 5, cellWidth, 60)];
        _demoName.backgroundColor = [UIColor whiteColor];
        _demoName.textColor = [UIColor blackColor];
        _demoName.textAlignment = NSTextAlignmentLeft;
        _demoName.edgeInsets = UIEdgeInsetsMake(30, 15, 30, cellWidth);
        [_demoName sizeToFit];
        _demoName.font = [UIFont systemFontOfSize:25];
        [self.contentView addSubview:_demoName];
    }
    
    return self;
}

- (void)configData:(NSDictionary *)dic{
    _demoName.text = [dic objectForKey:@"name"];
}



@end
