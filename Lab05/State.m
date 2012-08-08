//
//  State.m
//  Lab05
//
//  Created by John Hervey on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "State.h"

@implementation State

-(id) init
{
    self = [super init];
    if (self) {
        transition1 = nil;
        transition2 = nil;
        transition3 = nil;
        transProb1 = 2.0;
        transProb2 = 2.0;
        transProb3 = 2.0;
    }
    return self;
}

-(void) setStateType:(stateType)theType
{
    type = theType;
}

-(stateType) type
{
    return type;
}

-(void) setTransition1:(State *)state prob:(double)prob
{
    transition1 = state;
    transProb1 = prob;
}

-(void) setTransition2:(State *)state prob:(double)prob
{
    transition2 = state;
    transProb2 = prob;
}

-(void) setTransition3:(State *)state prob:(double)prob
{
    transition3 = state;
    transProb3 = prob;
}

-(State *) run
{
    double unifRand = (double) arc4random_uniform(RAND_MAX) / RAND_MAX;
    //NSLog(@"transRand: %f", unifRand);
    if (unifRand <= transProb3) {
        //NSLog(@"transition3");
        return transition3;
    } else if (unifRand <= (transProb3 + transProb2)) {
        //NSLog(@"transition2");
        return transition2;
    } else {
        //NSLog(@"transition1");
        return transition1;
    }
}

@end
