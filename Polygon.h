//
//  Polygon.h
//  CG
//
//  Created by Vivek on 18/07/15.
//  Copyright (c) 2015 Vivek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Polygon : UIView

@property (nonatomic) NSUInteger sides;
@property (nonatomic) float      angularOffset;
@property (nonatomic) NSUInteger borderWidth;
@property (nonatomic) UIColor    *borderColor;
@property (nonatomic) UIColor    *fillColor;

@end
