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
    }
    return self;
}

-(State *) run
{
    double unifRand = (double) arc4random_uniform(RAND_MAX) / RAND_MAX;
    //NSLog(@"letterRand: %f", unifRand);
    if (unifRand <= probA) {
        printf("A");
    } else if (unifRand <= probC) {
        printf("C");
    } else if (unifRand <= probG) {
        printf("G");
    } else {
        printf("T");
    }
    if (unifRand <= transProb3) {
        //NSLog(@"transition3");
        return transition3;
    } else if (unifRand <= (transProb3 + transProb2)) {
        //NSLog(@"transition2");
        return transition2;
    } else {
        //SLog(@"transition1");
        return transition1;
    }
}

@end
