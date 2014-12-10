//
//  ParticleView.m
//  Animation
//
//  Created by Aditya Narayan on 12/4/14.
//  Copyright (c) 2014 John Bogil. All rights reserved.
//

#import "ParticleView.h"


@implementation ParticleView

-(void)awakeFromNib{
    
    [self adjustRainLayer:25];
}

+(Class)layerClass{
    
    // Configure the UIView to have the emitter layer
    return [CAEmitterLayer class];
}


- (IBAction)slider:(UISlider *)slider {
    
    [self adjustRainLayer:slider.value];
    
}


-(void)adjustRainLayer:(int)birthRate{
    
    self.emitter = (CAEmitterLayer*)self.layer;
    
    self.emitter.emitterPosition = CGPointMake(150, -100);
    
    CAEmitterCell *rainDrop = [CAEmitterCell emitterCell];
    rainDrop.birthRate = birthRate;
    rainDrop.lifetime = 10.0;
    rainDrop.lifetimeRange = 0.5;
    rainDrop.scale = 0.075;
    rainDrop.contents = (id)[[UIImage imageNamed:@"raindrop.png"] CGImage];
    
    rainDrop.velocity = 2;
    rainDrop.yAcceleration = 75;
    rainDrop.velocityRange = 150;
    rainDrop.emissionRange = 0.5;
    
    
    [rainDrop setName:@"rainDrop"];
    
    // Add the cell to the layer
    self.emitter.emitterCells = [NSArray arrayWithObject:rainDrop];
    
    
}

@end
