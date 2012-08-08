//
//  MatchState.h
//  Lab05
//
//  Created by John Hervey on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "State.h"

@interface MatchState : State
{
    double probA, probC, probG, probT;
}

-(id) initWithProbsA:(double) A C:(double) C G:(double) G T:(double) T;
-(State *) run;

@end
