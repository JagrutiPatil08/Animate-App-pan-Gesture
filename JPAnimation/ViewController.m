//
//  ViewController.m
//  JPAnimation
//
//  Created by Student P_05 on 06/10/16.
//  Copyright © 2016 JagrutiPatil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIPanGestureRecognizer *panGesture =[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handlePan:)];
    
    self.ball.userInteractionEnabled = YES;
    
    [self.ball addGestureRecognizer:panGesture];

}
-(void)handlePan:(UIPanGestureRecognizer *)gesture {
    
    CGRect originalFrame;
    
    if ([gesture isKindOfClass:[UIPanGestureRecognizer class]]) {
       
        
        if (gesture.state == UIGestureRecognizerStateBegan) {
            NSLog(@"State Began");
            originalFrame = gesture.view.frame;
            
        }
        else if (gesture.state == UIGestureRecognizerStateChanged) {
          
            
            CGPoint delta = [gesture locationInView:self.view];
            
           
            
            gesture.view.center = delta;
           
        }
        else if (gesture.state == UIGestureRecognizerStateEnded) {
          
            
            
        }
        
        
    }
    else {
        NSLog(@"Pan Gesture Not Detected");
        
    }
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



    


- (IBAction)actionDirection:(id)sender {
    UIButton *button = sender;
    if (button.tag == 101) {
        
        [self animateUp];
    }
    else if (button.tag == 106) {
        [self animateDownWithDuration:0.5 delay:0.1];
    }
    else if (button.tag == 104){
        [self animateRight];
    }
    else if (button.tag == 103){
        [self animateLeft];
    }
    else if (button.tag == 107){
        [self animateSouth_east];
    }
    else if (button.tag == 100){
        [self animateNorth_west];
    }
    else if (button.tag == 102)
    {
        [self animateNorth_east];
    }
    else if (button.tag == 105){
        [self animateSouth_west];
    }
}

- (IBAction)zoomIn:(id)sender {
    [self animateZoomWithSize:100];

}

- (IBAction)zoomOut:(id)sender {
    [self animateZoomWithSize:-100];

}


-(void)animateUp
{
[UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
    
    
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y - 100, self.ball.frame.size.width, self.ball.frame.size.height)];
    
    
} completion:^(BOOL finished) {
    if (finished) {
        NSLog(@"Up animation finished");
    }
}];
    
}

-(void)animateDownWithDuration:(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime
{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
    [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y + 100, self.ball.frame.size.width, self.ball.frame.size.height)];
        

    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Down Animation Finished");

        }
    }];
}



-(void)animateZoomWithScale:(CGFloat)scale{
 [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
     self.ball.transform = CGAffineTransformMakeScale(scale, scale);
 } completion:^(BOOL finished) {
     if (finished) {
         NSLog(@"Zoom Animation Finished");
     }
 }];
    
}

-(void)animateZoomWithSize:(CGFloat)size
{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x, self.ball.frame.origin.y, self.ball.frame.size.width+size, self.ball.frame.size.height+size)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Zoom Animation Finished");
        }
    }];
}
-(void)animateRight
{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x + 100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Right animation finished");
        }
    }];
    
}

-(void)animateLeft
{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x-100, self.ball.frame.origin.y, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Left animation finished");
        }
    }];
    
}

-(void)animateSouth_east
{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x+100, self.ball.frame.origin.y+100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"animation finished");
        }
    }];
    
}
-(void)animateNorth_west
{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x-100, self.ball.frame.origin.y-100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"animation finished");
        }
    }];
    
}






-(void)animateNorth_east{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x+100, self.ball.frame.origin.y-100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"animation finished");
        }
    }];
    
}



-(void)animateSouth_west{
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        
        [self.ball setFrame:CGRectMake(self.ball.frame.origin.x-100, self.ball.frame.origin.y+100, self.ball.frame.size.width, self.ball.frame.size.height)];
        
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"animation finished");
        }
    }];
    
}


@end

