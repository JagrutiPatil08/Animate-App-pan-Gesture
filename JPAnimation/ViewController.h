//
//  ViewController.h
//  JPAnimation
//
//  Created by Student P_05 on 06/10/16.
//  Copyright © 2016 JagrutiPatil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *ball;

- (IBAction)zoomIn:(id)sender;
- (IBAction)zoomOut:(id)sender;
- (IBAction)actionDirection:(id)sender;

@end

