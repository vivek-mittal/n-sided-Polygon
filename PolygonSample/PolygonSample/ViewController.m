//
//  ViewController.m
//  PolygonSample
//
//  Created by Vivek on 19/07/15.
//  Copyright (c) 2015 Vivek. All rights reserved.
//

#import "ViewController.h"
#import "Polygon.h"

@interface ViewController ()
@property (nonatomic) Polygon *polygon;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.polygon = [[Polygon alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
  [self.polygon setBackgroundColor:[UIColor whiteColor]];
  [self.polygon setSides:6];
  [self.polygon setFillColor:[UIColor lightGrayColor]];
  [self.polygon setBorderWidth:5];
  [self.view addSubview:self.polygon];
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
