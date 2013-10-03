//
//  ShowSearchButton.m
//  LaMusique
//
//  Created by Sergey P on 29.08.13.
//  Copyright (c) 2013 Sergey P. All rights reserved.
//

#import "ShowSearchButton.h"

@implementation ShowSearchButton

- (void)drawRect:(NSRect)dirtyRect
{
    dirtyRect.size.width-=2;
    dirtyRect.size.height-=2;
    
    CGContextRef ctx = [[NSGraphicsContext currentContext] graphicsPort];
    
    if ([self.cell isHighlighted]) {
        CGContextSetStrokeColorWithColor(ctx, CGColorCreateGenericRGB(50/255.0, 50/255.0, 50/255.0, 1));
        CGContextSetRGBFillColor (ctx, 50/255.0, 50/255.0, 50/255.0, 1);
    }else{
        CGContextSetStrokeColorWithColor(ctx, CGColorCreateGenericRGB(60/255.0, 60/255.0, 60/255.0, 1));
        CGContextSetRGBFillColor (ctx, 60/255.0, 60/255.0, 60/255.0, 1);
    }
    
    
    double px=2;
    double py=2;
    double x1=dirtyRect.size.width-px;
    double y1=dirtyRect.size.height-py;
    double t=2.1;
    
    
    CGContextSetLineCap(ctx, kCGLineCapRound);
    
    CGContextAddEllipseInRect(ctx, CGRectMake(t, t, x1*0.6, y1*0.6));
    CGContextSetLineWidth(ctx, t);
    CGContextStrokePath(ctx);
    
    CGContextSetLineWidth(ctx, t);
    CGContextMoveToPoint(ctx, x1*0.6+t/2, y1*0.6+t/2);
    CGContextAddLineToPoint(ctx, x1-t, y1-t);
    
    CGContextStrokePath(ctx);
}

@end