//
//  MyButton.m
//  ZJKMajiang
//
//  Created by iMac on 17/5/3.
//  Copyright © 2017年 iMac. All rights reserved.
//

#import "MyButton.h"
#import "UIView+Extension.h"

@implementation MyButton



- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.x = _imageViewX;
    self.imageView.y = _imageViewY;
    self.imageView.width = _imageViewW;
    self.imageView.height = _imageViewH;
    
    self.titleLabel.x = _labelX;
    self.titleLabel.y = _labelY;
    self.titleLabel.width = _labelW;
    self.titleLabel.height = _labelH;
}

- (void)setImageViewX:(CGFloat)imageViewX {
    _imageViewX = imageViewX;
}

- (void)setImageViewY:(CGFloat)imageViewY {
    _imageViewY = imageViewY;
}

- (void)setImageViewW:(CGFloat)imageViewW {
    _imageViewW = imageViewW;
}

- (void)setImageViewH:(CGFloat)imageViewH {
    _imageViewH = imageViewH;
}

- (void)setLabelX:(CGFloat)labelX {
    _labelX = labelX;
}

- (void)setLabelY:(CGFloat)labelY {
    _labelY = labelY;
}

- (void)setLabelW:(CGFloat)labelW {
    _labelW = labelW;
}

- (void)setLabelH:(CGFloat)labelH {
    _labelH = labelH;
}






@end
