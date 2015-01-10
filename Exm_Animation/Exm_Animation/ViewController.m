//
//  ViewController.m
//  Exm_Animation
//
//  Created by Admin on 10.01.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSArray *namesArray;
    NSMutableArray *imagesArray;
    UIImageView *imageView;
}

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    NSArray *namesArray = [NSArray arrayWithObjects:@"gs_1.png",@"gs_2.png",@"gs_3.png",@"gs_4.png",@"gs_5.png",@"gs_6.png",@"gs_7.png",@"gs_8.png",@"gs_9.png",@"gs_10.png",@"gs_11.png",@"gs_12.png",@"gs_13.png",@"gs_14.png",@"gs_15.png",@"gs_16.png", nil];
    NSMutableArray *imagesArray = [[NSMutableArray alloc] init];
    for (int i=0; i<[namesArray count]; i++) {
        [imagesArray addObject: [UIImage imageNamed:[namesArray objectAtIndex:i]]];
    }
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, 50, 86, 193)];
    imageView.animationImages = imagesArray;
    imageView.animationDuration = 0.5;
    [self.view addSubview:imageView];
    [imageView startAnimating];
    
     */
    /*
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(150, 50, 86, 193)];
    imageView2.animationImages = imagesArray;
    imageView2.animationDuration = 3;
    [self.view addSubview:imageView2];
    [imageView2 startAnimating];
    
     */

   namesArray = [NSArray arrayWithObjects:@"gs_1.png",@"gs_2.png",@"gs_3.png",@"gs_4.png",@"gs_5.png",@"gs_6.png",@"gs_7.png",@"gs_8.png",@"gs_9.png",@"gs_10.png",@"gs_11.png",@"gs_12.png",@"gs_13.png",@"gs_14.png",@"gs_15.png",@"gs_16.png", nil];
    imagesArray = [[NSMutableArray alloc] init];
    for (int i=0; i<[namesArray count]; i++) {
        [imagesArray addObject: [UIImage imageNamed:[namesArray objectAtIndex:i]]];
    }
    
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(30, 50, 86, 193)];
    imageView.animationImages = imagesArray;
    imageView.animationDuration = 0.5;
    [self.view addSubview:imageView];
    [imageView startAnimating];
    
    _minLabel.text = @"-1";
    _maxLabel.text = @"5";
    _curLabel.text = @"1";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderChanged:(id)sender {
  //  imageView.animationDuration = 3;
    UISlider *slider = (UISlider *)sender;
    NSInteger val = lround(slider.value);
  //  self.myLabel.text = [NSString stringWithFormat:@"%d",val];

 //   [imageView stopAnimating];
    
    imageView.animationDuration = val;
    [imageView startAnimating];
    
    _curLabel.text = [NSString stringWithFormat:@"%ld",(long)val];
}
@end
