//
//  ViewController.m
//  UISearchBarDemo
//
//  Created by xk jiang on 2017/10/10.
//  Copyright © 2017年 xk jiang. All rights reserved.
//

#import "ViewController.h"
#import "SSSearchBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SSSearchBar *searchBar = [[SSSearchBar alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 45.0)];
    searchBar.placeholder = @"搜索搜索搜索";
    [self.view addSubview:searchBar];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
    [self.view addGestureRecognizer:tap];
}

- (void)tapAction {
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

