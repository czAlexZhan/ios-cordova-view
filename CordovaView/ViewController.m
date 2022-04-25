//
//  ViewController.m
//  CordovaView
//
//  Created by 詹旭文 on 2022/4/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSURLRequest * rq = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://10.9.69.16:8080/"]];
    // 跳转外部网页
    [self.webViewEngine loadRequest:rq];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

@end
