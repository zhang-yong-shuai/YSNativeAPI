//
//  ViewController.m
//  YSNativeAPIDemo
//
//  Created by zys on 2016/11/14.
//  Copyright © 2016年 张永帅. All rights reserved.
//

#import "ViewController.h"
#import "YSNativeAPI.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 调用此方法后，webView加载的H5页面就可以直接通过JS对象“Xing”来调用YSNativeAPI里的代理方法
    [YSNativeAPI configureWithWebView:self.webView andJSObject:@"Xing"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
