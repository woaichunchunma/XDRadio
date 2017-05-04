//
//  DemoViewController.m
//  XDRadio
//
//  Created by iMac on 17/5/4.
//  Copyright © 2017年 iMac. All rights reserved.
//

#import "DemoViewController.h"
#import "XDRadioView.h"

@interface DemoViewController ()
@property (weak, nonatomic) IBOutlet UIView *radioView;
@property (weak, nonatomic) IBOutlet UILabel *radioLabel;
@property (weak, nonatomic) IBOutlet UIView *multiView;
@property (weak, nonatomic) IBOutlet UILabel *multiLabel;

@property (nonatomic , strong) NSArray *array;
@property (nonatomic , strong) NSMutableArray *resultArray;

@end

@implementation DemoViewController

- (NSMutableArray *)resultArray {
    if (_resultArray == nil) {
        _resultArray = [NSMutableArray array];
    }
    return _resultArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.array = @[@"喜欢男人",@"喜欢女人",@"喜欢人妖",@"喜欢太监"];
    [self createRadio];//单选
    [self createMultiselect];//多选
}



//radio
- (void)createRadio {
    XDRadioView *rview = [[XDRadioView alloc] initWithFrame:CGRectMake(20, 0, 200, 130)];
    rview.imageName = @"no";
    rview.imageHLname = @"yes";
    rview.objcs = self.array;
    [rview getRadioViewResult:^(UIButton *btn, NSMutableArray *result) {
        
        for (NSString *string in result) {
            self.radioLabel.text = [NSString stringWithFormat:@"result:%@",self.array[string.intValue]];
        }
    }];
    [self.radioView addSubview:rview];
}


//multiselect
- (void)createMultiselect {
    XDRadioView *rview = [[XDRadioView alloc] initWithFrame:CGRectMake(20, 0, 200, 130)];
    rview.isOne = NO;
    rview.imageName = @"no";
    rview.imageHLname = @"yes";
    rview.objcs = self.array;
    [rview getRadioViewResult:^(UIButton *btn, NSMutableArray *result) {
        
        self.resultArray = nil;
        NSLog(@"result%@",result);
        for (NSString *string in result) {
            [self.resultArray addObject:self.array[string.intValue]];
        }
        self.multiLabel.text = [NSString stringWithFormat:@"result:%@",[self.resultArray componentsJoinedByString:@","]] ;
        
    }];
    [self.multiView addSubview:rview];
}



@end
