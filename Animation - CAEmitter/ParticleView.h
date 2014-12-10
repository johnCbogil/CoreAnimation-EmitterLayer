//
//  ParticleView.h
//  Animation
//
//  Created by Aditya Narayan on 12/4/14.
//  Copyright (c) 2014 John Bogil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "ViewController.h"

@interface ParticleView : UIView

@property (nonatomic, strong) CAEmitterLayer *emitter;

@property (nonatomic, strong) UIDynamicAnimator *animator;

@property (nonatomic, strong) CAEmitterCell *rainDrop;

@property (nonatomic, strong) UISlider *slider;


- (IBAction)slider:(id)sender;

@end
