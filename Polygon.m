//
//  Polygon.m
//  CG
//
//  Created by Vivek on 18/07/15.
//  Copyright (c) 2015 Vivek. All rights reserved.
//

#import "Polygon.h"

@interface Polygon ()

@end

@implementation Polygon

- (instancetype)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    _sides         = 3;
    _angularOffset = 0;
    _borderColor   = [UIColor greenColor];
    _borderWidth   = 1.0;
    _fillColor     = [UIColor whiteColor];
    [self setBackgroundColor:[UIColor whiteColor]];
  }
  return self;
}

- (void)drawRect:(CGRect)rect {
  
  CGContextRef context = UIGraphicsGetCurrentContext();
  CGContextSetStrokeColorWithColor(context, [self.borderColor CGColor]);
  CGContextSetFillColorWithColor(context, [self.fillColor CGColor]);
  CGContextSetLineWidth(context, self.borderWidth);

  float frameWidth  = rect.size.width;
  float frameHeight = rect.size.height;
  float radius      = (frameHeight > frameWidth) ? frameWidth/2 : frameHeight/2;
  float centerX     = frameWidth/2;
  float centerY     = frameHeight/2;
  float x           = centerX + radius * cos(- self.angularOffset);
  float y           = centerY + radius * sin(- self.angularOffset);
  
  CGContextMoveToPoint(context, x, y);
  
  for (int i = 1; i < self.sides; i++) {
    float newX = centerX + radius * cos((2* M_PI * i / ((float)self.sides)) - self.angularOffset);
    float newY = centerY + radius * sin((2* M_PI * i / ((float)self.sides)) - self.angularOffset);
    CGContextAddLineToPoint(context, newX, newY);
  }
  
  CGContextAddLineToPoint(context, x, y);
  
  CGContextDrawPath(context, kCGPathFillStroke);
}

- (void)setSides:(NSUInteger)sides {
  _sides = sides;
  [self setNeedsDisplay];
}

- (void)setAngularOffset:(float)angularOffset {
  _angularOffset = angularOffset;
  [self setNeedsDisplay];
}

- (void)setBorderWidth:(NSUInteger)borderWidth {
  _borderWidth = borderWidth;
  [self setNeedsDisplay];
}

- (void)setBorderColor:(UIColor *)borderColor {
  _borderColor = borderColor;
  [self setNeedsDisplay];
}

- (void)setFillColor:(UIColor *)fillColor {
  _fillColor = fillColor;
  [self setNeedsDisplay];
}

@end
