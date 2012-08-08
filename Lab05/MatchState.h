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
    State *transition1;
    State *transition2;
    State *transition3;
    double transProb1, transProb2, transProb3;
    double probA, probC, probG, probT;
    stateType type;
}

-(id) initWithProbsA:(double) A C:(double) C G:(double) G T:(double) T;
-(void) setStateType:(stateType) theType;
-(void) setTransition1:(State *) state prob:(double) prob;
-(void) setTransition2:(State *) state prob:(double) prob;
-(void) setTransition3:(State *) state prob:(double) prob;

@end
