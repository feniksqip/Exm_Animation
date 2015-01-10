//
//  ViewController.m
//  Exm_Animation
//
//  Created by Admin on 10.01.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *namesArray = [[NSMutableArray alloc] init];
    NSMutableArray *imagesArray = [[NSMutableArray alloc] init];
    
    for (int i=0; i < 16; i++) {
        [namesArray addObject:[NSString stringWithFormat:@"gs_%d.jpg",i]];
        [imagesArray addObject:[UIImage imageNamed:[namesArray objectAtIndex:i]]];
    }
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 100, 150)];
    
    
    
    [self.view addSubview:imageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
