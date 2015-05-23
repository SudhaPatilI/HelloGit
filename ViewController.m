//
//  ViewController.m
//  HelloGit
//
//  Created by Manjit on 22/05/15.
//  Copyright (c) 2015 Manjit. All rights reserved.
//

#import "ViewController.h"
#import "SecondClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"Inside Hello Git");
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Send" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(butAction:) forControlEvents:UIControlEventTouchDown];
    
    button.frame = CGRectMake(10, 100, 150, 40);
    [self.view addSubview:button];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)butAction:(id)sender
{
    SecondClass *sClass = [[SecondClass alloc]init];
    [self.navigationController pushViewController:sClass animated:YES];
}
@end
