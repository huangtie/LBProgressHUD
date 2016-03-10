//
//  ViewController.m
//  LBProgressHUDDemo
//
//  Created by huangtie on 16/3/9.
//  Copyright © 2016年 huangtie. All rights reserved.
//

#import "ViewController.h"
#import "LBProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"hide" style:UIBarButtonItemStylePlain target:self action:@selector(hide)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"show" style:UIBarButtonItemStylePlain target:self action:@selector(show)];
    
    [LBProgressHUD showHUDto:self.view animated:YES];
}

- (void)show
{
    [LBProgressHUD showHUDto:self.view animated:YES];
}

- (void)hide
{
    [LBProgressHUD hideAllHUDsForView:self.view animated:YES];
}

@end
