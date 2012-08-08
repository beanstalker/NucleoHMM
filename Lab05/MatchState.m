//
//  MatchState.m
//  Lab05
//
//  Created by John Hervey on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MatchState.h"

@implementation MatchState

-(id) initWithProbsA:(double) A C:(double)C G:(double)G T:(double)T
{
    self = [super init];
    if (self) {
        probA = A;
        probC = C;
        probG = G;
        probT = T;
        
        transition1 = nil;
        transition2 = nil;
        transition3 = nil;
    }
    return self;
}

-(void) setStateType:(stateType)theType
{
    type = theType;
}

-(void) setTransition1:(State *)state prob:(double)prob
{
    transition1 = state;
    transProb1 = prob;
}

-(void) setTransition2:(State *)state prob:(double)prob
{
    transition1 = state;
    transProb1 = prob;
}

-(void) setTransition3:(State *)state prob:(double)prob
{
    transition1 = state;
    transProb1 = prob;
}

@end
