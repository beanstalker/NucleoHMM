//
//  main.m
//  Lab05
//
//  Created by John Hervey on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"
#import "MatchState.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        MatchState *M1 = [[MatchState alloc] initWithProbsA:0.10 C:0.80 G:0.04 T:0.06];
        MatchState *M2 = [[MatchState alloc] initWithProbsA:0.40 C:0.55 G:0.04 T:0.01];
        MatchState *M3 = [[MatchState alloc] initWithProbsA:0.73 C:0.18 G:0.02 T:0.07];
        MatchState *I1 = [[MatchState alloc] initWithProbsA:0.15 C:0.29 G:0.33 T:0.23];
        MatchState *I2 = [[MatchState alloc] initWithProbsA:0.44 C:0.51 G:0.02 T:0.03];
        MatchState *I3 = [[MatchState alloc] initWithProbsA:0.70 C:0.08 G:0.19 T:0.03];
        MatchState *I4 = [[MatchState alloc] initWithProbsA:0.01 C:0.01 G:0.08 T:0.90];
        State *D1 = [[State alloc] init];
        State *D2 = [[State alloc] init];
        State *D3 = [[State alloc] init];
        State *start = [[State alloc] init];
        State *end = [[State alloc] init];
        
        [M1 setStateType:match];
        [M2 setStateType:match];
        [M3 setStateType:match];
        [I1 setStateType:insertion];
        [I2 setStateType:insertion];
        [I3 setStateType:insertion];
        [I4 setStateType:insertion];
        [D1 setStateType:deletion];
        [D2 setStateType:deletion];
        [D3 setStateType:deletion];
        [start setStateType:starting];
        [end setStateType:ending];
        
        [start setTransition1:D1 prob:0.3];
        [start setTransition2:I1 prob:0.4];
        [start setTransition3:M1 prob:0.3];
        
        [M1 setTransition1:I2 prob:0.015];
        [M1 setTransition2:D2 prob:0.015];
        [M1 setTransition3:M2 prob:0.97];
        
        [M2 setTransition1:I3 prob:0.015];
        [M2 setTransition2:D3 prob:0.015];
        [M2 setTransition3:M3 prob:0.97];
        
        [M3 setTransition1:I4 prob:0.3];
        [M3 setTransition2:end prob:0.7];
        
        [I1 setTransition1:D1 prob:0.05];
        [I1 setTransition2:M1 prob:0.46];
        [I1 setTransition3:I1 prob:0.49];
        
        [I2 setTransition1:D2 prob:0.06];
        [I2 setTransition2:M2 prob:0.46];
        [I2 setTransition3:I2 prob:0.48];
        
        [I3 setTransition1:D3 prob:0.05];
        [I3 setTransition2:M3 prob:0.46];
        [I3 setTransition3:I3 prob:0.49];
        
        [I4 setTransition1:end prob:0.52];
        [I4 setTransition2:I4 prob:0.48];
        
        [D1 setTransition1:D2 prob:0.48];
        [D1 setTransition1:I2 prob:0.06];
        [D1 setTransition1:M2 prob:0.46];
        
        [D2 setTransition1:D3 prob:0.48];
        [D2 setTransition1:I3 prob:0.06];
        [D2 setTransition1:M3 prob:0.46];
        
        [D3 setTransition1:end prob:0.37];
        [D3 setTransition1:I4 prob:0.73];
        
        State *currentState = start;
        
        while ([currentState type] != ending) {
            currentState = [currentState run];
        }
    }
    return 0;
}

