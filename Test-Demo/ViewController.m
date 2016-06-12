//
//  ViewController.m
//  Test-Demo
//
//  Created by 高应宇 on 16/6/12.
//  Copyright © 2016年 溢彩轻运科技有限公司-ldk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *numLabel;

@property (nonatomic, strong) UIButton *jianBtn;

@property (nonatomic, strong) UIButton *jiaBtn;

@property (nonatomic, assign) NSInteger numClick;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.numLabel];
    [self.view addSubview:self.jianBtn];
    [self.view addSubview:self.jiaBtn];
    
    
}


- (void)jianBtnClick
{
    self.numClick--;
    self.numLabel.text = [NSString stringWithFormat:@"%ld", (long)self.numClick];
}

- (void)jiaBtnClick
{
    self.numClick++;
    self.numLabel.text = [NSString stringWithFormat:@"%ld", (long)self.numClick];
}


- (UILabel *)numLabel
{
    if (!_numLabel)
    {
        _numLabel = [[UILabel alloc] initWithFrame:CGRectMake(85, 70, 50, 30)];
        _numLabel.text = @"0";
        _numLabel.textAlignment = 1;
        _numLabel.textColor = [UIColor redColor];
        _numLabel.font = [UIFont systemFontOfSize:14];
        _numLabel.backgroundColor = [UIColor cyanColor];
        [self.view addSubview:_numLabel];
        
    }
    return _numLabel;
}


- (UIButton *)jianBtn
{
    if (!_jianBtn)
    {
        _jianBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _jianBtn.frame = CGRectMake(40, 120, 50, 30);
        [_jianBtn setTitle:@"减少" forState:UIControlStateNormal];
        [_jianBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [_jianBtn addTarget:self action:@selector(jianBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_jianBtn];
        
    }
    return _jianBtn;
}


- (UIButton *)jiaBtn
{
    if (!_jiaBtn)
    {
        _jiaBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _jiaBtn.frame = CGRectMake(130, 120, 50, 30);
        [_jiaBtn setTitle:@"增加" forState:UIControlStateNormal];
        [_jiaBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [_jiaBtn addTarget:self action:@selector(jiaBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_jiaBtn];
        
    }
    return _jiaBtn;
}



@end
