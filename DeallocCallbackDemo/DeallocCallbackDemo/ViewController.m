//
//  ViewController.m
//  DeallocCallbackDemo
//
//  Created by irobbin on 2019/1/14.
//  Copyright © 2019 irobbin.me. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+DeallocCallback.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSObject * objWillDealloc = [NSObject new];
    [objWillDealloc setDeallocCallback:^(NSString * _Nonnull objInfo) {
        NSLog(@"%@ did dealloc", objInfo);
    }];
}


@end
