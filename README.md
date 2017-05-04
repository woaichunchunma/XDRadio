# XDRadio
demo
# How To Use
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
# demonstration
![image](https://github.com/woaichunchunma/Lottery/blob/master/%E6%95%88%E6%9E%9C%E5%9B%BE.gif)
