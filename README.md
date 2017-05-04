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
![image](https://github.com/woaichunchunma/XDRadio/blob/master/效果图.gif)
