//
//  sunView.m
//  test
//
//  Created by admin on 2019/6/18.
//  Copyright © 2019 keisdom. All rights reserved.
//

#import "sunView.h"
@implementation sunView

/*
 Only override drawRect: if you perform custom drawing.
 An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
     Drawing code
}
*/
//步骤 1：重写initWithFrame:方法，创建子控件并 - 添加
- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        UILabel *lable = [[UILabel alloc] init];
        self.lable = lable;
        [self addSubview:lable];
    }
    return self;
}
// 步骤 2：重写layoutSubviews，子控件设置frame
- (void)layoutSubviews {
    
    [super layoutSubviews];
    CGSize size = self.frame.size;
    self.lable.frame = CGRectMake(0, 0, size.width * 0.5, size.height * 0.5);
}
// 步骤 4： 子控件赋值
- (void)setModel:(NSString *)model {
    
    
    self.lable.text = @"ddd";
}

@end
