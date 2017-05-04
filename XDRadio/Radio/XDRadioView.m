//
//  SurveyView.m
//  Xiaohulu
//
//  Created by apple on 15/12/7.
//  Copyright © 2015年 XHL. All rights reserved.
//

#import "XDRadioView.h"
#import "MyButton.h"
#import "UIView+Extension.h"

@interface XDRadioView ()
@property (strong, nonatomic) NSMutableArray * btns;
@property (strong, nonatomic) NSMutableArray *content;

@end

@implementation XDRadioView


- (NSArray *)btns {
    if (!_btns) {
        _btns = [NSMutableArray array];
    }
    return _btns;
}


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _isOne = YES;
    }
    return self;
}



- (void)setObjcs:(NSArray *)objcs {
    _objcs = objcs;
    CGFloat h = 20;
    CGFloat w = self.width;
    CGFloat J = 10;
    
    for (int i = 0; i < objcs.count; i++) {
        MyButton *btn = [[MyButton alloc] init];
        btn.frame = CGRectMake(J, J + h * i + J * i, w-(J * 2), h);
        btn.tag = i;
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitle:[objcs objectAtIndex:i] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:self.imageName] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:self.imageHLname] forState:UIControlStateSelected];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
        btn.imageViewX = 0;
        btn.imageViewY = 0;
        btn.imageViewW = btn.height;
        btn.imageViewH = btn.height;
        btn.labelX = btn.height + 10;
        btn.labelY = 0;
        btn.labelW = btn.width - 10 - btn.height;
        btn.labelH = btn.height;
        [self.btns addObject:btn];
        [self addSubview:btn];
    }
}

- (void)btnClick:(UIButton *)btn {
    [self selectButton:btn];
    [self.content removeAllObjects];
    
    if (self.resultBlock != nil) {
        self.resultBlock(btn,[self getContent]);
    }
    
    if ([self.delegate respondsToSelector:@selector(radioViewSelectBtn: backContent:)]) {
        [self.delegate radioViewSelectBtn:btn backContent:[self getContent]];
    }
}

- (void)selectButton:(UIButton *)btn {
    if (self.isOne) {
        [self resetBtnSelect];
        [btn setSelected:YES];
    } else {
        [btn setSelected:!btn.isSelected];
    }
}

- (NSMutableArray *)content {
    if (!_content) {
        _content = [[NSMutableArray alloc] init];
    }
    return _content;
}

- (NSMutableArray *)getContent {
    for (UIButton *btn in self.btns) {
        if (btn.isSelected == YES) {
            [self.content addObject:@(btn.tag)];
        }
    }
    return _content;
}



- (void)resetBtnSelect {
    for (UIButton *btn  in self.btns) {
        [btn setSelected:NO];
    }
}

- (void)getRadioViewResult:(radioBlock)result {
    self.resultBlock = result;
}


@end
