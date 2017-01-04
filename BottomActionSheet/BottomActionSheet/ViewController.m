//
//  ViewController.m
//  BottomActionSheet
//
//  Created by Zhuochenming on 2017/1/4.
//  Copyright © 2017年 Zhuochenming. All rights reserved.
//

#import "ViewController.h"
#import "BottomActionSheet.h"

@interface ViewController ()<BottomActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor orangeColor];
    button.frame = CGRectMake(0, 0, 100, 30);
    button.center = self.view.center;
    [button addTarget:self action:@selector(buttonTouch) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)buttonTouch {
    BottomActionSheet *sheet = [[BottomActionSheet alloc] initWithDelegate:self labelText:@"都比" CancelTitle:@"退出" OtherTitles:@"其他", @"其他", @"其他", @"其他",nil];
    [sheet show];
}

- (void)actionSheet:(BottomActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
