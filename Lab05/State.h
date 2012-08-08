//
//  State.h
//  Lab05
//
//  Created by John Hervey on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {starting, ending, deletion, insertion, match} stateType;

@interface State : NSObject
{
    State *transition1;
    State *transition2;
    State *transition3;
    stateType type;
    double transProb1, transProb2, transProb3;
}

-(id) init;
-(void) setStateType:(stateType) theType;
-(stateType) type;
-(void) setTransition1:(State *) state prob:(double) prob;
-(void) setTransition2:(State *) state prob:(double) prob;
-(void) setTransition3:(State *) state prob:(double) prob;
-(State *) run;

@end
