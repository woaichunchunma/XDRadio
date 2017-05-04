//
//  SurveyView.h
//  Xiaohulu
//
//  Created by apple on 15/12/7.
//  Copyright © 2015年 XHL. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^radioBlock)(UIButton *btn,NSMutableArray *result);

@protocol RadioViewDelegate <NSObject>


- (void)radioViewSelectBtn:(UIButton *)btn backContent:(NSMutableArray *)content;

@end

@interface XDRadioView : UIView

@property (copy, nonatomic) NSString *imageName;
@property (copy, nonatomic) NSString *imageHLname;
@property (assign, nonatomic) BOOL isOne;
@property (strong, nonatomic) NSArray *objcs;
@property (assign, nonatomic) id <RadioViewDelegate> delegate;
@property (nonatomic , copy) radioBlock resultBlock;

- (void)getRadioViewResult:(radioBlock)result;


@end
